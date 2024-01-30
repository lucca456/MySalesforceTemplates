import { LightningElement, wire } from 'lwc';
import getRecordList from '@salesforce/apex/MMSTemplaPagination.getRecordList'

export default class MmsClientPaginationTemplate extends LightningElement {
	totalRecords;
	visibleRecords;

	@wire(getRecordList)
	wiredRecord({error, data}){
		if(data){
			this.totalRecords = data;
		}
		if(error){
			console.error(error);
		}
	}

	updateRecordHandler(event){
		this.visibleRecords = [... event.detail.records];
		console.log(event.detail.records);
	}
	

}