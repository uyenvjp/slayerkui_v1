#!/usr/bin/env python3
"""Persist real verification results with bounded-analysis limits."""
from pathlib import Path
import hashlib,json,subprocess
root=Path(__file__).resolve().parents[1]
checks=[]
for name,script,report in [('experience','verify-experience.mjs','experience-native-report.json'),('level_flow','verify-level-flow.mjs','level-flow-native-report.json')]:
 result=subprocess.run(['node',str(root/'port'/script)],capture_output=True,text=True,check=True)
 observed=json.loads(result.stdout.strip());native=json.loads((root/report).read_text());assert observed['passed']==native['cases']
 if 'contracts' in native:assert observed['contracts']==native['contracts']
 if 'connected_sequences' in native:assert observed['sequences']==native['connected_sequences']
 js_report=f'js-{name}-report.json';(root/js_report).write_text(json.dumps(observed,indent=2)+'\n')
 checks.append({'scope':name,'passed':True,'native_model_cases':native['cases'],'native_report':report,'javascript_report':js_report,'limits':native['scope']})
level_report=json.loads((root/'level-flow-native-report.json').read_text())
summary={'package':'com.gear2.growslayer','version':'700.0.4','version_code':705,
 'native_sha256':'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537',
 'step9_bounded_native_model_cases':sum(c['native_model_cases'] for c in checks),'scoped_checks':checks,
 'connected_sequences':level_report['connected_sequences'],'sequence_actions':level_report['sequence_actions'],
 'extra_checks_excluded_from_case_total':{'experience_input_contracts':2,'level_null_callback_contracts':level_report['contracts']},
 'baseline_user_max_level':4000,'original_exp_table_rows':5001,
 'all_client_logic_analyzed':False,'all_game_logic_recovered':False,'native_game_executed':False,'game_services_called':False,'live_ifix_loaded':False,
 'h5_building_paused':True,'deployed_this_step':False,'new_or_substitute_assets_created':False,
 'static_only_not_whole_body_validated':['StatManager Awake/OnEnable/OnDisable/Start/constructor lifecycle; callback method usage resolved from OnEnable','Fill_Update body read statically; remains sink','Other unlock/quest/tutorial/training and SyncExp/API downstreams remain explicit dependencies'],
 'common_native_vm_changed_this_step':False,
 'scope_notes':'Original selected native instruction bodies versus JavaScript translations under declared fixtures. Actual LevelUp_Callback/LevelDisplay are linked as the one registered listener for the level corpus; other subscribers and opaque UI/quest/time-sync/unlock/network sinks are not gameplay parity. Synthetic account fixtures are not offline defaults. Case counts are not completion percentages.',
 'current_port_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((root/'port').glob('*.mjs'))}}
(root/'VALIDATION_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps({'passed':True,'step9_native_model_cases':summary['step9_bounded_native_model_cases'],'connected_sequences':summary['connected_sequences'],'all_client_logic_analyzed':False}))
