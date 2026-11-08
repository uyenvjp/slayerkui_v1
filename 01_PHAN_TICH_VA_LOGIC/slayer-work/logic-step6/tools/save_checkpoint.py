#!/usr/bin/env python3
"""Write a fresh checkpoint inode so prior upload identity cannot mask edits."""
from pathlib import Path
import hashlib,os,zipfile
base=Path(__file__).resolve().parents[3];work=base/'slayer-work';out=base/'Slayer_Legend_Phan_Tich_Lien_Tuc.zip';temporary=out.with_suffix('.tmp.zip')
with zipfile.ZipFile(temporary,'w',zipfile.ZIP_DEFLATED,compresslevel=6) as z:
 z.write(work/'ANALYSIS_STATUS.md','ANALYSIS_STATUS.md')
 for sub in ['logic-full','logic-step4','logic-step5','logic-step6','logic-step7','logic-step8','logic-step9','logic-step10','logic-step11','logic-step12','logic-step13','logic-step14','logic-step15','logic-step16']:
  for f in sorted((work/sub).rglob('*')):
   if not f.is_file() or '__pycache__' in f.parts:continue
   # Preserve the analysis work, not original asset archives or the paused
   # Site experiment (which belongs to its own source repository).
   if sub=='logic-step7' and ('assets-research' in f.parts or f.name in ['asset-selection-contact.png','prepare_h5.py','select_assets.py']):continue
   z.write(f,str(f.relative_to(work)))
os.replace(temporary,out)
print(out.resolve(),out.stat().st_size,hashlib.sha256(out.read_bytes()).hexdigest())
