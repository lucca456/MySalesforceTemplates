public with sharing class AccountTriggerHandler {
    private static Boolean runTrigger;
	static {
		runTrigger = true;
	}

    public List<Account> newRecordsList {get; set;}
    public List<Account> oldRecordsList {get; set;}
    public Map<Id, Account> newRecordsMap {get; set;}
    public Map<Id, Account> oldRecordsMap {get; set;}

	public AccountTriggerHandler(
		List<Account> newRecordsList,
		List<Account> oldRecordsList,
		Map<Id, Account> newRecordsMap,
		Map<Id, Account> oldRecordsMap
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

	public void beforeUpdate(){
		AccountTriggerHelper.setCustomerPriorityBeforeUpdate(this.oldRecordsList, this.newRecordsList);
	}
	public void afterUpdate(){

	}
	
	public void beforeInsert() {
        AccountTriggerHelper.setCustomerPriorityBeforeInsert(this.newRecordsList);
    }
}