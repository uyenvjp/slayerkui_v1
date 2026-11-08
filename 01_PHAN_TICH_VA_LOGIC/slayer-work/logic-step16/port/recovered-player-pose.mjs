const walkCloak = [1, 2, 3, 1, 2, 3];
const attackCloak = [4, 5, 6, 6, 7];
const attackHair = [0, 1, 2, 2, 0];

// The renderer receives arrays resolved from the player's original skin data.
export function recoverPlayerPose({
  event, frame, character_number, same_sprites, body_active,
  costume_length, body_length, costume_present, body_present,
}) {
  frame |= 0;
  let index;
  let layers;
  switch (event) {
    case 'Animation_Atk_SpriteSetting':
      index = (8 + (frame < 1 ? frame : 1)) | 0;
      layers = [['head', 0], ['face', 0]];
      if (frame >= 0 && frame <= 4) {
        layers.unshift(['cloak', 12, attackCloak[frame]]);
        layers.push(['hair', 0, attackHair[frame]]);
      }
      break;
    case 'Animation_Walk_SpriteSetting':
      index = (frame + 1) | 0;
      layers = [['head', 1], ['face', 1], ['hair', 3, 3 + frame % 3]];
      if ((frame >>> 0) < walkCloak.length) layers.unshift(['cloak', 13, walkCloak[frame]]);
      break;
    case 'Animation_Dead_SpriteSetting':
      index = 7;
      layers = [['head', 0], ['face', 2], ['hair', 0, 3]];
      break;
    case 'Animation_Stop_SpriteSetting':
      index = 11;
      layers = [['cloak', 14, 4], ['head', 0], ['face', 0], ['hair', 0, 4]];
      break;
    case 'Animation_Pause_SpriteSetting':
      index = 14;
      layers = [['cloak', 13, 11], ['head', 1], ['face', 1], ['hair', 3, 3]];
      break;
    case 'Animation_Idle_SpriteSetting_Number':
      index = same_sprites && (character_number | 0) !== 0 ? 31 : 0;
      layers = [['cloak', 12, 0], ['head', 0], ['face', 0], ['hair', 0, 0]];
      break;
    default:
      throw new TypeError(`Unsupported animation event: ${event}`);
  }

  const drawn = [];
  function requireArray(length) {
    if (length == null) return 'Native NullReference';
    if ((index >>> 0) >= length) return 'Native ArrayBounds';
    return null;
  }
  let error = requireArray(costume_length);
  if (error) return { drawn, error };
  if (!costume_present) return { drawn, error: 'Native NullReference' };
  drawn.push(['sprite', 'costume', index]);
  if (!body_present) return { drawn, error: 'Native NullReference' };
  if (body_active) {
    error = requireArray(body_length);
    if (error) return { drawn, error };
    drawn.push(['sprite', 'body', index]);
  }
  return { drawn: drawn.concat(layers), error: null };
}
