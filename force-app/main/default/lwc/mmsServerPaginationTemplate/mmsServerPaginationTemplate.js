import { LightningElement, wire, track } from 'lwc';
import getRecords from '@salesforce/apex/MMSTemplaPagination.getRecords';

export default class MmsServerPaginationTemplate extends LightningElement {
	@track records;
    pageSize = 10;
    offset = 0;
	@track hasMoreRecords = true;

    get isFirstPage() {
        return this.offset === 0;
    }

    get isLastPage() {
        return !this.hasMoreRecords;
    }

    @wire(getRecords, { pageSize: '$pageSize', offset: '$offset' })
    wiredRecords({ error, data }) {
        if (data) {
			this.hasMoreRecords = data.length > this.pageSize;
			this.records = data.slice(0, this.pageSize); // Remove o registro extra se houver
		} else if (error) {
			this.hasMoreRecords = false; // Assume não haver mais registros em caso de erro
			// Trate o erro conforme necessário
		}
    }

    previousPage() {
        this.offset = Math.max(0, this.offset - this.pageSize);
    }

    nextPage() {
        if (this.hasMoreRecords) {
            this.offset += this.pageSize;
        }
    }
}