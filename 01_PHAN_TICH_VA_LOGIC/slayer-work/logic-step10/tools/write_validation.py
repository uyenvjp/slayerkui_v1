#!/usr/bin/env python3
"""Run current scoped checks and preserve real counts/limits."""
from pathlib import Path
import hashlib,json,subprocess
root=Path(__file__).resolve().parents[1];checks=[]
jobs=[('experience_data','verify-experience-data.mjs','experience-data-native-report.json'),('linked_experience','verify-linked-experience.mjs','linked-experience-native-report.json'),('level_request','verify-level-request.mjs','level-request-native-report.json')]
for name,script,report in jobs:
 result=subprocess.run(['node',str(root/'port'/script)],text=True,capture_output=True,check=True);observed=json.loads(result.stdout.strip());native=json.loads((root/report).read_text());assert observed['passed']==native['cases']
 if 'contracts' in native:assert observed['contracts']==native['contracts']
 if 'connected_sequences' in native:assert observed['sequences']==native['connected_sequences']
 js_report=f'js-{name}-report.json';(root/js_report).write_text(json.dumps(observed,indent=2)+'\n')
 checks.append({'scope':name,'passed':True,'native_model_cases':native['cases'],'native_report':report,'javascript_report':js_report,'limits':native['scope']})
summary={'package':'com.gear2.growslayer','version':'700.0.4','version_code':705,
 'native_sha256':'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537',
 'step10_bounded_native_model_cases':sum(c['native_model_cases'] for c in checks),'scoped_checks':checks,
 'connected_sequences':3,'sequence_actions':9,'extra_checks_excluded_from_case_total':{'null_and_parser_dependency_contracts':7},
 'all_client_logic_analyzed':False,'all_game_logic_recovered':False,'native_game_executed':False,'game_services_called':False,'live_ifix_loaded':False,
 'h5_building_paused':True,'deployed_this_step':False,'new_or_substitute_assets_created':False,
 'static_only_not_whole_body_validated':['LevelUp async response continuation','LevelUpRequest copy constructor and UserExp Clone/copy lifecycle','Queue processing, serialization, retry, IsValidCode and complete acquisition/subscriber/account logic'],
 'common_native_vm_change':{'file':'../logic-step6/tools/native_flow_vm.py','change':'Added BIC with ASR shifted operand for the spirit-array getter; existing opcode handling unchanged.','prior_corpora_regenerated_this_step':False},
 'scope_notes':'1678 scoped cases, including 704 stronger rechecks of earlier EXP orchestration with the actual aggregate getter. Explicit wrappers/manager/BCL string parse and formatting/constructors/delegates/collections/downstream fixtures. Finite numeric bits and intermediate writes checked; NaN payloads and culture-complete parsing are not recovered. No completion percentage or whole game/Android/backend equivalence.',
 'current_port_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((root/'port').glob('*.mjs'))}}
(root/'VALIDATION_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps({'passed':True,'step10_native_model_cases':summary['step10_bounded_native_model_cases'],'connected_sequences':summary['connected_sequences'],'all_client_logic_analyzed':False}))
