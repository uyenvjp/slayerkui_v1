#!/usr/bin/env python3
from pathlib import Path
import hashlib,json,subprocess
root=Path(__file__).resolve().parents[1];checks=[]
for name,script,report in [('enemy_hit','verify-enemy-hit.mjs','enemy-hit-native-report.json'),('abnormal_queue','verify-abnormal-queue.mjs','abnormal-queue-native-report.json')]:
 r=subprocess.run(['node',str(root/'port'/script)],capture_output=True,text=True,check=True);observed=json.loads(r.stdout);native=json.loads((root/report).read_text());assert observed['passed']==native['cases']
 if 'contract_cases' in native:assert observed['contracts']==native['contract_cases']
 if 'connected_sequences' in native:assert observed['sequences']==native['connected_sequences'] and observed['actions']==native['sequence_actions']
 js=f'js-{name}-report.json';(root/js).write_text(json.dumps(observed,indent=2)+'\n');checks.append({'scope':name,'passed':True,'native_report':report,'javascript_report':js,'limits':native['scope']})
summary={'package':'com.gear2.growslayer','version':'700.0.4','version_code':705,'native_sha256':'e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537',
 'step12_bounded_cases':494,'contract_cases':4,'connected_sequences':3,'sequence_actions':29,'scoped_checks':checks,
 'all_client_logic_analyzed':False,'all_game_logic_recovered':False,'native_game_executed':False,'game_services_called':False,'live_ifix_loaded':False,'h5_building_paused':True,'deployed_this_step':False,'new_or_substitute_assets_created':False,
 'common_native_vm_change':{'file':'../logic-step6/tools/native_flow_vm.py','new_opcodes':['cmn','ubfx','bfxil'],'tested_by':'New GetDmg range branches and packed abnormal queue flags; existing opcode behavior unchanged. UXTW indexed load is supported only in EnemyHitVM subclass.','prior_corpora_regenerated_this_step':False},
 'not_yet_linked':['GetDmg -> Normal/Boss/SpecialBoss modifiers -> DmgResult/death/loot lifecycle','GetDmg -> ScheduleAbnormalAddDamage -> ExecuteAbnormalAddDamage full chain','ExecuteAbnormalAddDamage skill1004 lookup/CalculateSkillDmg/recursive GetDmg body (static only)','Unity object liveness/scheduler, real replay and quest lifecycle'],
 'scope_notes':'Whole GetDmg instruction body compared under explicit downstream modifier/result-return fixtures; those constants are not gameplay defaults or recovered damage rules. Original status/mastery/miss/WinType bodies are linked. Schedule/factory/iterator are separately compared with ExecuteAbnormalAddDamage as a sink; no claim of entire battle parity.',
 'current_port_sha256':{p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((root/'port').glob('*.mjs'))}}
(root/'VALIDATION_SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps({'passed':True,'bounded_cases':494,'contracts':4,'connected_sequences':3,'sequence_actions':29,'all_client_logic_analyzed':False}))
