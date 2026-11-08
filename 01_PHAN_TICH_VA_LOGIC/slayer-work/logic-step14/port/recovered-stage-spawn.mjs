import { createFullDamage, stepFullDamage } from '../../logic-step13/port/recovered-full-damage.mjs';
import { stageGoldAmount } from '../../logic-step7/port/recovered-stage-rewards.mjs';

const f32 = Math.fround;
const floatBuffer = new DataView(new ArrayBuffer(4));
const bits = value => {
  floatBuffer.setFloat32(0, value, true);
  return floatBuffer.getUint32(0, true).toString(16).padStart(8, '0').match(/../g).reverse().join('');
};
const vectorBits = vector => vector.map(bits);
const floatVector = vector => vector.map(f32);
const add = (left, right) => left.map((value, axis) => f32(value + right[axis]));
const scale = (vector, factor) => vector.map(value => f32(value * factor));
const nullReference = () => { throw new TypeError('Native NullReference'); };

function arrayItem(array, index) {
  if (array == null) nullReference();
  if (index < 0 || index >= array.length) throw new RangeError('Native ArrayBounds');
  return array[index];
}

function createStageSpawn(fixture) {
  const config = fixture.spawn;
  const right = floatVector(fixture.game.rightVector);
  const one = floatVector(config.oneVector);
  const forward = scale(floatVector(config.forwardVector), f32(0.0001));
  let endPosition = floatVector(fixture.game.endPosition);
  let waveCount = fixture.game.waveCount | 0;
  let enemiesRemaining = fixture.game.listPresent ? 1 + fixture.game.otherEnemies : null;
  let listVersion = enemiesRemaining === null ? null : 0;
  let listCapacity = enemiesRemaining === null ? null : Math.max(enemiesRemaining, config.listCapacity);
  let enemyActive = true;
  let draws = 0;
  let attempts = 0;
  let restartIterator = null;
  let sceneCallbackPending = false;
  const actors = [];

  function randomInt(low, high, emit) {
    const value = config.draws[draws++];
    if (!Number.isInteger(value) || value < low || value >= high) {
      throw new RangeError('Invalid spawn RNG fixture');
    }
    emit('Spawn.RandomInt', low, high, value);
    return value;
  }

  function lookup(dictionary, label, key, emit) {
    if (dictionary == null) nullReference();
    emit('Spawn.Lookup', label, key);
    if (!Object.hasOwn(dictionary, key)) throw new RangeError('Native KeyNotFound');
    return dictionary[key];
  }

  function stageInfo() {
    if (config.stage == null) nullReference();
    return config.stage;
  }

  function monsterIndex(emit) {
    const indices = stageInfo().indices;
    const first = arrayItem(indices, randomInt(0, 3, emit)) | 0;
    if (first !== 0) return first;
    return arrayItem(stageInfo().indices, randomInt(0, 2, emit)) | 0;
  }

  function addToList(actor, emit) {
    if (enemiesRemaining === null) nullReference();
    listVersion = (listVersion + 1) >>> 0;
    const needsResize = enemiesRemaining >= listCapacity;
    enemiesRemaining++;
    if (needsResize) {
      listCapacity = Math.max(listCapacity === 0 ? 4 : listCapacity * 2, enemiesRemaining);
    }
    emit('EnemyList.Add', actor.ordinal, needsResize ? 'resize' : 'inline');
  }

  function makeActor(kind, index, position, emit) {
    const box = kind === 'box';
    if (!config.poolPresent) nullReference();
    const ordinal = attempts++;
    const status = config.poolEntries[String(ordinal)] ?? 'ok';
    emit('EnemyPool.Get', kind, ordinal, status);
    if (status === 'missing') return;

    // Initial values represent the explicitly modeled warm pool entry.
    const actor = {
      ordinal, kind, status, active: false,
      hpMax: '-1', hpCur: '-2', attack: '777', attackPossible: true,
      characterDmgType: 4, enemyAttackType: 7, abnormalStateAttackType: 9,
      attackSpeedBits: bits(-3.5), missBits: bits(-3.5), accuracyBits: bits(-3.5),
      attackRangeBits: bits(-3.5), heightBits: bits(-3.5),
    };
    actors.push(actor);
    if (status === 'destroyed') return;
    if (status === 'noTransform') nullReference();
    emit('Spawn.Position', ordinal, 'root', vectorBits(position));
    emit('Spawn.Rotation', ordinal, 'root', vectorBits([0, 0, 0, 1]));

    const row = box ? null : lookup(config.monsterRows, 'monster', index, emit);
    const hp = BigInt(config.enemyHp) * (box ? 5n : 1n);
    actor.hpMax = String(hp);
    actor.hpCur = actor.hpMax;
    actor.attack = '0';
    actor.attackPossible = false;
    if ((!box && row == null) || status === 'noSpriteScaler') nullReference();
    const spriteScale = box ? one : one.map(value => f32(value / f32(row.scaleSize)));
    emit('Spawn.Scale', ordinal, 'spriteScaler', vectorBits(spriteScale));

    const scaler = box ? one : scale(one, f32(stageInfo().scale));
    if (status === 'noScaler') nullReference();
    emit('Spawn.Scale', ordinal, 'scaler', vectorBits(scaler));
    actor.characterDmgType = 0;
    actor.attackRangeBits = bits(box ? 0 : 8);
    actor.attackSpeedBits = bits(box ? 0 : 0.7);
    actor.missBits = bits(stageInfo().miss);
    actor.accuracyBits = bits(stageInfo().accuracy);
    actor.enemyAttackType = 0;
    actor.abnormalStateAttackType = 0;
    actor.heightBits = bits(box ? 1.7 : row.height);
    if (box) {
      if (status === 'noRenderer') nullReference();
      emit('RewardBox.SetSprite', ordinal);
    } else {
      emit('ImageSetting_Enemy', ordinal, row.index | 0);
    }

    if (config.theme == null) nullReference();
    if (config.theme.usable && config.theme.type === 2) {
      emit('SetEnemyThemeDungeonMonster', ordinal);
    }
    addToList(actor, emit);
    if (status === 'noGameObject') nullReference();
    actor.active = true;
    emit('Spawn.SetActive', ordinal, true);
  }

  function makeBox(position, emit) {
    emit('MakeEnemy_RewardBox', vectorBits(position));
    makeActor('box', null, position, emit);
  }

  function startWave(emit) {
    emit('Start_MakeEnemy_Stage');
    const pattern = lookup(config.distancePatterns, 'distance', randomInt(0, 5, emit), emit);
    let base = add(endPosition, scale(right, 35));
    let last = base;
    for (let index = 0; index < (config.monsterCount | 0); index++) {
      const distance = arrayItem(pattern, index % 10);
      const spacing = f32(f32(stageInfo().scale) * 0.75);
      const offset = f32(f32(f32(distance) * 1.5) + spacing);
      last = add(add(base, scale(right, offset)), scale(forward, f32(index)));
      const selected = monsterIndex(emit);
      emit('MakeEnemy_Stage', selected, vectorBits(last));
      makeActor('normal', selected, last, emit);
      base = add(last, scale(right, f32(f32(stageInfo().scale) * 0.75)));
    }
    endPosition = last;
  }

  function updateStageBar(emit) {
    emit('StageBar_Update');
    emit('StageFill_Coroutine');
    emit('Game.StartCoroutine', 'StageFill_Coroutine');
  }

  function removeDeadActor(emit, actor = null) {
    if (enemiesRemaining === null) nullReference();
    enemiesRemaining--;
    listVersion = (listVersion + 1) >>> 0;
    emit('EnemyList.Remove', true);
    if (actor === null) {
      enemyActive = false;
      emit('Enemy.SetActive', false);
    } else {
      actor.active = false;
      emit('Spawn.SetActive', actor.ordinal, false);
    }
    if (enemiesRemaining > 0) return;
    waveCount = (waveCount + 1) | 0;
    if (waveCount <= 9) {
      startWave(emit);
      updateStageBar(emit);
    } else if (waveCount === 10) {
      makeBox(add(endPosition, scale(right, 35)), emit);
      updateStageBar(emit);
    } else {
      emit('Stage_RestartIE');
      restartIterator = { state: 0, current: null };
      emit('Game.StartCoroutine', 'Stage_RestartIE');
    }
  }

  function boxDeadEvent(session, emit) {
    const actor = actors.find(entry => entry.kind === 'box' && entry.active);
    if (!actor) throw new Error('Expected the active box from wave 10');
    emit('EnemyBox.DeadEvent');
    if (!fixture.life.databaseKillCallbackPresent) nullReference();
    emit('DatabaseManager.KillEvent');
    emit('Effect.BoxClear', 1);
    emit('EnemyBox.ItemDrop');
    if (!config.theme) nullReference();

    const special = config.theme.usable && config.theme.type === 2;
    const count = special ? 100 : 10;
    const dropType = special ? 5 : 2;
    const reward = fixture.reward;
    for (let index = 0; index < count; index++) {
      const unit = reward.draws[session.rewardCursor++ % reward.draws.length];
      const percent = Math.min(110, 90 + Math.floor(21 * unit));
      emit('Reward', { kind: 'RandomInt', min: 90, max: 111, value: percent });
      emit('Reward', { kind: 'CoinEffect', dropType, amount: String(stageGoldAmount(reward.stageGold, percent)) });
    }
    const amount = String(BigInt.asIntN(64, BigInt(reward.stage.Exp)));
    for (let index = 0; index < count; index++) {
      emit('Reward', {
        kind: 'DropEffect', dropType, currency: 24, amount, dungeonType: 5,
        mainIndex: reward.stage.Index | 0, subIndex: 0,
      });
    }
    emit('Effect.Dead', 1);
    emit('Effect.Slash', 8);
    emit('GameManager.Enemy_Dead', true);
    removeDeadActor(emit, actor);
  }

  function restartMoveNext(emit) {
    if (restartIterator.state === 0) {
      restartIterator.current = fixture.restart.waitPresent ? 'restartDelay' : null;
      restartIterator.state = 1;
      return true;
    }
    if (restartIterator.state === 1) {
      restartIterator.state = -1;
      emit('Stage_Reset');
      sceneCallbackPending = true;
      emit('SceneChange', null, 'Stage_Restart', null, null, true);
    }
    return false;
  }

  function runRestartCallback(emit) {
    if (!sceneCallbackPending) throw new Error('Expected the Stage_Restart callback');
    sceneCallbackPending = false;
    emit('Stage_Restart');
    if (!fixture.restart.positionCallbackPresent) nullReference();
    emit('PlayerPositionChange');
    emit('PlayerBattleStart');
    waveCount = 0;
    if (!fixture.restart.fillImagePresent) nullReference();
    emit('StageFill.Set', 0);
    if (!fixture.restart.playerTransformPresent) nullReference();
    endPosition = floatVector(fixture.restart.playerPosition);
    startWave(emit);
    emit('StageGoldRenew');
    emit('ResetDragonValleyBuffIcons');
    emit('StageLog.StageClear', (fixture.reward.stage.Index + 1) | 0);
    emit('StageLog.StartStopwatch');
  }

  return {
    startWave, makeBox, boxDeadEvent, restartMoveNext, runRestartCallback,
    applyDeath(_fixture, _enemy, emit) { removeDeadActor(emit); },
    restartSnapshot() { return { iterator: restartIterator, sceneCallbackPending }; },
    snapshot() {
      return {
        game: { waveCount, endPositionBits: vectorBits(endPosition), enemiesRemaining, enemyActive },
        spawn: { draws, attempts, actors, listVersion, listCapacity },
      };
    },
  };
}

