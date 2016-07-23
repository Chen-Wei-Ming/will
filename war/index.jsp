<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.project.Function.FunctionCall"%>
<!DOCTYPE html>
<html>
<%
	FunctionCall functionCall = new FunctionCall();
	if(session.isNew()){
		functionCall.addLog(request.getRemoteAddr());
	}
	int logSize = functionCall.getLogSize() ;
	session.setAttribute("admin", "false") ;
	session.setAttribute("pass", "true") ;
%>
<!-- Version 1.1.1 -->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="Image/icon/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="Bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="CSS/index.css" />
	<link rel="stylesheet" type="text/css" href="CSS/carousel.css" />
	<title>Will's Home</title>
</head>
<body onkeypress = "keyOnPress(event)">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">
					<img src="Image/w.jpg">
				</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="#">首頁</a>
					</li>
					<li>
						<a href="angularJS/angularJSDay1.jsp">AngularJS</a>
					</li>
					<li>
						<a href="about.jsp">關於</a>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<div class="carousel-inner" role="listbox">
			<div id='item-Hacktku' class="item active">
				<div class="container">
					<div class="carousel-caption">
						<p>
							<a class="btn btn-lg btn-primary" href="http://hacktku.org/2016/" role="button" target="_blank">Learn more</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
		</ol>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
			<span class="sr-only">Previous</span>
		</a> 
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> 
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<div class="container-fluid">
      <div class="row">
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        	<h1 class="page-header">公佈欄</h1>
      		<hr>
   			<ul class="nav nav-tabs nav-justified">
   				<li role="presentation" class="active"><a onclick='aToOpenAllInformation()'>全部資訊</a></li>
   				<li role="presentation"><a onclick='aToOpenAngularJSInformation()'>AngularJS 資訊</a></li>
			</ul>
			<div id='allInformation' class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Panel title</h3>
				</div>
				<div class="panel-body"> Panel content </div> 
			</div>
			<div id='angularJSInformation' style="display:none;" class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Panel title</h3>
				</div>
				<div class="panel-body"> Panel content </div> 
			</div>
        </div>
      </div>
    </div>
    <div class="footer">
    	<h2 style="text-align:center;">總瀏覽次數： <%=logSize%></h2>
    </div>
	<!-- Script -->
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>
	<script src="Javascript/jquery/jquery-2.1.1.js"></script>
	<script src="Bootstrap/js/bootstrap.js"></script>
	<script src="Javascript/holder.min.js"></script>
	<script src="Javascript/md5/md5.js"></script>
	<script src="Javascript/index.js"></script>
	</body>
</html>