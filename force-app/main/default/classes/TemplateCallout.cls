public with sharing class TemplateCallout {
   
	public static HttpResponse makeGetCallout(){
		System.debug('makeGetCallout');
		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('https://httpbin.org/get');
		request.setMethod('GET');
		System.debug(request);
		
		HttpResponse response = http.send(request);
		System.debug(response);

		if (response.getStatusCode() == 200) {
			System.debug(response.getBody());
		}
		return response;
	}

	public static HttpResponse makeGetCalloutWithAuth(){
		System.debug('makeGetCalloutWithAuth');
		Http http = new Http();

		HttpRequest request = new HttpRequest();
		request.setEndPoint('https://demo-basic-app.herokuapp.com/api/birds');
		request.setMethod('GET');
		System.debug(request);
		String userName = 'admin';
		String password = 'supersecret';
		
		Blob headerValue = Blob.valueOf(userName + ':' + password);
		String authHeader = 'BASIC ' + EncodingUtil.base64Encode(headerValue);
		request.setHeader('Authorization', authHeader);
		
		HttpResponse response = http.send(request);
		System.debug(response);

		if (response.getStatusCode() == 200) {
			System.debug(response.getBody());
		}
		return response;
	}
}