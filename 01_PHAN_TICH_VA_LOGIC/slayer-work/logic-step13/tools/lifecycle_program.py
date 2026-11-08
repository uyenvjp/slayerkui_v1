from pathlib import Path
import json
from enemy_lifecycle_vm import Program
def make_program(source,root,full=False):
 root=Path(root);previous=root.parent
 dirs=[previous/'logic-step12/research'/x for x in ['enemy-damage','enemy-calcs','character-element']]+[root/'research'/x for x in ['enemy-death','hp-accessors','enemy-normal','death-subscribers']]+[previous/'logic-step7/research'/x for x in ['enemy-normal','drop-helpers','probability','game-stage','reward-db']]+[previous/'logic-step4/asm']
 ranges=[(0x50b7810,0x50b8b60),(0x50bae64,0x50baec4),(0x5018538,0x50185b0),(0x4d22f6c,0x4d23080),(0x50baf38,0x50bb34c),(0x5016584,0x50166fc),(0x50bbf20,0x50bc180),(0x50bbe68,0x50bbf20),(0x50f9388,0x50fa418),(0x50fab10,0x50fac40),(0x4d18120,0x4d18198),(0x4e513b4,0x4e51610),(0x4d4d544,0x4d4d664),(0x4d4da60,0x4d4dba4)]
 if full:
  for directory in ['full-modifiers','elemental-modifiers']:
   path=root/'research'/directory;dirs.append(path)
   for manifest in path.glob('*-method-manifest.json'):
    for r in json.loads(manifest.read_text()):ranges.append((int(r['native_va'],16),int(r['end_va'],16)))
 p=Program(source,dirs);p.instructions={pc:op for pc,op in p.instructions.items() if any(lo<=pc<hi for lo,hi in ranges)};return p
