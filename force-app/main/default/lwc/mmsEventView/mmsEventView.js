import { LightningElement, track, api } from 'lwc';
import { subscribe } from 'lightning/empApi';

export default class MmsEventView extends LightningElement {

	@track data = [];
    @track columns = [
        { label: 'Message', fieldName: 'Message__c', type: 'text' },
        { label: 'Created Date', fieldName: 'CreatedDate', type: 'date' }
    ];
 
    subscription = {};
    @api channelName = '/event/TestEvent__e';

	connectedCallback(event) {
        this.handleSubscribe();
		console.log('data =>', this.data);
		
    }

    proxyToObj(obj){
        return JSON.parse(JSON.stringify(obj));
    }

	handleSubscribe() {
        const messageCallback = (response) => {
            console.log('New message received: ', response);

            // Extracting payload data and creating a new record object
            const eventData = response.data.payload;
            const record = {
                Message__c: eventData.Message__c,
                CreatedDate: eventData.CreatedDate
            };

            // Adding the new record to the existing data array
            this.data = [...this.data, record];
        };
 
        subscribe(this.channelName, -1, messageCallback).then(response => {
            console.log('Subscription request sent to: ', response.channel);
            this.subscription = response;
        });
    }
 
    // handleSubscribe() {
    //     const self = this;
    //     const messageCallback = function (response) {
    //         console.log('New message received 1: ', JSON.stringify(response));
    //         console.log('New message received 2: ', response);

    //         var obj = JSON.parse(JSON.stringify(response));

    //         self.data = self.proxyToObj(self.data);
    //         self.data.push({EventUuid : obj.data.payload.EventUuid, Message__c : obj.data.payload.Message__c});
    //         console.log('this.data -> ' + JSON.stringify(self.data));
    //     };
 
    //     subscribe(this.channelName, -1, messageCallback).then(response => {
    //         console.log('Subscription request sent to: ', JSON.stringify(response.channel));
    //         this.subscription = response;
    //     });
    // }
}