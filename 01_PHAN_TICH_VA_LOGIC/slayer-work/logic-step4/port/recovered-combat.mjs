/** Headless port of bounded native baseline combat rules, XAPK 700.0.4 / 705.
 * Not a playable game. Caller must supply unresolved buff/skill inputs explicitly.
 * No generated assets, native code execution, network, UI, or IFix emulation.
 */
export const f32 = Math.fround;
export const i32 = n => BigInt.asIntN(32, BigInt(n));
export const i64 = n => BigInt.asIntN(64, BigInt(n));

// ARM FCVTZS saturates finite out-of-range inputs; these C# conversion blocks
// additionally select INT_MIN for positive infinity. Keep that explicit branch.
export function nativeFloatToInteger(value, bits = 32) {
  const min = -(1n << BigInt(bits - 1));
  const max = (1n << BigInt(bits - 1)) - 1n;
  if (Number.isNaN(value)) return 0n;
  if (!Number.isFinite(value)) return min;
  if (value >= Number(max)) return max;
  if (value <= Number(min)) return min;
  return BigInt(Math.trunc(value));
}

export function percentFloat32(damage, bonus) {
  const factor = nativeFloatToInteger(f32(f32(f32(bonus) + 100) * 100));
  return BigInt(damage) * factor / 10000n;
}
export function percentIntegerWord(damage, bonus) {
  const factor = i32(i32(bonus) * 100n + 10000n);
  return BigInt(damage) * factor / 10000n;
}
export function lowHpArithmetic(damage, bonus) {
  const factor = i32(nativeFloatToInteger(f32(bonus)) + 100n);
  return BigInt(damage) * factor / 100n;
}
export function abnormalArithmetic(damage, bonus) {
  const factor = i32(nativeFloatToInteger(f32(f32(bonus) * 1000)) + 100000n);
  return BigInt(damage) * factor / 100000n;
}
export function freezeArithmetic(damage, bonus, masteryPercent) {
  const base = f32(Number(i32(i32(masteryPercent) + 100n)));
  const factor = nativeFloatToInteger(f32(f32(bonus) + base));
  return BigInt(damage) * factor / 100n;
}
export const burnArithmetic = (damage, bonus) => BigInt(damage) * i32(i32(bonus) + 100n) / 100n;
export const masteryArithmetic = damage => BigInt(damage) * 120n / 100n;
export const hpDecreaseArithmetic = (hpMax, value) => BigInt(hpMax) * nativeFloatToInteger(f32(f32(value) * 100)) / 10000n;
export const isHighHp = (current, max) => BigInt(current) > BigInt(max) * 70n / 100n;
export const isLowHp = (current, max, threshold) => BigInt(current) <= BigInt(max) * i32(threshold) / 100n;

const defeat = [0, 2, 3, 4, 1];
const win = [0, 4, 1, 2, 3];
export function elementalDamage(damage, defenderElement, attackElement) {
  const d = BigInt(damage);
  if (attackElement === 0) return d;
  // Native default for values outside 1..4 is None (0), including All (100).
  if (defenderElement === (defeat[attackElement] ?? 0)) return d * 70n / 100n;
  if (defenderElement === (win[attackElement] ?? 0)) return d * 2n;
  return d;
}

export function missThreshold(accuracy, miss, userLevel) {
  const denominator = f32(f32(f32(accuracy) + f32(miss)) + f32(Number(i32(userLevel))));
  return f32(f32(miss) / denominator);
}
export function misses({accuracy, miss, userLevel, trueDamage, randomUnit}) {
  if (trueDamage) return false;
  // Random value must come from the caller; no substitute RNG is invented.
  return f32(randomUnit) < missThreshold(accuracy, miss, userLevel);
}

function requireFields(object, keys, scope) {
  if (!object) throw new Error(`Unrecovered input: ${scope}`);
  for (const k of keys) if (!(k in object)) throw new Error(`Unrecovered input: ${scope}.${k}`);
}

/** EnemyBase Normal/BossMonsterDmg_Cal only. This does not implement GetDmg,
 * skill eligibility, stat aggregation, AI, rewards, progression or live patches.
 * Side effects are returned as ordered events for a future offline runtime.
 */
export function monsterModifiers(inputDamage, enemy, context, boss = false) {
  requireFields(enemy, ['hpCurrent', 'hpMax', 'characterDmgType', 'dmgStackState'], 'enemy');
  requireFields(context, ['skillDamage', 'attackElement', 'spiritValue', 'spiritCheck',
    'blackOrbNormal', 'blackOrbBoss', 'themeNormal', 'themeBoss', 'beastBoss',
    'lowHpThreshold', 'lowHpBonus'], 'context');
  let damage = BigInt(inputDamage);
  let hpCurrent = BigInt(enemy.hpCurrent);
  const hpMax = BigInt(enemy.hpMax);
  const events = [];
  const stack = amount => { if (enemy.dmgStackState) events.push({method:'DmgStackEvent', damage:amount}); };
  if (boss) {
    events.push({field:'DatabaseManager.BossHitCount', increment:1});
  } else if (hpCurrent >= hpMax) {
    const value = f32(context.spiritValue(11));
    if (value > 0 && context.spiritCheck(11)) {
      const reduction = hpDecreaseArithmetic(hpMax, value);
      hpCurrent -= reduction;
      stack(reduction);
      events.push({method:'SpiritSkillEffect_EnemyTarget', index:11, effectValue:1});
    }
  }
  if (context.skillDamage) {
    damage = elementalDamage(damage, enemy.characterDmgType, context.attackElement);
    const id = boss ? 4 : 5;
    const value = f32(context.spiritValue(id));
    if (value > 0 && context.spiritCheck(id)) damage = percentFloat32(damage, value);
  }
  const orb = i64(boss ? context.blackOrbBoss : context.blackOrbNormal);
  if (orb >= 1n) damage = percentIntegerWord(damage, orb);
  const theme = i32(boss ? context.themeBoss : context.themeNormal);
  if (theme >= 1n) damage = percentIntegerWord(damage, theme);
  if (boss && f32(context.beastBoss) > 0) damage = percentFloat32(damage, context.beastBoss);
  const highHpValue = f32(context.spiritValue(8));
  if (highHpValue > 0 && isHighHp(hpCurrent, hpMax) && context.spiritCheck(8)) {
    damage = percentFloat32(damage, highHpValue);
  }
  if (f32(context.lowHpBonus) > 0 && isLowHp(hpCurrent, hpMax, nativeFloatToInteger(f32(context.lowHpThreshold)))) {
    damage = lowHpArithmetic(damage, context.lowHpBonus);
  }
  stack(damage);
  return {damage, hpCurrent, events};
}

export const SOURCE = Object.freeze({
  nativeSHA256:'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537',
  normal:'0x50b8b60', boss:'0x50b8cbc', miss:'0x4d22f6c',
  fullHpDecrease:'0x50b9e10', highHp:'0x50ba1c8', lowHp:'0x50ba354',
  abnormal:'0x50b84dc', burn:'0x50b887c', freeze:'0x50b8998',
});
