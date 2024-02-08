public with sharing class MMSTemplaPagination {
    
	@AuraEnabled(cacheable = true)
	public static List<Contact> getRecordList(){
		return [SELECT Id, Name, LastName FROM Contact];
	}
}