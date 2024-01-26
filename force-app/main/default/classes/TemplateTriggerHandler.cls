public with sharing class TemplateTriggerHandler {

	private static Boolean runTrigger;
	static {
		runTrigger = true;
	}

    public List<SOBJECT> newRecordsList {get; set;}
    public List<SOBJECT> oldRecordsList {get; set;}
    public Map<Id, SOBJECT> newRecordsMap {get; set;}
    public Map<Id, SOBJECT> oldRecordsMap {get; set;}

	public TemplateTriggerHandler(
		List<SOBJECT> newRecordsList,
		List<SOBJECT> oldRecordsList,
		Map<Id, SOBJECT> newRecordsMap,
		Map<Id, SOBJECT> oldRecordsMap
	){
		this.newRecordsList = newRecordsList;
		this.oldRecordsList = oldRecordsList;
		this.newRecordsMap = newRecordsMap;
		this.oldRecordsMap = oldRecordsMap;
	}

	public static Boolean isTriggerEnabled() {
		return runTrigger;
	}
	public static Boolean enableTrigger() {
		return runTrigger = true;
	}
	public static Boolean disableTrigger() {
		return runTrigger = false;
	}

	public void beforeInsert() {
		TemplateTriggerHelper.doSomething();
	}
	public void afterInsert() {
		TemplateTriggerHelper.doSomething();
	}

	public void beforeUpdate() {
		TemplateTriggerHelper.doSomething();
	}
	public void afterUpdate() {
		TemplateTriggerHelper.doSomething();
	}

	public void beforeDelete() {
		TemplateTriggerHelper.doSomething();
	}
	public void afterDelete() {
		TemplateTriggerHelper.doSomething();
	}
}