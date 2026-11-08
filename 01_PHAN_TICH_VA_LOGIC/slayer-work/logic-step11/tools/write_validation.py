#!/usr/bin/env python3
"""Run scoped checks, preserve actual results and distinguish fragment proofs."""
from pathlib import Path
import hashlib,json,subprocess
root=Path(__file__).resolve().parents[1];checks=[]
jobs=[
 ('prefs','verify-prefs.mjs','prefs-native-report.json',{'passed':'cases','contracts':'contract_cases','sequences':'connected_sequences'}),
 ('api_control','verify-api-control.mjs','api-control-native-report.json',{'passed':'cases','contracts':'contract_cases','sequences':'connected_sequences'}),
 ('prefs_sync','verify-prefs-sync.mjs','prefs-sync-native-report.json',{'sequences':'connected_sequences','actions':'sequence_actions','callbackContracts':'callback_contracts','signalCases':'signal_cases'}),
 ('request_loop','verify-request-loop.mjs','request-loop-native-report.json',{'sequences':'connected_sequences','actions':'sequence_actions','contracts':'contract_cases'}),
 ('retry_disposition','verify-retry-disposition.mjs','retry-disposition-native-report.json',{'fragmentSequences':'continuation_fragment_sequences','actions':'sequence_actions'}),
 ('client_sync','verify-client-sync.mjs','client-sync-native-report.json',{'sequences':'connected_sequences','actions':'sequence_actions'})]
for name,script,report,mapping in jobs:
 result=subprocess.run(['node',str(root/'port'/script)],text=True,capture_output=True,check=True);observed=json.loads(result.stdout.strip());native=json.loads((root/report).read_text())
 for observed_key,native_key in mapping.items():assert observed[observed_key]==native[native_key],(name,observed_key)
 js_report=f'js-{name}-report.json';(root/js_report).write_text(json.dumps(observed,indent=2)+'\n')
 checks.append({'scope':name,'passed':True,'native_report':report,'javascript_report':js_report,'observed':observed,'limits':native['scope']})
summary={'package':'com.gear2.growslayer','version':'700.0.4','version_code':705,
 'native_sha256':'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537',
 'step11_bounded_entry_cases':3648,'connected_sequences':393,'connected_sequence_actions':1585,
 'continuation_fragment_sequences':140,'continuation_fragment_actions':180,
 'contract_cases_excluded_from_entry_total':36,'signal_cases_excluded_from_entry_total':4,
 'scoped_checks':checks,
 'all_client_logic_analyzed':False,'all_game_logic_recovered':False,'native_game_executed':False,'game_services_called':False,'live_ifix_loaded':False,
 'h5_building_paused':True,'deployed_this_step':False,'new_or_substitute_assets_created':False,
 'key_refinement':'The 192 ServerPrefs-only sequences inject callbacks directly. The stronger 102 linked api255 sequences show SetClientData response MoveNext invokes that callback only if IsValidCode succeeds. Invalid-code responses leave the modeled outer signal wait pending; the three-send local loop is not proven reachable through that normal response path.',
 'common_native_vm_change':{'file':'../logic-step6/tools/native_flow_vm.py','change':'Added ORR and LDURB/STURB opcode handling, exercised by the new selected bodies.','prior_corpora_regenerated_this_step':False},
 'static_or_incomplete':['RequestLoop catch entry, type classification, exception unwinding and gRPC Status formatting','Full protobuf JSON/binary transport serialization and save schema compatibility','Account initialization, remaining acquisition/upgrade/equip/stage/buff/subscriber/animation lifecycles','Live IFix payload and server implementation unavailable from observed inputs'],
 'scope_notes':'Entry cases, connected actions, contract cases and reconstructed continuation fragments are reported separately. Counts overlap stronger rechecks of linked original bodies; no completion percentage or whole-game equivalence. Explicit initialized statics, dictionary/delegate/BCL/Task/UniTask/queue/UI/RPC fixtures. No game native loading or service requests.',
 'current_port_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((root/'port').glob('*.mjs'))}}
(root/'VALIDATION_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps({'passed':True,'bounded_entry_cases':3648,'connected_sequences':393,'connected_actions':1585,'continuation_fragments':140,'fragment_actions':180,'all_client_logic_analyzed':False}))
