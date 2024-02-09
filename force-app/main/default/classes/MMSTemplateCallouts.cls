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

		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('callout:HttpBinCredential/post');
		request.setMethod('POST');
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

}