public with sharing class AccountTriggerHelper {

	public static void setCustomerPriorityBeforeUpdate(List<account> oldAccountList,List<Account> newAccountList){
		List<Account> accountToUpdateList = new List<Account>();
		for (Integer i = 0; i < newAccountList.size(); i++){
			if (oldAccountList[i].AccountClassification__c != newAccountList[i].AccountClassification__c){
				newAccountList[i].CustomerPriority__c = validateCustomerPriority(newAccountList[i].AccountClassification__c);
			}
		}
	}
	public static void setCustomerPriorityBeforeInsert(List<Account> newAccountList){
		List<Account> accountToInsertList = new List<Account>();
		for (Account currentAccount : newAccountList){
			currentAccount.CustomerPriority__c = validateCustomerPriority(currentAccount.AccountClassification__c);
		}
	}

	public static void sendEmailToHighPriority(){

	}

	public static String validateCustomerPriority(String accountClassification){
		String customerPriority = '';

		if ( accountClassification == 'Very Bad' 
		 ||  accountClassification == 'Bad' 
		){
			customerPriority = 'Low';
		}

		else if ( 
			accountClassification == 'Very Good' 
		||  accountClassification == 'Good' 
		){
			customerPriority = 'High';
		}else{
			customerPriority = 'Medium';
		}

		return customerPriority;
	}
}