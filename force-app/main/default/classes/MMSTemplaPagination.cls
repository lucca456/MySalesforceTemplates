public with sharing class MMSTemplaPagination {


    // CLIENT SIDE PAGINATION
	@AuraEnabled(cacheable = true)
	public static List<Contact> getRecordList(){
		return [SELECT Id, Name, LastName FROM Contact];
	}

	//SERVER SIDE PAGINATION WITH OFFSET
	@AuraEnabled(cacheable=true)
	public static List<Contact> getRecords(Integer pageSize, Integer offset) {
		List<Contact> contactList = [SELECT Id, Name, LastName FROM Contact ORDER BY Name LIMIT :pageSize + 1 OFFSET :offset];
		return contactList;
	}

}