#!/usr/bin/env python3
"""Run bounded JavaScript comparisons and record their actual results."""
from pathlib import Path
import hashlib,json,subprocess
root=Path(__file__).resolve().parents[1]
jobs=[('rewards','reward','verify-rewards.mjs'),('enemy_ai','ai','verify-enemy-ai.mjs'),('lifecycle','lifecycle','verify-lifecycle.mjs'),('acquisition','acquisition','verify-acquisition.mjs'),('equipment_upgrade','upgrade','verify-upgrade.mjs')]
checks=[]
for name,prefix,script in jobs:
 result=subprocess.run(['node',str(root/'port'/script)],text=True,capture_output=True,check=True)
 observed=json.loads(result.stdout.strip());native=json.loads((root/f'{prefix}-native-flow-report.json').read_text())
 assert observed['passed']==native['cases'],(name,observed,native)
 (root/f'js-{prefix}-flow-report.json').write_text(json.dumps(observed,indent=2)+'\n')
 check={'scope':name,'passed':True,'native_cases':native['cases'],'native_report':f'{prefix}-native-flow-report.json','javascript_report':f'js-{prefix}-flow-report.json','limits':native['scope']}
 if name=='lifecycle':check.update(javascript_translation_cases=200,native_setter_contract_cases=12)
 checks.append(check)
summary={'package':'com.gear2.growslayer','version':'700.0.4','version_code':705,
 'native_sha256':'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537',
 'step7_bounded_native_model_cases':sum(c['native_cases'] for c in checks),'scoped_checks':checks,
 'previous_step6_cases_regenerated_and_passed':2268,
 'all_client_logic_analyzed':False,'all_game_logic_recovered':False,'native_game_executed':False,'live_ifix_loaded':False,'game_services_called':False,
 'h5_experiment':'Local draft existed before the latest user correction. Further building and all deployment paused; this checkpoint contains analysis only.',
 'hosted':False,'new_or_substitute_assets_created':False,
 'drafts_without_whole_body_flow_validation':['port/recovered-enemy-damage.mjs'],
 'scope_notes':'Synthetic fixtures with declared downstream hooks; no Unity/Android/live IFix/backend/gameplay parity. The 1701 original level rows are data coverage for arithmetic, not 1701 recovered subsystems.',
 'current_port_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((root/'port').glob('*.mjs'))}}
(root/'VALIDATION_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps({'passed':True,'step7_native_model_cases':summary['step7_bounded_native_model_cases'],'previous_step6_cases':2268,'all_client_logic_analyzed':False}))
