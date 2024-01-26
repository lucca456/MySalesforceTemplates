trigger TriggerTemplate on Account (before insert) {
	System.debug('Template Trigger OperationType => ' + Trigger.operationType);

	if(TemplateTriggerHandler.isTriggerEnabled()){
		TemplateTriggerHandler handler = new TemplateTriggerHandler(
			Trigger.new, 
			Trigger.old, 
			Trigger.newMap, 
			Trigger.oldMap
		);
	

		switch on Trigger.operationType {
			when BEFORE_INSERT {
				handler.beforeInsert();
			}
			when AFTER_INSERT {
				handler.afterInsert();
			}
			when BEFORE_UPDATE {
				handler.beforeUpdate();
			}
			when AFTER_UPDATE {
				handler.afterUpdate();
			}
			when BEFORE_DELETE {
				handler.beforeDelete();
			}
			when AFTER_DELETE {
				handler.afterDelete();
			}
		}
	}
}