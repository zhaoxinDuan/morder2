DROP TABLE act_evt_log;
CREATE TABLE act_evt_log (LOG_NR_ bigint NOT NULL AUTO_INCREMENT, TYPE_ varchar(64) COLLATE utf8_bin, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, EXECUTION_ID_ varchar(64) COLLATE utf8_bin, TASK_ID_ varchar(64) COLLATE utf8_bin, TIME_STAMP_ timestamp(3) DEFAULT 'CURRENT_TIMESTAMP(3)' NOT NULL, USER_ID_ varchar(255) COLLATE utf8_bin, DATA_ longblob, LOCK_OWNER_ varchar(255) COLLATE utf8_bin, LOCK_TIME_ timestamp(3), IS_PROCESSED_ tinyint DEFAULT '0', PRIMARY KEY (LOG_NR_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_ge_bytearray;
CREATE TABLE act_ge_bytearray (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, NAME_ varchar(255) COLLATE utf8_bin, DEPLOYMENT_ID_ varchar(64) COLLATE utf8_bin, BYTES_ longblob, GENERATED_ tinyint, PRIMARY KEY (ID_), INDEX ACT_FK_BYTEARR_DEPL (DEPLOYMENT_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_ge_bytearray (ID_, REV_, NAME_, DEPLOYMENT_ID_, BYTES_, GENERATED_) VALUES ('12502', 1, 'D:\workproject\morder2\bpm\target\classes\processes\join.bpmn20.xml', '12501', '<?xml version=''1.0'' encoding=''UTF-8''?>
<definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL"
             xmlns:activiti="http://activiti.org/bpmn"
             typeLanguage="http://www.w3.org/2001/XMLSchema" expressionLanguage="http://www.w3.org/1999/XPath"
             targetNamespace="http://www.activiti.org/test">
    <process id="joinProcess" name="Join process" isExecutable="true">
        <startEvent id="startevent1" name="Start">
            <extensionElements>
                <activiti:formProperty id="personId" name="person id" type="long"
                                       required="true"></activiti:formProperty>
                <activiti:formProperty id="compId" name="company Id" type="long"
                                       required="true"></activiti:formProperty>
            </extensionElements>
        </startEvent>
        <endEvent id="endevent1" name="End"></endEvent>
        <userTask id="ApprovalTask" name="Approval Task"
                  activiti:candidateUsers="${joinService.findUsers(execution)}" isForCompensation="true">
            <extensionElements>
                <activiti:formProperty id="joinApproved" name="Join Approved" type="enum">
                    <activiti:value id="true" name="Approve"></activiti:value>
                    <activiti:value id="false" name="Reject"></activiti:value>
                </activiti:formProperty>
            </extensionElements>
        </userTask>
        <sequenceFlow id="flow1" sourceRef="startevent1" targetRef="ApprovalTask"></sequenceFlow>
        <serviceTask id="AutoTask" name="Auto Task"
                     activiti:expression="${joinService.joinGroup(execution)}"></serviceTask>
        <sequenceFlow id="flow2" sourceRef="ApprovalTask" targetRef="AutoTask"></sequenceFlow>
        <sequenceFlow id="flow3" sourceRef="AutoTask" targetRef="endevent1"></sequenceFlow>
    </process>
</definitions>', 0);
INSERT INTO act_ge_bytearray (ID_, REV_, NAME_, DEPLOYMENT_ID_, BYTES_, GENERATED_) VALUES ('2502', 1, 'D:\workproject\morder2\bpm\target\classes\processes\join.bpmn20.xml', '2501', '<?xml version=''1.0'' encoding=''UTF-8''?>
<definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL"
             xmlns:activiti="http://activiti.org/bpmn"
             typeLanguage="http://www.w3.org/2001/XMLSchema" expressionLanguage="http://www.w3.org/1999/XPath"
             targetNamespace="http://www.activiti.org/test">
	<process id="joinProcess" name="Join process" isExecutable="true">
		<startEvent id="startevent1" name="Start">
			<extensionElements>
				<activiti:formProperty id="personId" name="person id" type="long"
				                       required="true"></activiti:formProperty>
				<activiti:formProperty id="compId" name="company Id" type="long"
				                       required="true"></activiti:formProperty>
			</extensionElements>
		</startEvent>
		<endEvent id="endevent1" name="End"></endEvent>
		<userTask id="ApprovalTask" name="Approval Task"
		          activiti:candidateUsers="${joinService.findUsers(execution)}" isForCompensation="true">
			<extensionElements>
				<activiti:formProperty id="joinApproved" name="Join Approved" type="enum">
					<activiti:value id="true" name="Approve"></activiti:value>
					<activiti:value id="false" name="Reject"></activiti:value>
				</activiti:formProperty>
			</extensionElements>
		</userTask>
		<sequenceFlow id="flow1" sourceRef="startevent1" targetRef="ApprovalTask"></sequenceFlow>
		<serviceTask id="AutoTask" name="Auto Task"
		             activiti:expression="${joinService.joinGroup(execution)}"></serviceTask>
		<sequenceFlow id="flow2" sourceRef="ApprovalTask" targetRef="AutoTask"></sequenceFlow>
		<sequenceFlow id="flow3" sourceRef="AutoTask" targetRef="endevent1"></sequenceFlow>
	</process>
</definitions>', 0);
INSERT INTO act_ge_bytearray (ID_, REV_, NAME_, DEPLOYMENT_ID_, BYTES_, GENERATED_) VALUES ('5002', 1, 'D:\openproject\spring-boot-activiti\target\classes\processes\join.bpmn20.xml', '5001', '<?xml version=''1.0'' encoding=''UTF-8''?>
<definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL"
             xmlns:activiti="http://activiti.org/bpmn"
             typeLanguage="http://www.w3.org/2001/XMLSchema" expressionLanguage="http://www.w3.org/1999/XPath"
             targetNamespace="http://www.activiti.org/test">
	<process id="joinProcess" name="Join process" isExecutable="true">
		<startEvent id="startevent1" name="Start">
			<extensionElements>
				<activiti:formProperty id="personId" name="person id" type="long"
				                       required="true"></activiti:formProperty>
				<activiti:formProperty id="compId" name="company Id" type="long"
				                       required="true"></activiti:formProperty>
			</extensionElements>
		</startEvent>
		<endEvent id="endevent1" name="End"></endEvent>
		<userTask id="ApprovalTask" name="Approval Task"
		          activiti:candidateUsers="${joinService.findUsers(execution)}" isForCompensation="true">
			<extensionElements>
				<activiti:formProperty id="joinApproved" name="Join Approved" type="enum">
					<activiti:value id="true" name="Approve"></activiti:value>
					<activiti:value id="false" name="Reject"></activiti:value>
				</activiti:formProperty>
			</extensionElements>
		</userTask>
		<sequenceFlow id="flow1" sourceRef="startevent1" targetRef="ApprovalTask"></sequenceFlow>
		<serviceTask id="AutoTask" name="Auto Task"
		             activiti:expression="${joinService.joinGroup(execution)}"></serviceTask>
		<sequenceFlow id="flow2" sourceRef="ApprovalTask" targetRef="AutoTask"></sequenceFlow>
		<sequenceFlow id="flow3" sourceRef="AutoTask" targetRef="endevent1"></sequenceFlow>
	</process>
</definitions>', 0);
INSERT INTO act_ge_bytearray (ID_, REV_, NAME_, DEPLOYMENT_ID_, BYTES_, GENERATED_) VALUES ('7502', 1, 'D:\workproject\morder2\bpm\target\classes\processes\join.bpmn20.xml', '7501', '<?xml version=''1.0'' encoding=''UTF-8''?>
<definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL"
             xmlns:activiti="http://activiti.org/bpmn"
             typeLanguage="http://www.w3.org/2001/XMLSchema" expressionLanguage="http://www.w3.org/1999/XPath"
             targetNamespace="http://www.activiti.org/test">
	<process id="joinProcess" name="Join process" isExecutable="true">
		<startEvent id="startevent1" name="Start">
			<extensionElements>
				<activiti:formProperty id="personId" name="person id" type="long"
				                       required="true"></activiti:formProperty>
				<activiti:formProperty id="compId" name="company Id" type="long"
				                       required="true"></activiti:formProperty>
			</extensionElements>
		</startEvent>
		<endEvent id="endevent1" name="End"></endEvent>
		<userTask id="ApprovalTask" name="Approval Task"
		          activiti:candidateUsers="${joinService.findUsers(execution)}" isForCompensation="true">
			<extensionElements>
				<activiti:formProperty id="joinApproved" name="Join Approved" type="enum">
					<activiti:value id="true" name="Approve"></activiti:value>
					<activiti:value id="false" name="Reject"></activiti:value>
				</activiti:formProperty>
			</extensionElements>
		</userTask>
		<sequenceFlow id="flow1" sourceRef="startevent1" targetRef="ApprovalTask"></sequenceFlow>
		<serviceTask id="AutoTask" name="Auto Task"
		             activiti:expression="${joinService.joinGroup(execution)}"></serviceTask>
		<sequenceFlow id="flow2" sourceRef="ApprovalTask" targetRef="AutoTask"></sequenceFlow>
		<sequenceFlow id="flow3" sourceRef="AutoTask" targetRef="endevent1"></sequenceFlow>
	</process>
</definitions>', 0);
DROP TABLE act_ge_property;
CREATE TABLE act_ge_property (NAME_ varchar(64) COLLATE utf8_bin NOT NULL, VALUE_ varchar(300) COLLATE utf8_bin, REV_ int, PRIMARY KEY (NAME_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_ge_property (NAME_, VALUE_, REV_) VALUES ('next.dbid', '17501', 8);
INSERT INTO act_ge_property (NAME_, VALUE_, REV_) VALUES ('schema.history', 'create(5.22.0.0)', 1);
INSERT INTO act_ge_property (NAME_, VALUE_, REV_) VALUES ('schema.version', '5.22.0.0', 1);
DROP TABLE act_hi_actinst;
CREATE TABLE act_hi_actinst (ID_ varchar(64) COLLATE utf8_bin NOT NULL, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin NOT NULL, PROC_INST_ID_ varchar(64) COLLATE utf8_bin NOT NULL, EXECUTION_ID_ varchar(64) COLLATE utf8_bin NOT NULL, ACT_ID_ varchar(255) COLLATE utf8_bin NOT NULL, TASK_ID_ varchar(64) COLLATE utf8_bin, CALL_PROC_INST_ID_ varchar(64) COLLATE utf8_bin, ACT_NAME_ varchar(255) COLLATE utf8_bin, ACT_TYPE_ varchar(255) COLLATE utf8_bin NOT NULL, ASSIGNEE_ varchar(255) COLLATE utf8_bin, START_TIME_ datetime(3) NOT NULL, END_TIME_ datetime(3), DURATION_ bigint, TENANT_ID_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_IDX_HI_ACT_INST_START (START_TIME_), INDEX ACT_IDX_HI_ACT_INST_END (END_TIME_), INDEX ACT_IDX_HI_ACT_INST_PROCINST (PROC_INST_ID_, ACT_ID_), INDEX ACT_IDX_HI_ACT_INST_EXEC (EXECUTION_ID_, ACT_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_hi_actinst (ID_, PROC_DEF_ID_, PROC_INST_ID_, EXECUTION_ID_, ACT_ID_, TASK_ID_, CALL_PROC_INST_ID_, ACT_NAME_, ACT_TYPE_, ASSIGNEE_, START_TIME_, END_TIME_, DURATION_, TENANT_ID_) VALUES ('10002', 'joinProcess:3:7503', '10001', '10001', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-12-24 14:01:57', '2016-12-24 14:01:57', 10, '');
INSERT INTO act_hi_actinst (ID_, PROC_DEF_ID_, PROC_INST_ID_, EXECUTION_ID_, ACT_ID_, TASK_ID_, CALL_PROC_INST_ID_, ACT_NAME_, ACT_TYPE_, ASSIGNEE_, START_TIME_, END_TIME_, DURATION_, TENANT_ID_) VALUES ('10005', 'joinProcess:3:7503', '10001', '10001', 'ApprovalTask', '10006', null, 'Approval Task', 'userTask', null, '2016-12-24 14:01:57', null, null, '');
INSERT INTO act_hi_actinst (ID_, PROC_DEF_ID_, PROC_INST_ID_, EXECUTION_ID_, ACT_ID_, TASK_ID_, CALL_PROC_INST_ID_, ACT_NAME_, ACT_TYPE_, ASSIGNEE_, START_TIME_, END_TIME_, DURATION_, TENANT_ID_) VALUES ('15002', 'joinProcess:4:12503', '15001', '15001', 'startevent1', null, null, 'Start', 'startEvent', null, '2017-04-02 14:58:30', '2017-04-02 14:58:30', 8, '');
INSERT INTO act_hi_actinst (ID_, PROC_DEF_ID_, PROC_INST_ID_, EXECUTION_ID_, ACT_ID_, TASK_ID_, CALL_PROC_INST_ID_, ACT_NAME_, ACT_TYPE_, ASSIGNEE_, START_TIME_, END_TIME_, DURATION_, TENANT_ID_) VALUES ('15005', 'joinProcess:4:12503', '15001', '15001', 'ApprovalTask', '15006', null, 'Approval Task', 'userTask', null, '2017-04-02 14:58:30', null, null, '');
INSERT INTO act_hi_actinst (ID_, PROC_DEF_ID_, PROC_INST_ID_, EXECUTION_ID_, ACT_ID_, TASK_ID_, CALL_PROC_INST_ID_, ACT_NAME_, ACT_TYPE_, ASSIGNEE_, START_TIME_, END_TIME_, DURATION_, TENANT_ID_) VALUES ('15012', 'joinProcess:4:12503', '15011', '15011', 'startevent1', null, null, 'Start', 'startEvent', null, '2017-04-02 14:59:39', '2017-04-02 14:59:39', 0, '');
INSERT INTO act_hi_actinst (ID_, PROC_DEF_ID_, PROC_INST_ID_, EXECUTION_ID_, ACT_ID_, TASK_ID_, CALL_PROC_INST_ID_, ACT_NAME_, ACT_TYPE_, ASSIGNEE_, START_TIME_, END_TIME_, DURATION_, TENANT_ID_) VALUES ('15015', 'joinProcess:4:12503', '15011', '15011', 'ApprovalTask', '15016', null, 'Approval Task', 'userTask', null, '2017-04-02 14:59:39', null, null, '');
INSERT INTO act_hi_actinst (ID_, PROC_DEF_ID_, PROC_INST_ID_, EXECUTION_ID_, ACT_ID_, TASK_ID_, CALL_PROC_INST_ID_, ACT_NAME_, ACT_TYPE_, ASSIGNEE_, START_TIME_, END_TIME_, DURATION_, TENANT_ID_) VALUES ('5005', 'joinProcess:2:5003', '5004', '5004', 'startevent1', null, null, 'Start', 'startEvent', null, '2016-12-24 13:49:03', '2016-12-24 13:49:03', 11, '');
INSERT INTO act_hi_actinst (ID_, PROC_DEF_ID_, PROC_INST_ID_, EXECUTION_ID_, ACT_ID_, TASK_ID_, CALL_PROC_INST_ID_, ACT_NAME_, ACT_TYPE_, ASSIGNEE_, START_TIME_, END_TIME_, DURATION_, TENANT_ID_) VALUES ('5008', 'joinProcess:2:5003', '5004', '5004', 'ApprovalTask', '5009', null, 'Approval Task', 'userTask', null, '2016-12-24 13:49:03', null, null, '');
DROP TABLE act_hi_attachment;
CREATE TABLE act_hi_attachment (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, USER_ID_ varchar(255) COLLATE utf8_bin, NAME_ varchar(255) COLLATE utf8_bin, DESCRIPTION_ varchar(4000) COLLATE utf8_bin, TYPE_ varchar(255) COLLATE utf8_bin, TASK_ID_ varchar(64) COLLATE utf8_bin, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, URL_ varchar(4000) COLLATE utf8_bin, CONTENT_ID_ varchar(64) COLLATE utf8_bin, TIME_ datetime(3), PRIMARY KEY (ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_hi_comment;
CREATE TABLE act_hi_comment (ID_ varchar(64) COLLATE utf8_bin NOT NULL, TYPE_ varchar(255) COLLATE utf8_bin, TIME_ datetime(3) NOT NULL, USER_ID_ varchar(255) COLLATE utf8_bin, TASK_ID_ varchar(64) COLLATE utf8_bin, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, ACTION_ varchar(255) COLLATE utf8_bin, MESSAGE_ varchar(4000) COLLATE utf8_bin, FULL_MSG_ longblob, PRIMARY KEY (ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_hi_detail;
CREATE TABLE act_hi_detail (ID_ varchar(64) COLLATE utf8_bin NOT NULL, TYPE_ varchar(255) COLLATE utf8_bin NOT NULL, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, EXECUTION_ID_ varchar(64) COLLATE utf8_bin, TASK_ID_ varchar(64) COLLATE utf8_bin, ACT_INST_ID_ varchar(64) COLLATE utf8_bin, NAME_ varchar(255) COLLATE utf8_bin NOT NULL, VAR_TYPE_ varchar(255) COLLATE utf8_bin, REV_ int, TIME_ datetime(3) NOT NULL, BYTEARRAY_ID_ varchar(64) COLLATE utf8_bin, DOUBLE_ double, LONG_ bigint, TEXT_ varchar(4000) COLLATE utf8_bin, TEXT2_ varchar(4000) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_IDX_HI_DETAIL_PROC_INST (PROC_INST_ID_), INDEX ACT_IDX_HI_DETAIL_ACT_INST (ACT_INST_ID_), INDEX ACT_IDX_HI_DETAIL_TIME (TIME_), INDEX ACT_IDX_HI_DETAIL_NAME (NAME_), INDEX ACT_IDX_HI_DETAIL_TASK_ID (TASK_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_hi_identitylink;
CREATE TABLE act_hi_identitylink (ID_ varchar(64) COLLATE utf8_bin NOT NULL, GROUP_ID_ varchar(255) COLLATE utf8_bin, TYPE_ varchar(255) COLLATE utf8_bin, USER_ID_ varchar(255) COLLATE utf8_bin, TASK_ID_ varchar(64) COLLATE utf8_bin, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_IDX_HI_IDENT_LNK_USER (USER_ID_), INDEX ACT_IDX_HI_IDENT_LNK_TASK (TASK_ID_), INDEX ACT_IDX_HI_IDENT_LNK_PROCINST (PROC_INST_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('10007', null, 'candidate', 'admin', '10006', null);
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('10008', null, 'participant', 'admin', null, '10001');
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('10009', null, 'candidate', 'wtr', '10006', null);
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('10010', null, 'participant', 'wtr', null, '10001');
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('15007', null, 'candidate', 'admin', '15006', null);
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('15008', null, 'participant', 'admin', null, '15001');
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('15009', null, 'candidate', 'wtr', '15006', null);
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('15010', null, 'participant', 'wtr', null, '15001');
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('15017', null, 'candidate', 'admin', '15016', null);
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('15018', null, 'participant', 'admin', null, '15011');
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('15019', null, 'candidate', 'wtr', '15016', null);
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('15020', null, 'participant', 'wtr', null, '15011');
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('5010', null, 'candidate', 'admin', '5009', null);
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('5011', null, 'participant', 'admin', null, '5004');
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('5012', null, 'candidate', 'wtr', '5009', null);
INSERT INTO act_hi_identitylink (ID_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_) VALUES ('5013', null, 'participant', 'wtr', null, '5004');
DROP TABLE act_hi_procinst;
CREATE TABLE act_hi_procinst (ID_ varchar(64) COLLATE utf8_bin NOT NULL, PROC_INST_ID_ varchar(64) COLLATE utf8_bin NOT NULL, BUSINESS_KEY_ varchar(255) COLLATE utf8_bin, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin NOT NULL, START_TIME_ datetime(3) NOT NULL, END_TIME_ datetime(3), DURATION_ bigint, START_USER_ID_ varchar(255) COLLATE utf8_bin, START_ACT_ID_ varchar(255) COLLATE utf8_bin, END_ACT_ID_ varchar(255) COLLATE utf8_bin, SUPER_PROCESS_INSTANCE_ID_ varchar(64) COLLATE utf8_bin, DELETE_REASON_ varchar(4000) COLLATE utf8_bin, TENANT_ID_ varchar(255) COLLATE utf8_bin, NAME_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_), CONSTRAINT PROC_INST_ID_ UNIQUE (PROC_INST_ID_), INDEX ACT_IDX_HI_PRO_INST_END (END_TIME_), INDEX ACT_IDX_HI_PRO_I_BUSKEY (BUSINESS_KEY_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_hi_procinst (ID_, PROC_INST_ID_, BUSINESS_KEY_, PROC_DEF_ID_, START_TIME_, END_TIME_, DURATION_, START_USER_ID_, START_ACT_ID_, END_ACT_ID_, SUPER_PROCESS_INSTANCE_ID_, DELETE_REASON_, TENANT_ID_, NAME_) VALUES ('10001', '10001', null, 'joinProcess:3:7503', '2016-12-24 14:01:57', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO act_hi_procinst (ID_, PROC_INST_ID_, BUSINESS_KEY_, PROC_DEF_ID_, START_TIME_, END_TIME_, DURATION_, START_USER_ID_, START_ACT_ID_, END_ACT_ID_, SUPER_PROCESS_INSTANCE_ID_, DELETE_REASON_, TENANT_ID_, NAME_) VALUES ('15001', '15001', null, 'joinProcess:4:12503', '2017-04-02 14:58:30', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO act_hi_procinst (ID_, PROC_INST_ID_, BUSINESS_KEY_, PROC_DEF_ID_, START_TIME_, END_TIME_, DURATION_, START_USER_ID_, START_ACT_ID_, END_ACT_ID_, SUPER_PROCESS_INSTANCE_ID_, DELETE_REASON_, TENANT_ID_, NAME_) VALUES ('15011', '15011', null, 'joinProcess:4:12503', '2017-04-02 14:59:39', null, null, null, 'startevent1', null, null, null, '', null);
INSERT INTO act_hi_procinst (ID_, PROC_INST_ID_, BUSINESS_KEY_, PROC_DEF_ID_, START_TIME_, END_TIME_, DURATION_, START_USER_ID_, START_ACT_ID_, END_ACT_ID_, SUPER_PROCESS_INSTANCE_ID_, DELETE_REASON_, TENANT_ID_, NAME_) VALUES ('5004', '5004', null, 'joinProcess:2:5003', '2016-12-24 13:49:03', null, null, null, 'startevent1', null, null, null, '', null);
DROP TABLE act_hi_taskinst;
CREATE TABLE act_hi_taskinst (ID_ varchar(64) COLLATE utf8_bin NOT NULL, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin, TASK_DEF_KEY_ varchar(255) COLLATE utf8_bin, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, EXECUTION_ID_ varchar(64) COLLATE utf8_bin, NAME_ varchar(255) COLLATE utf8_bin, PARENT_TASK_ID_ varchar(64) COLLATE utf8_bin, DESCRIPTION_ varchar(4000) COLLATE utf8_bin, OWNER_ varchar(255) COLLATE utf8_bin, ASSIGNEE_ varchar(255) COLLATE utf8_bin, START_TIME_ datetime(3) NOT NULL, CLAIM_TIME_ datetime(3), END_TIME_ datetime(3), DURATION_ bigint, DELETE_REASON_ varchar(4000) COLLATE utf8_bin, PRIORITY_ int, DUE_DATE_ datetime(3), FORM_KEY_ varchar(255) COLLATE utf8_bin, CATEGORY_ varchar(255) COLLATE utf8_bin, TENANT_ID_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_IDX_HI_TASK_INST_PROCINST (PROC_INST_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_hi_taskinst (ID_, PROC_DEF_ID_, TASK_DEF_KEY_, PROC_INST_ID_, EXECUTION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, OWNER_, ASSIGNEE_, START_TIME_, CLAIM_TIME_, END_TIME_, DURATION_, DELETE_REASON_, PRIORITY_, DUE_DATE_, FORM_KEY_, CATEGORY_, TENANT_ID_) VALUES ('10006', 'joinProcess:3:7503', 'ApprovalTask', '10001', '10001', 'Approval Task', null, null, null, null, '2016-12-24 14:01:57', null, null, null, null, 50, null, null, null, '');
INSERT INTO act_hi_taskinst (ID_, PROC_DEF_ID_, TASK_DEF_KEY_, PROC_INST_ID_, EXECUTION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, OWNER_, ASSIGNEE_, START_TIME_, CLAIM_TIME_, END_TIME_, DURATION_, DELETE_REASON_, PRIORITY_, DUE_DATE_, FORM_KEY_, CATEGORY_, TENANT_ID_) VALUES ('15006', 'joinProcess:4:12503', 'ApprovalTask', '15001', '15001', 'Approval Task', null, null, null, null, '2017-04-02 14:58:30', null, null, null, null, 50, null, null, null, '');
INSERT INTO act_hi_taskinst (ID_, PROC_DEF_ID_, TASK_DEF_KEY_, PROC_INST_ID_, EXECUTION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, OWNER_, ASSIGNEE_, START_TIME_, CLAIM_TIME_, END_TIME_, DURATION_, DELETE_REASON_, PRIORITY_, DUE_DATE_, FORM_KEY_, CATEGORY_, TENANT_ID_) VALUES ('15016', 'joinProcess:4:12503', 'ApprovalTask', '15011', '15011', 'Approval Task', null, null, null, null, '2017-04-02 14:59:39', null, null, null, null, 50, null, null, null, '');
INSERT INTO act_hi_taskinst (ID_, PROC_DEF_ID_, TASK_DEF_KEY_, PROC_INST_ID_, EXECUTION_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, OWNER_, ASSIGNEE_, START_TIME_, CLAIM_TIME_, END_TIME_, DURATION_, DELETE_REASON_, PRIORITY_, DUE_DATE_, FORM_KEY_, CATEGORY_, TENANT_ID_) VALUES ('5009', 'joinProcess:2:5003', 'ApprovalTask', '5004', '5004', 'Approval Task', null, null, null, null, '2016-12-24 13:49:03', null, null, null, null, 50, null, null, null, '');
DROP TABLE act_hi_varinst;
CREATE TABLE act_hi_varinst (ID_ varchar(64) COLLATE utf8_bin NOT NULL, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, EXECUTION_ID_ varchar(64) COLLATE utf8_bin, TASK_ID_ varchar(64) COLLATE utf8_bin, NAME_ varchar(255) COLLATE utf8_bin NOT NULL, VAR_TYPE_ varchar(100) COLLATE utf8_bin, REV_ int, BYTEARRAY_ID_ varchar(64) COLLATE utf8_bin, DOUBLE_ double, LONG_ bigint, TEXT_ varchar(4000) COLLATE utf8_bin, TEXT2_ varchar(4000) COLLATE utf8_bin, CREATE_TIME_ datetime(3), LAST_UPDATED_TIME_ datetime(3), PRIMARY KEY (ID_), INDEX ACT_IDX_HI_PROCVAR_PROC_INST (PROC_INST_ID_), INDEX ACT_IDX_HI_PROCVAR_NAME_TYPE (NAME_, VAR_TYPE_), INDEX ACT_IDX_HI_PROCVAR_TASK_ID (TASK_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('10003', '10001', '10001', null, 'compId', 'long', 0, null, null, 1, '1', null, '2016-12-24 14:01:57', '2016-12-24 14:01:57');
INSERT INTO act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('10004', '10001', '10001', null, 'personId', 'long', 0, null, null, 2, '2', null, '2016-12-24 14:01:57', '2016-12-24 14:01:57');
INSERT INTO act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('15003', '15001', '15001', null, 'compId', 'long', 0, null, null, 1, '1', null, '2017-04-02 14:58:30', '2017-04-02 14:58:30');
INSERT INTO act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('15004', '15001', '15001', null, 'personId', 'long', 0, null, null, 3, '3', null, '2017-04-02 14:58:30', '2017-04-02 14:58:30');
INSERT INTO act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('15013', '15011', '15011', null, 'compId', 'long', 0, null, null, 1, '1', null, '2017-04-02 14:59:39', '2017-04-02 14:59:39');
INSERT INTO act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('15014', '15011', '15011', null, 'personId', 'long', 0, null, null, 3, '3', null, '2017-04-02 14:59:39', '2017-04-02 14:59:39');
INSERT INTO act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('5006', '5004', '5004', null, 'compId', 'long', 0, null, null, 1, '1', null, '2016-12-24 13:49:03', '2016-12-24 13:49:03');
INSERT INTO act_hi_varinst (ID_, PROC_INST_ID_, EXECUTION_ID_, TASK_ID_, NAME_, VAR_TYPE_, REV_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_, CREATE_TIME_, LAST_UPDATED_TIME_) VALUES ('5007', '5004', '5004', null, 'personId', 'long', 0, null, null, 2, '2', null, '2016-12-24 13:49:03', '2016-12-24 13:49:03');
DROP TABLE act_id_group;
CREATE TABLE act_id_group (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, NAME_ varchar(255) COLLATE utf8_bin, TYPE_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_id_info;
CREATE TABLE act_id_info (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, USER_ID_ varchar(64) COLLATE utf8_bin, TYPE_ varchar(64) COLLATE utf8_bin, KEY_ varchar(255) COLLATE utf8_bin, VALUE_ varchar(255) COLLATE utf8_bin, PASSWORD_ longblob, PARENT_ID_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_id_membership;
CREATE TABLE act_id_membership (USER_ID_ varchar(64) COLLATE utf8_bin NOT NULL, GROUP_ID_ varchar(64) COLLATE utf8_bin NOT NULL, PRIMARY KEY (USER_ID_, GROUP_ID_), INDEX ACT_FK_MEMB_GROUP (GROUP_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_id_user;
CREATE TABLE act_id_user (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, FIRST_ varchar(255) COLLATE utf8_bin, LAST_ varchar(255) COLLATE utf8_bin, EMAIL_ varchar(255) COLLATE utf8_bin, PWD_ varchar(255) COLLATE utf8_bin, PICTURE_ID_ varchar(64) COLLATE utf8_bin, PRIMARY KEY (ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_procdef_info;
CREATE TABLE act_procdef_info (ID_ varchar(64) COLLATE utf8_bin NOT NULL, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, INFO_JSON_ID_ varchar(64) COLLATE utf8_bin, PRIMARY KEY (ID_), CONSTRAINT ACT_UNIQ_INFO_PROCDEF UNIQUE (PROC_DEF_ID_), INDEX ACT_IDX_INFO_PROCDEF (PROC_DEF_ID_), INDEX ACT_FK_INFO_JSON_BA (INFO_JSON_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_re_deployment;
CREATE TABLE act_re_deployment (ID_ varchar(64) COLLATE utf8_bin NOT NULL, NAME_ varchar(255) COLLATE utf8_bin, CATEGORY_ varchar(255) COLLATE utf8_bin, TENANT_ID_ varchar(255) COLLATE utf8_bin, DEPLOY_TIME_ timestamp(3), PRIMARY KEY (ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_re_deployment (ID_, NAME_, CATEGORY_, TENANT_ID_, DEPLOY_TIME_) VALUES ('12501', 'SpringAutoDeployment', null, '', '2016-12-27 16:59:23');
INSERT INTO act_re_deployment (ID_, NAME_, CATEGORY_, TENANT_ID_, DEPLOY_TIME_) VALUES ('2501', 'SpringAutoDeployment', null, '', '2016-12-24 11:42:26');
INSERT INTO act_re_deployment (ID_, NAME_, CATEGORY_, TENANT_ID_, DEPLOY_TIME_) VALUES ('5001', 'SpringAutoDeployment', null, '', '2016-12-24 13:48:40');
INSERT INTO act_re_deployment (ID_, NAME_, CATEGORY_, TENANT_ID_, DEPLOY_TIME_) VALUES ('7501', 'SpringAutoDeployment', null, '', '2016-12-24 13:49:47');
DROP TABLE act_re_model;
CREATE TABLE act_re_model (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, NAME_ varchar(255) COLLATE utf8_bin, KEY_ varchar(255) COLLATE utf8_bin, CATEGORY_ varchar(255) COLLATE utf8_bin, CREATE_TIME_ timestamp(3), LAST_UPDATE_TIME_ timestamp(3), VERSION_ int, META_INFO_ varchar(4000) COLLATE utf8_bin, DEPLOYMENT_ID_ varchar(64) COLLATE utf8_bin, EDITOR_SOURCE_VALUE_ID_ varchar(64) COLLATE utf8_bin, EDITOR_SOURCE_EXTRA_VALUE_ID_ varchar(64) COLLATE utf8_bin, TENANT_ID_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_FK_MODEL_SOURCE (EDITOR_SOURCE_VALUE_ID_), INDEX ACT_FK_MODEL_SOURCE_EXTRA (EDITOR_SOURCE_EXTRA_VALUE_ID_), INDEX ACT_FK_MODEL_DEPLOYMENT (DEPLOYMENT_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_re_procdef;
CREATE TABLE act_re_procdef (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, CATEGORY_ varchar(255) COLLATE utf8_bin, NAME_ varchar(255) COLLATE utf8_bin, KEY_ varchar(255) COLLATE utf8_bin NOT NULL, VERSION_ int NOT NULL, DEPLOYMENT_ID_ varchar(64) COLLATE utf8_bin, RESOURCE_NAME_ varchar(4000) COLLATE utf8_bin, DGRM_RESOURCE_NAME_ varchar(4000) COLLATE utf8_bin, DESCRIPTION_ varchar(4000) COLLATE utf8_bin, HAS_START_FORM_KEY_ tinyint, HAS_GRAPHICAL_NOTATION_ tinyint, SUSPENSION_STATE_ int, TENANT_ID_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_), CONSTRAINT ACT_UNIQ_PROCDEF UNIQUE (KEY_, VERSION_, TENANT_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_re_procdef (ID_, REV_, CATEGORY_, NAME_, KEY_, VERSION_, DEPLOYMENT_ID_, RESOURCE_NAME_, DGRM_RESOURCE_NAME_, DESCRIPTION_, HAS_START_FORM_KEY_, HAS_GRAPHICAL_NOTATION_, SUSPENSION_STATE_, TENANT_ID_) VALUES ('joinProcess:1:2503', 1, 'http://www.activiti.org/test', 'Join process', 'joinProcess', 1, '2501', 'D:\workproject\morder2\bpm\target\classes\processes\join.bpmn20.xml', null, null, 0, 0, 1, '');
INSERT INTO act_re_procdef (ID_, REV_, CATEGORY_, NAME_, KEY_, VERSION_, DEPLOYMENT_ID_, RESOURCE_NAME_, DGRM_RESOURCE_NAME_, DESCRIPTION_, HAS_START_FORM_KEY_, HAS_GRAPHICAL_NOTATION_, SUSPENSION_STATE_, TENANT_ID_) VALUES ('joinProcess:2:5003', 1, 'http://www.activiti.org/test', 'Join process', 'joinProcess', 2, '5001', 'D:\openproject\spring-boot-activiti\target\classes\processes\join.bpmn20.xml', null, null, 0, 0, 1, '');
INSERT INTO act_re_procdef (ID_, REV_, CATEGORY_, NAME_, KEY_, VERSION_, DEPLOYMENT_ID_, RESOURCE_NAME_, DGRM_RESOURCE_NAME_, DESCRIPTION_, HAS_START_FORM_KEY_, HAS_GRAPHICAL_NOTATION_, SUSPENSION_STATE_, TENANT_ID_) VALUES ('joinProcess:3:7503', 1, 'http://www.activiti.org/test', 'Join process', 'joinProcess', 3, '7501', 'D:\workproject\morder2\bpm\target\classes\processes\join.bpmn20.xml', null, null, 0, 0, 1, '');
INSERT INTO act_re_procdef (ID_, REV_, CATEGORY_, NAME_, KEY_, VERSION_, DEPLOYMENT_ID_, RESOURCE_NAME_, DGRM_RESOURCE_NAME_, DESCRIPTION_, HAS_START_FORM_KEY_, HAS_GRAPHICAL_NOTATION_, SUSPENSION_STATE_, TENANT_ID_) VALUES ('joinProcess:4:12503', 1, 'http://www.activiti.org/test', 'Join process', 'joinProcess', 4, '12501', 'D:\workproject\morder2\bpm\target\classes\processes\join.bpmn20.xml', null, null, 0, 0, 1, '');
DROP TABLE act_ru_event_subscr;
CREATE TABLE act_ru_event_subscr (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, EVENT_TYPE_ varchar(255) COLLATE utf8_bin NOT NULL, EVENT_NAME_ varchar(255) COLLATE utf8_bin, EXECUTION_ID_ varchar(64) COLLATE utf8_bin, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, ACTIVITY_ID_ varchar(64) COLLATE utf8_bin, CONFIGURATION_ varchar(255) COLLATE utf8_bin, CREATED_ timestamp(3) DEFAULT 'CURRENT_TIMESTAMP(3)' NOT NULL, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin, TENANT_ID_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_IDX_EVENT_SUBSCR_CONFIG_ (CONFIGURATION_), INDEX ACT_FK_EVENT_EXEC (EXECUTION_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_ru_execution;
CREATE TABLE act_ru_execution (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, BUSINESS_KEY_ varchar(255) COLLATE utf8_bin, PARENT_ID_ varchar(64) COLLATE utf8_bin, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin, SUPER_EXEC_ varchar(64) COLLATE utf8_bin, ACT_ID_ varchar(255) COLLATE utf8_bin, IS_ACTIVE_ tinyint, IS_CONCURRENT_ tinyint, IS_SCOPE_ tinyint, IS_EVENT_SCOPE_ tinyint, SUSPENSION_STATE_ int, CACHED_ENT_STATE_ int, TENANT_ID_ varchar(255) COLLATE utf8_bin, NAME_ varchar(255) COLLATE utf8_bin, LOCK_TIME_ timestamp(3), PRIMARY KEY (ID_), INDEX ACT_IDX_EXEC_BUSKEY (BUSINESS_KEY_), INDEX ACT_FK_EXE_PROCINST (PROC_INST_ID_), INDEX ACT_FK_EXE_PARENT (PARENT_ID_), INDEX ACT_FK_EXE_SUPER (SUPER_EXEC_), INDEX ACT_FK_EXE_PROCDEF (PROC_DEF_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_ru_execution (ID_, REV_, PROC_INST_ID_, BUSINESS_KEY_, PARENT_ID_, PROC_DEF_ID_, SUPER_EXEC_, ACT_ID_, IS_ACTIVE_, IS_CONCURRENT_, IS_SCOPE_, IS_EVENT_SCOPE_, SUSPENSION_STATE_, CACHED_ENT_STATE_, TENANT_ID_, NAME_, LOCK_TIME_) VALUES ('10001', 1, '10001', null, null, 'joinProcess:3:7503', null, 'ApprovalTask', 1, 0, 1, 0, 1, 2, '', null, null);
INSERT INTO act_ru_execution (ID_, REV_, PROC_INST_ID_, BUSINESS_KEY_, PARENT_ID_, PROC_DEF_ID_, SUPER_EXEC_, ACT_ID_, IS_ACTIVE_, IS_CONCURRENT_, IS_SCOPE_, IS_EVENT_SCOPE_, SUSPENSION_STATE_, CACHED_ENT_STATE_, TENANT_ID_, NAME_, LOCK_TIME_) VALUES ('15001', 1, '15001', null, null, 'joinProcess:4:12503', null, 'ApprovalTask', 1, 0, 1, 0, 1, 2, '', null, null);
INSERT INTO act_ru_execution (ID_, REV_, PROC_INST_ID_, BUSINESS_KEY_, PARENT_ID_, PROC_DEF_ID_, SUPER_EXEC_, ACT_ID_, IS_ACTIVE_, IS_CONCURRENT_, IS_SCOPE_, IS_EVENT_SCOPE_, SUSPENSION_STATE_, CACHED_ENT_STATE_, TENANT_ID_, NAME_, LOCK_TIME_) VALUES ('15011', 1, '15011', null, null, 'joinProcess:4:12503', null, 'ApprovalTask', 1, 0, 1, 0, 1, 2, '', null, null);
INSERT INTO act_ru_execution (ID_, REV_, PROC_INST_ID_, BUSINESS_KEY_, PARENT_ID_, PROC_DEF_ID_, SUPER_EXEC_, ACT_ID_, IS_ACTIVE_, IS_CONCURRENT_, IS_SCOPE_, IS_EVENT_SCOPE_, SUSPENSION_STATE_, CACHED_ENT_STATE_, TENANT_ID_, NAME_, LOCK_TIME_) VALUES ('5004', 1, '5004', null, null, 'joinProcess:2:5003', null, 'ApprovalTask', 1, 0, 1, 0, 1, 2, '', null, null);
DROP TABLE act_ru_identitylink;
CREATE TABLE act_ru_identitylink (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, GROUP_ID_ varchar(255) COLLATE utf8_bin, TYPE_ varchar(255) COLLATE utf8_bin, USER_ID_ varchar(255) COLLATE utf8_bin, TASK_ID_ varchar(64) COLLATE utf8_bin, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_IDX_IDENT_LNK_USER (USER_ID_), INDEX ACT_IDX_IDENT_LNK_GROUP (GROUP_ID_), INDEX ACT_IDX_ATHRZ_PROCEDEF (PROC_DEF_ID_), INDEX ACT_FK_TSKASS_TASK (TASK_ID_), INDEX ACT_FK_IDL_PROCINST (PROC_INST_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('10007', 1, null, 'candidate', 'admin', '10006', null, null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('10008', 1, null, 'participant', 'admin', null, '10001', null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('10009', 1, null, 'candidate', 'wtr', '10006', null, null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('10010', 1, null, 'participant', 'wtr', null, '10001', null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('15007', 1, null, 'candidate', 'admin', '15006', null, null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('15008', 1, null, 'participant', 'admin', null, '15001', null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('15009', 1, null, 'candidate', 'wtr', '15006', null, null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('15010', 1, null, 'participant', 'wtr', null, '15001', null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('15017', 1, null, 'candidate', 'admin', '15016', null, null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('15018', 1, null, 'participant', 'admin', null, '15011', null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('15019', 1, null, 'candidate', 'wtr', '15016', null, null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('15020', 1, null, 'participant', 'wtr', null, '15011', null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('5010', 1, null, 'candidate', 'admin', '5009', null, null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('5011', 1, null, 'participant', 'admin', null, '5004', null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('5012', 1, null, 'candidate', 'wtr', '5009', null, null);
INSERT INTO act_ru_identitylink (ID_, REV_, GROUP_ID_, TYPE_, USER_ID_, TASK_ID_, PROC_INST_ID_, PROC_DEF_ID_) VALUES ('5013', 1, null, 'participant', 'wtr', null, '5004', null);
DROP TABLE act_ru_job;
CREATE TABLE act_ru_job (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, TYPE_ varchar(255) COLLATE utf8_bin NOT NULL, LOCK_EXP_TIME_ timestamp(3), LOCK_OWNER_ varchar(255) COLLATE utf8_bin, EXCLUSIVE_ tinyint(1), EXECUTION_ID_ varchar(64) COLLATE utf8_bin, PROCESS_INSTANCE_ID_ varchar(64) COLLATE utf8_bin, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin, RETRIES_ int, EXCEPTION_STACK_ID_ varchar(64) COLLATE utf8_bin, EXCEPTION_MSG_ varchar(4000) COLLATE utf8_bin, DUEDATE_ timestamp(3), REPEAT_ varchar(255) COLLATE utf8_bin, HANDLER_TYPE_ varchar(255) COLLATE utf8_bin, HANDLER_CFG_ varchar(4000) COLLATE utf8_bin, TENANT_ID_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_FK_JOB_EXCEPTION (EXCEPTION_STACK_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE act_ru_task;
CREATE TABLE act_ru_task (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, EXECUTION_ID_ varchar(64) COLLATE utf8_bin, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, PROC_DEF_ID_ varchar(64) COLLATE utf8_bin, NAME_ varchar(255) COLLATE utf8_bin, PARENT_TASK_ID_ varchar(64) COLLATE utf8_bin, DESCRIPTION_ varchar(4000) COLLATE utf8_bin, TASK_DEF_KEY_ varchar(255) COLLATE utf8_bin, OWNER_ varchar(255) COLLATE utf8_bin, ASSIGNEE_ varchar(255) COLLATE utf8_bin, DELEGATION_ varchar(64) COLLATE utf8_bin, PRIORITY_ int, CREATE_TIME_ timestamp(3), DUE_DATE_ datetime(3), CATEGORY_ varchar(255) COLLATE utf8_bin, SUSPENSION_STATE_ int, TENANT_ID_ varchar(255) COLLATE utf8_bin, FORM_KEY_ varchar(255) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_IDX_TASK_CREATE (CREATE_TIME_), INDEX ACT_FK_TASK_EXE (EXECUTION_ID_), INDEX ACT_FK_TASK_PROCINST (PROC_INST_ID_), INDEX ACT_FK_TASK_PROCDEF (PROC_DEF_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_) VALUES ('10006', 1, '10001', '10001', 'joinProcess:3:7503', 'Approval Task', null, null, 'ApprovalTask', null, null, null, 50, '2016-12-24 14:01:57', null, null, 1, '', null);
INSERT INTO act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_) VALUES ('15006', 1, '15001', '15001', 'joinProcess:4:12503', 'Approval Task', null, null, 'ApprovalTask', null, null, null, 50, '2017-04-02 14:58:30', null, null, 1, '', null);
INSERT INTO act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_) VALUES ('15016', 1, '15011', '15011', 'joinProcess:4:12503', 'Approval Task', null, null, 'ApprovalTask', null, null, null, 50, '2017-04-02 14:59:39', null, null, 1, '', null);
INSERT INTO act_ru_task (ID_, REV_, EXECUTION_ID_, PROC_INST_ID_, PROC_DEF_ID_, NAME_, PARENT_TASK_ID_, DESCRIPTION_, TASK_DEF_KEY_, OWNER_, ASSIGNEE_, DELEGATION_, PRIORITY_, CREATE_TIME_, DUE_DATE_, CATEGORY_, SUSPENSION_STATE_, TENANT_ID_, FORM_KEY_) VALUES ('5009', 1, '5004', '5004', 'joinProcess:2:5003', 'Approval Task', null, null, 'ApprovalTask', null, null, null, 50, '2016-12-24 13:49:03', null, null, 1, '', null);
DROP TABLE act_ru_variable;
CREATE TABLE act_ru_variable (ID_ varchar(64) COLLATE utf8_bin NOT NULL, REV_ int, TYPE_ varchar(255) COLLATE utf8_bin NOT NULL, NAME_ varchar(255) COLLATE utf8_bin NOT NULL, EXECUTION_ID_ varchar(64) COLLATE utf8_bin, PROC_INST_ID_ varchar(64) COLLATE utf8_bin, TASK_ID_ varchar(64) COLLATE utf8_bin, BYTEARRAY_ID_ varchar(64) COLLATE utf8_bin, DOUBLE_ double, LONG_ bigint, TEXT_ varchar(4000) COLLATE utf8_bin, TEXT2_ varchar(4000) COLLATE utf8_bin, PRIMARY KEY (ID_), INDEX ACT_IDX_VARIABLE_TASK_ID (TASK_ID_), INDEX ACT_FK_VAR_EXE (EXECUTION_ID_), INDEX ACT_FK_VAR_PROCINST (PROC_INST_ID_), INDEX ACT_FK_VAR_BYTEARRAY (BYTEARRAY_ID_)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO act_ru_variable (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('10003', 1, 'long', 'compId', '10001', '10001', null, null, null, 1, '1', null);
INSERT INTO act_ru_variable (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('10004', 1, 'long', 'personId', '10001', '10001', null, null, null, 2, '2', null);
INSERT INTO act_ru_variable (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('15003', 1, 'long', 'compId', '15001', '15001', null, null, null, 1, '1', null);
INSERT INTO act_ru_variable (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('15004', 1, 'long', 'personId', '15001', '15001', null, null, null, 3, '3', null);
INSERT INTO act_ru_variable (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('15013', 1, 'long', 'compId', '15011', '15011', null, null, null, 1, '1', null);
INSERT INTO act_ru_variable (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('15014', 1, 'long', 'personId', '15011', '15011', null, null, null, 3, '3', null);
INSERT INTO act_ru_variable (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('5006', 1, 'long', 'compId', '5004', '5004', null, null, null, 1, '1', null);
INSERT INTO act_ru_variable (ID_, REV_, TYPE_, NAME_, EXECUTION_ID_, PROC_INST_ID_, TASK_ID_, BYTEARRAY_ID_, DOUBLE_, LONG_, TEXT_, TEXT2_) VALUES ('5007', 1, 'long', 'personId', '5004', '5004', null, null, null, 2, '2', null);
DROP TABLE bmaddcosts;
CREATE TABLE bmaddcosts (idbmaddcosts int NOT NULL AUTO_INCREMENT, bmcosts decimal(16,2), bmcostsdesc varchar(300), bmorder_idbmorder int NOT NULL, compid int, PRIMARY KEY (idbmaddcosts), INDEX FK_Reference_15 (compid), INDEX fk_bmaddcosts_bmorder1 (bmorder_idbmorder)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='∂ÓÕ‚∑—”√';
DROP TABLE bmdelivery;
CREATE TABLE bmdelivery (idbmdelivery int NOT NULL AUTO_INCREMENT, compid int, bmdreccompany varchar(100) COMMENT ' ’ªıµ•Œª', bmdeliverynum varchar(45) COMMENT 'ÀÕªı±‡∫≈', bmdeliverydate date COMMENT 'ÀÕªı»’∆⁄', bmdeliveryuser varchar(45) COMMENT 'ÀÕªı»À', bmdeliveryuserid int COMMENT 'ÀÕªı»ÀID', PRIMARY KEY (idbmdelivery), INDEX FK_Reference_22 (compid)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ÀÕªı«Âµ•';
DROP TABLE bmmarker;
CREATE TABLE bmmarker (idbmmarker int NOT NULL AUTO_INCREMENT, compid int, bmmnum int, bmmtype int, PRIMARY KEY (idbmmarker), INDEX FK_Reference_11 (compid)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE bmorder;
CREATE TABLE bmorder (idbmorder int NOT NULL AUTO_INCREMENT, bmcusname varchar(100) COMMENT 'øÕªß√˚≥∆', bmordernum varchar(45) COMMENT '∂©µ•±‡∫≈', bmbillingdate date COMMENT 'ø™µ•»’∆⁄', bmdeliverydate date COMMENT 'Ωªªı»’∆⁄', bmpaymethod varchar(100) COMMENT '∏∂øÓ∑Ω Ω', bmcurrencytype int COMMENT '±“÷÷', bmaddcosts decimal(16,2) COMMENT '∂ÓÕ‚∑—”√', bmorderamount decimal(16,2) COMMENT '∂©µ•Ω∂Ó', bmcomments varchar(400) COMMENT '±∏◊¢', bmstatus int, bmcreateuserid int, bmdelivery_idbmdelivery int, tuser_iduser int, tcustomer_idcustomer int, idbmdelivery int, compid int, bmpacreq varchar(200), bmdenum varchar(45), PRIMARY KEY (idbmorder), INDEX fk_bmorder_tcustomer1_idx (tcustomer_idcustomer), INDEX FK_Reference_10 (idbmdelivery), INDEX FK_Reference_17 (compid), INDEX fk_bmorder_tuser1 (tuser_iduser)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='∂©µ•–≈œ¢';
DROP TABLE bmorderitem;
CREATE TABLE bmorderitem (idbmitem int NOT NULL AUTO_INCREMENT, bmiproname varchar(100) COMMENT '≤˙∆∑√˚≥∆', bmiprotype int COMMENT '≤˙∆∑¿‡–Õ', bmiprice decimal(16,3), bminum int COMMENT ' ˝¡ø', bmiamount decimal(16,2) COMMENT 'Ω∂Ó', bmiistax int COMMENT ' «∑Ò∫¨À∞', bmioutternum varchar(45) COMMENT 'Õ‚∑¢±‡∫≈', bmorderitemcol varchar(45) COMMENT '≤˙∆∑πÊ∏Ò', bmorder_idbmorder int NOT NULL, compid int, bmipacreq varchar(200), bmiunit varchar(45), bmiremark varchar(450), PRIMARY KEY (idbmitem), INDEX FK_Reference_16 (compid), INDEX fk_bmorderitem_bmorder1 (bmorder_idbmorder)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='∂©µ•œÓ';
DROP TABLE comp;
CREATE TABLE comp (comp_id bigint NOT NULL AUTO_INCREMENT, comp_name varchar(255), PRIMARY KEY (comp_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO comp (comp_id, comp_name) VALUES (1, 'great company');
DROP TABLE oauth_access_token;
CREATE TABLE oauth_access_token (create_time timestamp DEFAULT CURRENT_TIMESTAMP NULL, token_id varchar(255), token blob, authentication_id varchar(255), user_name varchar(255), client_id varchar(255), authentication blob, refresh_token varchar(255), INDEX token_id_index (token_id), INDEX authentication_id_index (authentication_id), INDEX user_name_index (user_name), INDEX client_id_index (client_id), INDEX refresh_token_index (refresh_token)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO oauth_access_token (create_time, token_id, token, authentication_id, user_name, client_id, authentication, refresh_token) VALUES ('2016-12-23 16:28:08', '1fa0db1a671d672d2fe7ce06256ac88b', '¨Ì sr Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ L additionalInformationt Ljava/util/Map;L 
expirationt Ljava/util/Date;L refreshTokent ?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L scopet Ljava/util/Set;L 	tokenTypet Ljava/lang/String;L valueq ~ xpsr java.util.Collections$EmptyMapY6ÖZ‹Á?  xpsr java.util.Datehj?KYt  xpw  Y≈APƒxsr Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑ L 
expirationq ~ xr Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens?
cT‘^ L valueq ~ xpt $e46286d9-ec0b-4892-8d81-1e5a37f99ff3sq ~ 	w  Y≈APƒxsr %java.util.Collections$UnmodifiableSet?í—èõ?U  xr ,java.util.Collections$UnmodifiableCollectionB ?À^? L ct Ljava/util/Collection;xpsr java.util.LinkedHashSetÿl◊Zï›*  xr java.util.HashSet∫DÖïñ∏?4  xpw   ?@     t read,write,trustxt bearert $2a6bb8aa-e632-48c7-a50c-23addc19c477', 'afc973066c5cba8b119ea6b919ecd353', 'user', 'rest-client', '¨Ì sr Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR L storedRequestt <Lorg/springframework/security/oauth2/provider/OAuth2Request;L userAuthenticationt 2Lorg/springframework/security/core/Authentication;xr Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd Z authenticatedL authoritiest Ljava/util/Collection;L detailst Ljava/lang/Object;xp sr &java.util.Collections$UnmodifiableList?%1µÏ? L listt Ljava/util/List;xr ,java.util.Collections$UnmodifiableCollectionB ?À^? L cq ~ xpsr java.util.ArrayListxÅ“ô«a? I sizexp   w   sr Borg.springframework.security.core.authority.SimpleGrantedAuthority      ? L rolet Ljava/lang/String;xpt 	ROLE_USERxq ~ psr :org.springframework.security.oauth2.provider.OAuth2Request        Z approvedL authoritiesq ~ L 
extensionst Ljava/util/Map;L redirectUriq ~ L refresht ;Lorg/springframework/security/oauth2/provider/TokenRequest;L resourceIdst Ljava/util/Set;L responseTypesq ~ xr 8org.springframework.security.oauth2.provider.BaseRequest6(z>£qi? L clientIdq ~ L requestParametersq ~ L scopeq ~ xpt rest-clientsr %java.util.Collections$UnmodifiableMapÒ•®˛t?B L mq ~ xpsr java.util.HashMap⁄¡?`? F 
loadFactorI 	thresholdxp?@     w      t 
grant_typet passwordt 	client_idt rest-clientt usernamet userxsr %java.util.Collections$UnmodifiableSet?í—èõ?U  xq ~ 	sr java.util.LinkedHashSetÿl◊Zï›*  xr java.util.HashSet∫DÖïñ∏?4  xpw   ?@     t read,write,trustxsq ~ %w   ?@      xsq ~ ?@      w       xppsq ~ %w   ?@      xsq ~ %w   ?@      xsr Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken      ? L credentialsq ~ L 	principalq ~ xq ~ sq ~ sq ~    w   q ~ xq ~ /sr java.util.LinkedHashMap4¿N\l¿˚ Z accessOrderxq ~ ?@     w      q ~ q ~ t client_secrett restq ~ q ~ q ~  q ~ !x psr 2org.springframework.security.core.userdetails.User      ? Z accountNonExpiredZ accountNonLockedZ credentialsNonExpiredZ enabledL authoritiesq ~ L passwordq ~ L usernameq ~ xpsq ~ "sr java.util.TreeSet›òPìïÌá[  xpsr Forg.springframework.security.core.userdetails.User$AuthorityComparator      ?  xpw   q ~ xpt user', 'ec02320b37367ac7315a29a6f8075616');
DROP TABLE oauth_approvals;
CREATE TABLE oauth_approvals (userId varchar(256), clientId varchar(256), scope varchar(256), status varchar(10), expiresAt timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, lastModifiedAt timestamp DEFAULT '0000-00-00 00:00:00') ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE oauth_client_details;
CREATE TABLE oauth_client_details (client_id varchar(255) NOT NULL, resource_ids varchar(255), client_secret varchar(255), scope varchar(255), authorized_grant_types varchar(255), web_server_redirect_uri varchar(255), authorities varchar(255), access_token_validity int, refresh_token_validity int, additional_information text, create_time timestamp DEFAULT CURRENT_TIMESTAMP NULL, archived tinyint(1) DEFAULT '0', trusted tinyint(1) DEFAULT '0', autoapprove varchar(255) DEFAULT 'false', PRIMARY KEY (client_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE oauth_code;
CREATE TABLE oauth_code (create_time timestamp DEFAULT CURRENT_TIMESTAMP NULL, code varchar(255), authentication blob, INDEX code_index (code)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE oauth_refresh_token;
CREATE TABLE oauth_refresh_token (create_time timestamp DEFAULT CURRENT_TIMESTAMP NULL, token_id varchar(255), token blob, authentication blob, INDEX token_id_index (token_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO oauth_refresh_token (create_time, token_id, token, authentication) VALUES ('2016-12-23 16:18:29', 'ec02320b37367ac7315a29a6f8075616', '¨Ì sr Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑ L 
expirationt Ljava/util/Date;xr Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens?
cT‘^ L valuet Ljava/lang/String;xpt $e46286d9-ec0b-4892-8d81-1e5a37f99ff3sr java.util.Datehj?KYt  xpw  Y≈APƒx', '¨Ì sr Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR L storedRequestt <Lorg/springframework/security/oauth2/provider/OAuth2Request;L userAuthenticationt 2Lorg/springframework/security/core/Authentication;xr Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd Z authenticatedL authoritiest Ljava/util/Collection;L detailst Ljava/lang/Object;xp sr &java.util.Collections$UnmodifiableList?%1µÏ? L listt Ljava/util/List;xr ,java.util.Collections$UnmodifiableCollectionB ?À^? L cq ~ xpsr java.util.ArrayListxÅ“ô«a? I sizexp   w   sr Borg.springframework.security.core.authority.SimpleGrantedAuthority      ? L rolet Ljava/lang/String;xpt 	ROLE_USERxq ~ psr :org.springframework.security.oauth2.provider.OAuth2Request        Z approvedL authoritiesq ~ L 
extensionst Ljava/util/Map;L redirectUriq ~ L refresht ;Lorg/springframework/security/oauth2/provider/TokenRequest;L resourceIdst Ljava/util/Set;L responseTypesq ~ xr 8org.springframework.security.oauth2.provider.BaseRequest6(z>£qi? L clientIdq ~ L requestParametersq ~ L scopeq ~ xpt rest-clientsr %java.util.Collections$UnmodifiableMapÒ•®˛t?B L mq ~ xpsr java.util.HashMap⁄¡?`? F 
loadFactorI 	thresholdxp?@     w      t 
grant_typet passwordt 	client_idt rest-clientt usernamet userxsr %java.util.Collections$UnmodifiableSet?í—èõ?U  xq ~ 	sr java.util.LinkedHashSetÿl◊Zï›*  xr java.util.HashSet∫DÖïñ∏?4  xpw   ?@     t read,write,trustxsq ~ %w   ?@      xsq ~ ?@      w       xppsq ~ %w   ?@      xsq ~ %w   ?@      xsr Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken      ? L credentialsq ~ L 	principalq ~ xq ~ sq ~ sq ~    w   q ~ xq ~ /sr java.util.LinkedHashMap4¿N\l¿˚ Z accessOrderxq ~ ?@     w      q ~ q ~ t client_secrett restq ~ q ~ q ~  q ~ !x psr 2org.springframework.security.core.userdetails.User      ? Z accountNonExpiredZ accountNonLockedZ credentialsNonExpiredZ enabledL authoritiesq ~ L passwordq ~ L usernameq ~ xpsq ~ "sr java.util.TreeSet›òPìïÌá[  xpsr Forg.springframework.security.core.userdetails.User$AuthorityComparator      ?  xpw   q ~ xpt user');
DROP TABLE persistent_logins;
CREATE TABLE persistent_logins (username varchar(64) NOT NULL, series varchar(64) NOT NULL, token varchar(64) NOT NULL, last_used timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, PRIMARY KEY (series)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE person;
CREATE TABLE person (person_id bigint NOT NULL AUTO_INCREMENT, person_name varchar(255), comp_compId bigint, PRIMARY KEY (person_id), INDEX FK_dl4ghw9rrqpfeh83gl9f1mqp2 (comp_compId)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO person (person_id, person_name, comp_compId) VALUES (1, 'wtr', 1);
INSERT INTO person (person_id, person_name, comp_compId) VALUES (2, 'wyf', null);
INSERT INTO person (person_id, person_name, comp_compId) VALUES (3, 'admin', 1);
DROP TABLE tcompany;
CREATE TABLE tcompany (compid int NOT NULL AUTO_INCREMENT, compname varchar(200), PRIMARY KEY (compid)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='π´Àæ';
INSERT INTO tcompany (compid, compname) VALUES (1, ' æ¿˝');
DROP TABLE tcustomer;
CREATE TABLE tcustomer (idcustomer int NOT NULL AUTO_INCREMENT, cname varchar(80) NOT NULL, caddress varchar(100), csettype int, cofficername varchar(45), cofficeruid int, comments varchar(400), tcustomerappend_idcusapp int NOT NULL, tcustomertax_idtcustax int NOT NULL, compid int, PRIMARY KEY (idcustomer, tcustomerappend_idcusapp, tcustomertax_idtcustax), INDEX FK_Reference_14 (compid), INDEX fk_tcustomer_tcustomerappend1 (tcustomerappend_idcusapp), INDEX fk_tcustomer_tcustomertax1 (tcustomertax_idtcustax)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='øÕªß±Ì';
DROP TABLE tcustomerappend;
CREATE TABLE tcustomerappend (idcusapp int NOT NULL AUTO_INCREMENT, compid int, cacontacts varchar(45), capositions int, catelphone varchar(45), camphone varchar(45), cafax varchar(45), carecaddress varchar(200), cacomments varchar(45), PRIMARY KEY (idcusapp), INDEX FK_Reference_12 (compid)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='øÕªß∏Ωº”–≈œ¢±Ì';
DROP TABLE tcustomertax;
CREATE TABLE tcustomertax (idtcustax int NOT NULL AUTO_INCREMENT, compid int, tctcompname varchar(100), tcbillingaddr varchar(100), tcbillingnum varchar(100), tcbankname varchar(50), tcbankaccount varchar(45), PRIMARY KEY (idtcustax), INDEX FK_Reference_13 (compid)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='øÕªßÀ∞–≈œ¢±Ì';
DROP TABLE toptlog;
CREATE TABLE toptlog (taolid int NOT NULL AUTO_INCREMENT, iduser int, compid int, topttime datetime, topttype int COMMENT '1:‘ˆº”
            2:…æ≥˝
            3:–ﬁ∏ƒ
            4£∫∆Ù”√
            5£∫…Û∫À
            6£∫Ω˚”√
            7£∫∑¢∑≈', toptdesc varchar(500), toptip varchar(30), topmethod varchar(300), topparam varchar(500), PRIMARY KEY (taolid), INDEX FK_Reference_19 (compid), INDEX FK_Reference_9 (iduser)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='≤Ÿ◊˜»’÷æ';
DROP TABLE trelunit;
CREATE TABLE trelunit (tuser_iduser int NOT NULL, tunits_idunit int NOT NULL, compid int, INDEX FK_Reference_20 (compid), INDEX fk_trelunit_tunits1 (tunits_idunit), INDEX fk_trelunit_tuser (tuser_iduser)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ª˙ππ»À‘±πÿœµ±Ì';
DROP TABLE tunits;
CREATE TABLE tunits (idunit int NOT NULL AUTO_INCREMENT, compid int, unitname varchar(45), pidunit varchar(45), PRIMARY KEY (idunit), INDEX FK_Reference_21 (compid)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ª˙ππ±Ì';
DROP TABLE tuser;
CREATE TABLE tuser (iduser int NOT NULL AUTO_INCREMENT, compid int, uname varchar(16) NOT NULL, uemail varchar(255), upwd varchar(32) NOT NULL, create_time datetime DEFAULT CURRENT_TIMESTAMP NOT NULL, umphone varchar(20), urealname varchar(45), uisdel int, utype int, PRIMARY KEY (iduser), INDEX FK_Reference_18 (compid)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='”√ªß±Ì';
INSERT INTO tuser (iduser, compid, uname, uemail, upwd, create_time, umphone, urealname, uisdel, utype) VALUES (1, 1, 'admin', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', '2016-05-21 11:42:18', '18888888888', 'π‹¿ÌÜT', 1, 1);
ALTER TABLE act_ge_bytearray ADD CONSTRAINT ACT_FK_BYTEARR_DEPL FOREIGN KEY (DEPLOYMENT_ID_) REFERENCES act_re_deployment (ID_);
ALTER TABLE act_id_membership ADD CONSTRAINT ACT_FK_MEMB_GROUP FOREIGN KEY (GROUP_ID_) REFERENCES act_id_group (ID_) ;
ALTER TABLE act_id_membership ADD CONSTRAINT ACT_FK_MEMB_USER FOREIGN KEY (USER_ID_) REFERENCES act_id_user (ID_);
ALTER TABLE act_procdef_info ADD CONSTRAINT ACT_FK_INFO_JSON_BA FOREIGN KEY (INFO_JSON_ID_) REFERENCES act_ge_bytearray (ID_) ;
ALTER TABLE act_procdef_info ADD CONSTRAINT ACT_FK_INFO_PROCDEF FOREIGN KEY (PROC_DEF_ID_) REFERENCES act_re_procdef (ID_);
ALTER TABLE act_re_model ADD CONSTRAINT ACT_FK_MODEL_DEPLOYMENT FOREIGN KEY (DEPLOYMENT_ID_) REFERENCES act_re_deployment (ID_) ;
ALTER TABLE act_re_model ADD CONSTRAINT ACT_FK_MODEL_SOURCE FOREIGN KEY (EDITOR_SOURCE_VALUE_ID_) REFERENCES act_ge_bytearray (ID_) ;
ALTER TABLE act_re_model ADD CONSTRAINT ACT_FK_MODEL_SOURCE_EXTRA FOREIGN KEY (EDITOR_SOURCE_EXTRA_VALUE_ID_) REFERENCES act_ge_bytearray (ID_);
ALTER TABLE act_ru_event_subscr ADD CONSTRAINT ACT_FK_EVENT_EXEC FOREIGN KEY (EXECUTION_ID_) REFERENCES act_ru_execution (ID_);
ALTER TABLE act_ru_execution ADD CONSTRAINT ACT_FK_EXE_PARENT FOREIGN KEY (PARENT_ID_) REFERENCES act_ru_execution (ID_) ;
ALTER TABLE act_ru_execution ADD CONSTRAINT ACT_FK_EXE_PROCDEF FOREIGN KEY (PROC_DEF_ID_) REFERENCES act_re_procdef (ID_) ;
ALTER TABLE act_ru_execution ADD CONSTRAINT ACT_FK_EXE_PROCINST FOREIGN KEY (PROC_INST_ID_) REFERENCES act_ru_execution (ID_) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE act_ru_execution ADD CONSTRAINT ACT_FK_EXE_SUPER FOREIGN KEY (SUPER_EXEC_) REFERENCES act_ru_execution (ID_);
ALTER TABLE act_ru_identitylink ADD CONSTRAINT ACT_FK_ATHRZ_PROCEDEF FOREIGN KEY (PROC_DEF_ID_) REFERENCES act_re_procdef (ID_) ;
ALTER TABLE act_ru_identitylink ADD CONSTRAINT ACT_FK_IDL_PROCINST FOREIGN KEY (PROC_INST_ID_) REFERENCES act_ru_execution (ID_) ;
ALTER TABLE act_ru_identitylink ADD CONSTRAINT ACT_FK_TSKASS_TASK FOREIGN KEY (TASK_ID_) REFERENCES act_ru_task (ID_);
ALTER TABLE act_ru_job ADD CONSTRAINT ACT_FK_JOB_EXCEPTION FOREIGN KEY (EXCEPTION_STACK_ID_) REFERENCES act_ge_bytearray (ID_);
ALTER TABLE act_ru_task ADD CONSTRAINT ACT_FK_TASK_EXE FOREIGN KEY (EXECUTION_ID_) REFERENCES act_ru_execution (ID_) ;
ALTER TABLE act_ru_task ADD CONSTRAINT ACT_FK_TASK_PROCDEF FOREIGN KEY (PROC_DEF_ID_) REFERENCES act_re_procdef (ID_) ;
ALTER TABLE act_ru_task ADD CONSTRAINT ACT_FK_TASK_PROCINST FOREIGN KEY (PROC_INST_ID_) REFERENCES act_ru_execution (ID_);
ALTER TABLE act_ru_variable ADD CONSTRAINT ACT_FK_VAR_BYTEARRAY FOREIGN KEY (BYTEARRAY_ID_) REFERENCES act_ge_bytearray (ID_) ;
ALTER TABLE act_ru_variable ADD CONSTRAINT ACT_FK_VAR_EXE FOREIGN KEY (EXECUTION_ID_) REFERENCES act_ru_execution (ID_) ;
ALTER TABLE act_ru_variable ADD CONSTRAINT ACT_FK_VAR_PROCINST FOREIGN KEY (PROC_INST_ID_) REFERENCES act_ru_execution (ID_);
ALTER TABLE bmaddcosts ADD CONSTRAINT FK_Reference_15 FOREIGN KEY (compid) REFERENCES tcompany (compid) ;
ALTER TABLE bmaddcosts ADD CONSTRAINT fk_bmaddcosts_bmorder1 FOREIGN KEY (bmorder_idbmorder) REFERENCES bmorder (idbmorder);
ALTER TABLE bmdelivery ADD CONSTRAINT FK_Reference_22 FOREIGN KEY (compid) REFERENCES tcompany (compid);
ALTER TABLE bmmarker ADD CONSTRAINT FK_Reference_11 FOREIGN KEY (compid) REFERENCES tcompany (compid);
ALTER TABLE bmorder ADD CONSTRAINT FK_Reference_10 FOREIGN KEY (idbmdelivery) REFERENCES bmdelivery (idbmdelivery) ;
ALTER TABLE bmorder ADD CONSTRAINT FK_Reference_17 FOREIGN KEY (compid) REFERENCES tcompany (compid) ;
ALTER TABLE bmorder ADD CONSTRAINT fk_bmorder_tuser1 FOREIGN KEY (tuser_iduser) REFERENCES tuser (iduser);
ALTER TABLE bmorderitem ADD CONSTRAINT FK_Reference_16 FOREIGN KEY (compid) REFERENCES tcompany (compid) ;
ALTER TABLE bmorderitem ADD CONSTRAINT fk_bmorderitem_bmorder1 FOREIGN KEY (bmorder_idbmorder) REFERENCES bmorder (idbmorder);
ALTER TABLE person ADD CONSTRAINT FK_dl4ghw9rrqpfeh83gl9f1mqp2 FOREIGN KEY (comp_compId) REFERENCES comp (comp_id);
ALTER TABLE tcustomer ADD CONSTRAINT FK_Reference_14 FOREIGN KEY (compid) REFERENCES tcompany (compid) ;
ALTER TABLE tcustomer ADD CONSTRAINT fk_tcustomer_tcustomerappend1 FOREIGN KEY (tcustomerappend_idcusapp) REFERENCES tcustomerappend (idcusapp) ;
ALTER TABLE tcustomer ADD CONSTRAINT fk_tcustomer_tcustomertax1 FOREIGN KEY (tcustomertax_idtcustax) REFERENCES tcustomertax (idtcustax);
ALTER TABLE tcustomerappend ADD CONSTRAINT FK_Reference_12 FOREIGN KEY (compid) REFERENCES tcompany (compid);
ALTER TABLE tcustomertax ADD CONSTRAINT FK_Reference_13 FOREIGN KEY (compid) REFERENCES tcompany (compid);
ALTER TABLE toptlog ADD CONSTRAINT FK_Reference_19 FOREIGN KEY (compid) REFERENCES tcompany (compid) ;
ALTER TABLE toptlog ADD CONSTRAINT FK_Reference_9 FOREIGN KEY (iduser) REFERENCES tuser (iduser);
ALTER TABLE trelunit ADD CONSTRAINT FK_Reference_20 FOREIGN KEY (compid) REFERENCES tcompany (compid) ;
ALTER TABLE trelunit ADD CONSTRAINT fk_trelunit_tunits1 FOREIGN KEY (tunits_idunit) REFERENCES tunits (idunit) ;
ALTER TABLE trelunit ADD CONSTRAINT fk_trelunit_tuser FOREIGN KEY (tuser_iduser) REFERENCES tuser (iduser);
ALTER TABLE tunits ADD CONSTRAINT FK_Reference_21 FOREIGN KEY (compid) REFERENCES tcompany (compid);
ALTER TABLE tuser ADD CONSTRAINT FK_Reference_18 FOREIGN KEY (compid) REFERENCES tcompany (compid);
