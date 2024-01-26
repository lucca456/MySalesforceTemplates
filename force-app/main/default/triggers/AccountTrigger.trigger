trigger AccountTrigger on Account (before insert, after insert, before update,after update) {
	System.debug('Template Trigger OperationType => ' + Trigger.operationType);

	if(AccountTriggerHandler.isTriggerEnabled()){
		AccountTriggerHandler handler = new AccountTriggerHandler(
			Trigger.new, 
			Trigger.old, 
			Trigger.newMap, 
			Trigger.oldMap
		);
	

		switch on Trigger.operationType {
            when BEFORE_INSERT {
                handler.beforeInsert();
            }
            when BEFORE_UPDATE {
                handler.beforeUpdate();
            }
            when AFTER_UPDATE {
                handler.afterUpdate();
            }
        }
	}
}