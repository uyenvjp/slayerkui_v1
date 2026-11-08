#!/usr/bin/env python3
"""Run scoped comparisons; preserve scope and actual observed counts."""
from pathlib import Path
import hashlib,json,subprocess

root=Path(__file__).resolve().parents[1]
jobs=[
 ('equipment_stats','equipment-stat-native-flow-report.json','verify-equipment-stats.mjs'),
 ('equipment_flow','equipment-flow-native-report.json','verify-equipment-flow.mjs'),
 ('currency_snapshot','currency-native-flow-report.json','verify-currency-snapshot.mjs'),
 ('currency_mutation','currency-mutation-native-report.json','verify-currency-mutation.mjs'),
]
checks=[]
for name,report,script in jobs:
 result=subprocess.run(['node',str(root/'port'/script)],text=True,capture_output=True,check=True)
 observed=json.loads(result.stdout.strip());native=json.loads((root/report).read_text())
 assert observed['passed']==native['cases'],(name,observed,native)
 if 'contracts' in native:assert observed['contracts']==native['contracts']
 if 'connected_sequences' in native:assert observed['sequences']==native['connected_sequences']
 js_report=f'js-{name}-report.json'
 (root/js_report).write_text(json.dumps(observed,indent=2)+'\n')
 checks.append({'scope':name,'passed':True,'native_model_cases':native['cases'],
                'native_report':report,'javascript_report':js_report,
                'extra_checks':{k:v for k,v in observed.items() if k in ['contracts','sequences']},
                'limits':native['scope']})
summary={
 'package':'com.gear2.growslayer','version':'700.0.4','version_code':705,
 'native_sha256':'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537',
 'step8_bounded_native_model_cases':sum(c['native_model_cases'] for c in checks),
 'scoped_checks':checks,
 'connected_sequences':3,'sequence_actions':9,
 'extra_checks_excluded_from_case_total':{'equipment_input_contract_checks':3,'currency_null_contract_checks':4},
 'all_client_logic_analyzed':False,'all_game_logic_recovered':False,
 'native_game_executed':False,'game_services_called':False,'live_ifix_loaded':False,
 'h5_building_paused':True,'deployed_this_step':False,'new_or_substitute_assets_created':False,
 'static_only_not_whole_body_validated':[
  'APIManager.ItemUpgrade request assembly and async response continuation',
  'DatabaseManager.UseCurrency currencies other than cube 6 and BigInteger overloads',
  'EnemyBase.GetDmg draft from step 7 remains unvalidated as a whole body',
 ],
 'common_vm_change':{
  'file':'../logic-step6/tools/native_flow_vm.py',
  'change':'SCVTF source dN reads integer bits from SIMD register.',
  'prior_scope':'No matching SIMD d-source instruction in step6 ASM; step7 matches only Level_Value_Setting, outside the earlier executed ranges.',
  'prior_corpora_regenerated_this_step':False,
 },
 'scope_notes':'Bounded original instruction models versus JavaScript translations with explicit initialized-manager, decrypted-wrapper, collection and downstream fixtures. No full account/Unity/Android/backend equivalence; case counts are not a completion percentage.',
 'current_port_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((root/'port').glob('*.mjs'))},
}
(root/'VALIDATION_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps({'passed':True,'step8_native_model_cases':summary['step8_bounded_native_model_cases'],
                  'connected_sequences':summary['connected_sequences'],'all_client_logic_analyzed':False}))
