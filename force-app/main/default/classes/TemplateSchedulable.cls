public with sharing class TemplateSchedulable implements
	Schedulable
{

	public void execute(SchedulableContext schedulableContext) {
		TemplateBatchable scheduledOrderBatch = new TemplateBatchable();
		database.executebatch(scheduledOrderBatch, 200);
	}

	public static Id setSchedule() {
		return System.schedule('Template SObjectBatch', '0 0 0 * * ?', new TemplateSchedulable());
	}

    
}