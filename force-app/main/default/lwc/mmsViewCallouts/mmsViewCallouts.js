import { LightningElement, track } from 'lwc';

import makeGetCallout from '@salesforce/apex/MMSTemplateCallouts.makeGetCallout';
import makePostCallout from '@salesforce/apex/MMSTemplateCallouts.makePostCallout';
import makePatchCallout from '@salesforce/apex/MMSTemplateCallouts.makePatchCallout';
import makePutCallout from '@salesforce/apex/MMSTemplateCallouts.makePutCallout';
import makeDeleteCallout from '@salesforce/apex/MMSTemplateCallouts.makeDeleteCallout';
export default class MmsViewCallouts extends LightningElement {

	@track 
	requestBody;
    @track 
	responseBody;


	async handleGetCallout(){
        const result = await makeGetCallout({});
        this.requestBody = result.requestBody;
        this.responseBody = result.responseBody;
    }

	async handlePostCallout(){
        const result = await makePostCallout({});
        this.requestBody = result.requestBody;
        this.responseBody = result.responseBody;
    }

	async handlePatchCallout(){
        const result = await makePatchCallout({});
        this.requestBody = result.requestBody;
        this.responseBody = result.responseBody;
    }

	async handlePutCallout(){
        const result = await makePutCallout({});
        this.requestBody = result.requestBody;
        this.responseBody = result.responseBody;
    }

	async handleDeleteCallout(){
        const result = await makeDeleteCallout({});
        this.requestBody = result.requestBody;
        this.responseBody = result.responseBody;
    }
}