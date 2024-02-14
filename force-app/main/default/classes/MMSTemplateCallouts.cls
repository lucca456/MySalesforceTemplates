public with sharing class MMSTemplateCallouts {

	public static HttpResponse makeGetCallout() {

		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('callout:HttpBinCredential/get');
		request.setMethod('GET');
		System.debug('resquest => ' + request);
		System.debug('request body => ' + request.getBody());
		HttpResponse response = http.send(request);
		System.debug('response => ' + response);

		if(response.getStatusCode() == 200){
			System.debug('response body => ' + response.getBody());
		}

		return response;
	}

	public static HttpResponse makePostCallout() {
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

		System.debug('resquest => ' + request);
		System.debug('request body => ' + request.getBody());

		HttpResponse response = http.send(request);
		System.debug('response => ' + response);

		if(response.getStatusCode() == 200){
			System.debug('response body => ' + response.getBody());
		}

		return response;
	}

	public static HttpResponse makePatchCallout() {

		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('callout:HttpBinCredential/patch');
		request.setMethod('PATCH');
		System.debug('resquest => ' + request);
		System.debug('request body => ' + request.getBody());

		HttpResponse response = http.send(request);
		System.debug('response => ' + response);

		if(response.getStatusCode() == 200){
			System.debug('response body => ' + response.getBody());
		}

		return response;
	}

	public static HttpResponse makePutCallout() {

		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('callout:HttpBinCredential/put');
		request.setMethod('PUT');
		System.debug('resquest => ' + request);
		System.debug('request body => ' + request.getBody());

		HttpResponse response = http.send(request);
		System.debug('response => ' + response);

		if(response.getStatusCode() == 200){
			System.debug('response body => ' + response.getBody());
		}

		return response;
	}

	public static HttpResponse makeDeleteCallout() {

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

		return response;
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

}