export function runStageSpawn(entry, fixture) {
  const stage = createStageSpawn(fixture);
  if (entry === 'death') {
    const session = createFullDamage(fixture);
    session.applyGameDeath = stage.applyDeath;
    return { ...stepFullDamage(session), ...stage.snapshot() };
  }

  const effects = [];
  const emit = (name, ...args) => effects.push({ name, args });
  let error;
  try {
    if (entry === 'wave') stage.startWave(emit);
    else if (entry === 'box') stage.makeBox(floatVector(fixture.spawn.boxPosition), emit);
    else throw new TypeError('Unsupported stage-spawn entry');
  } catch (exception) {
    if (!['Native NullReference', 'Native ArrayBounds', 'Native KeyNotFound'].includes(exception.message)) {
      throw exception;
    }
    error = exception.message;
  }
  return { effects, ...stage.snapshot(), ...(error ? { error } : {}) };
}

export function runStageCycle(fixture, actions) {
  const stage = createStageSpawn(fixture);
  const session = createFullDamage(fixture);
  session.applyGameDeath = stage.applyDeath;
  return actions.map(action => {
    const effects = [];
    const emit = (name, ...args) => effects.push({ name, args });
    let returned = null;
    let error = null;
    try {
      if (action === 'killNormal') {
        const result = stepFullDamage(session);
        effects.push(...result.effects);
        error = result.error ?? null;
      } else if (action === 'boxDeadEvent') {
        stage.boxDeadEvent(session, emit);
      } else if (action === 'restartMoveNext') {
        returned = stage.restartMoveNext(emit);
      } else if (action === 'sceneCallback') {
        stage.runRestartCallback(emit);
      } else {
        throw new TypeError('Unsupported stage cycle action');
      }
    } catch (exception) {
      if (exception.message !== 'Native NullReference') throw exception;
      error = exception.message;
    }
    return structuredClone({
      action, effects, returned, error, ...stage.snapshot(),
      restart: stage.restartSnapshot(), rewardDraws: session.rewardCursor,
    });
  });
}
