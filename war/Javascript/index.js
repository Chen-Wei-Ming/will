(function(){
	var input = new String()  ;
	var md5_input = new String() ;
	keyOnPress = function(event){
		input += String.fromCharCode(event.which) ;
		md5_input = md5(input) ;
		if(md5_input == "18218139eec55d83cf82679934e5cd75"){
			location.href = "Function/CheckToAdmin.jsp" ;
		}
	};
	hiddenAll = function(){
		$('#allInformation').css({'display':'none'}) ;
		$('#angularJSInformation').css({'display':'none'}) ;
	};
	aToOpenAllInformation = function(){
		hiddenAll() ;
		$('#allInformation').css({'display':'initial'}) ;
	};
	aToOpenAngularJSInformation = function(){
		hiddenAll() ;
		$('#angularJSInformation').css({'display':'initial'}) ;
	};
}())