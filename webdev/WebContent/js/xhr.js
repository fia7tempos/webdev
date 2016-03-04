/**
 * getXMLHttpRequest * sendRequest()
 */
var xhr = null; //전역변수

function sendRequest(url, params, callback, method){
	  xhr = getXMLHttpRequest();
	  
	  var httpMethod = method ? method.toUpperCase() : 'GET';
	  if(httpMethod != 'GET' && httpMethod != 'POST'){
		  httpMethod = 'GET';
	  }
	  var httpParams = (params == null || params == '')? null:params;
	  var httpUrl = url;
	  if(httpMethod == 'GET' && httpParams != null){
		  httpUrl = httpUrl + '?' + httpParams;
	  }
	  xhr.open(httpMethod, httpUrl, true);
	  xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	  xhr.onreadystatechange = callback;
	  xhr.send(httpMethod == 'POST' ? httpParams:null);
}

function getXMLHttpRequest() {
	if (window.ActiveXObject) { // explorer 4~8
		var version = [
           'Msxml2.XMLHTTP.6.0',
           'Msxml2.XMLHTTP.5.0',
           'Msxml2.XMLHTTP.4.0',
           'Msxml2.XMLHTTP.3.0',
           'Msxml2.XMLHTTP.2.0',
           'Msxml2.XMLHTTP',
           'Microsoft.XMLHTTP'
       ];
		for(var i=0; i<versions.length;i++){
			try{
				return new ActiveXObject(i);				
			}catch(e){} //예외발생시 루프 계속, 최신버전 순으로 매칭해서 맞으면 리턴
		}
	} else if (window.XMLHttpRequest) { // etc, explorer 10...
		try{ // 혹시모를 메모리 오버플로로 객체생성불가 대비
			return new XMLHttpRequest();			
		}catch(e){
			return null;
		}
	} else {
		return null;
	}
}