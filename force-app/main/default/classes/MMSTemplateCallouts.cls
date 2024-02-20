public with sharing class MMSTemplateCallouts {

	@AuraEnabled
	public static CalloutWrapper makeGetCallout() {

		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('callout:HttpBinCredential/get');
		request.setMethod('GET');

		HttpResponse response = http.send(request);

		if(response.getStatusCode() == 200){
			System.debug('response body => ' + response.getBody());
		}

		return new CalloutWrapper(request.getBody(), response.getBody());
	}

	@AuraEnabled
	public static CalloutWrapper makePostCallout() {

		BodyRequestWrapper requestBody = new BodyRequestWrapper(
			'test data',
			'test form',
			'test args'
		);

		String serializedBody = JSON.serialize(requestBody);

		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('callout:HttpBinCredential/post');
		request.setMethod('POST');
		request.setBody(EncodingUtil.urlEncode(
			serializedBody,
			'UTF-8'
		));
		request.setHeader('Content-type','application/x-www-form-urlencoded');


		HttpResponse response = http.send(request);

		if(response.getStatusCode() == 200){
			System.debug('response body => ' + response.getBody());
		}

		return new CalloutWrapper(request.getBody(), response.getBody());
	}

	@AuraEnabled
	public static CalloutWrapper makePatchCallout() {

		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('callout:HttpBinCredential/patch');
		request.setMethod('PATCH');

		HttpResponse response = http.send(request);

		if(response.getStatusCode() == 200){
			System.debug('response body => ' + response.getBody());
		}

		return new CalloutWrapper(request.getBody(), response.getBody());
	}

	@AuraEnabled
	public static CalloutWrapper makePutCallout() {

		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('callout:HttpBinCredential/put');
		request.setMethod('PUT');

		HttpResponse response = http.send(request);
		System.debug('response => ' + response);

		if(response.getStatusCode() == 200){
			System.debug('response body => ' + response.getBody());
		}

		return new CalloutWrapper(request.getBody(), response.getBody());
	}

	@AuraEnabled
	public static CalloutWrapper makeDeleteCallout() {

		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('callout:HttpBinCredential/delete');
		request.setMethod('DELETE');
		System.debug('resquest => ' + request);
		System.debug('request body => ' + request.getBody());

		HttpResponse response = http.send(request);
		System.debug('response => ' + response);

		if(response.getStatusCode() == 200){
			System.debug('response body => ' + response.getBody());
		}

		return new CalloutWrapper(request.getBody(), response.getBody());
	}

	public class BodyRequestWrapper {
		String data;
		String form;
		String args;

		public BodyRequestWrapper(String data, String form, String args){
			this.data = data;
			this.form = form;
			this.args = args;
		}
	}

	public class CalloutWrapper {
		@AuraEnabled
		public String requestBody;
		@AuraEnabled
		public String responseBody;

		public CalloutWrapper(String requestBody, String responseBody){
			this.requestBody = requestBody;
			this.responseBody = responseBody;
		}
	}

}