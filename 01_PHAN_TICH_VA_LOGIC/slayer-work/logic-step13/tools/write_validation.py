#!/usr/bin/env python3
from pathlib import Path
import hashlib,json,subprocess
root=Path(__file__).resolve().parents[1];checks=[]
for name,script,report in [('enemy_lifecycle','verify-enemy-lifecycle.mjs','enemy-lifecycle-native-report.json'),('full_damage','verify-full-damage.mjs','full-damage-native-report.json'),('stage_death','verify-stage-death.mjs','stage-death-native-report.json')]:
 r=subprocess.run(['node',str(root/'port'/script)],capture_output=True,text=True,check=True);observed=json.loads(r.stdout);native=json.loads((root/report).read_text());assert observed['passed']==native['cases']
 if 'contract_cases' in native:assert observed['contracts']==native['contract_cases']
 if 'connected_sequences' in native:assert observed['sequences']==native['connected_sequences'] and observed['actions']==native['sequence_actions']
 js=f'js-{name}-report.json';(root/js).write_text(json.dumps(observed,indent=2)+'\n');checks.append({'scope':name,'passed':True,'native_report':report,'javascript_report':js,'limits':native['scope']})
summary={'package':'com.gear2.growslayer','version':'700.0.4','version_code':705,'native_sha256':'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537',
 'step13_bounded_cases':522,'contract_cases':8,'connected_sequences':3,'sequence_actions':9,'scoped_checks':checks,
 'all_client_logic_analyzed':False,'all_game_logic_recovered':False,'native_game_executed':False,'game_services_called':False,'live_ifix_loaded':False,'h5_building_paused':True,'deployed_this_step':False,'new_or_substitute_assets_created':False,
 'common_native_vm_changes':{'file':'../logic-step6/tools/native_flow_vm.py','changes':['Optional read-only instruction observer records selected native entries','Selected NEON DUP .2s, FADD/FMUL .2s and MOV scalar lane for mode0 reward-box position'],'prior_corpora_regenerated_this_step':False},
 'limits':['Warm EnemyNormal multicast fixture; BaseSetting registration read statically, not fully executed','Upstream buff/stat/secure-wrapper population, spirit availability and RNG are explicit fixtures','All boss/overridden death lifecycles and all game modes remain incomplete','GameManager mode0 progression uses spawn/stage-bar/restart-coroutine sinks; no complete spawn/clear implementation','Dropped effects are not automatically acquired account resources','Full Android/Unity scheduler/asset-animation/gameplay/account/IFix/backend parity is not established'],
 'case_total_notes':'288 linked HP/lifecycle cases include stronger rechecks of earlier hit orchestration; 162 stronger modifier cases remove fixed modifier outputs; 72 mode0 true-damage cases isolate transition logic after a lethal hit. Not completion percentage or whole-game test coverage.',
 'current_port_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((root/'port').glob('*.mjs'))}}
(root/'VALIDATION_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps({'passed':True,'bounded_cases':522,'contracts':8,'connected_sequences':3,'actions':9,'all_client_logic_analyzed':False}))
