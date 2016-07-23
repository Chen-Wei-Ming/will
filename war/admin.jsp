<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.project.Function.FunctionCall"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	FunctionCall functionCall = new FunctionCall();
	//get log information
	int logSize = functionCall.getLogSize() ;
	String[] IPArray = functionCall.getAllLogIP() ;
	String[] TimeArray = functionCall.getAllLogTime() ;
	if(!session.isNew()){
		boolean adminResult = Boolean.parseBoolean((String)session.getAttribute("admin")) ;
		boolean passResult = Boolean.parseBoolean((String)session.getAttribute("pass")) ;
		if(adminResult & passResult){
			
		}else{
			response.sendRedirect("../index.jsp") ;
		}
	}
%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="Image/icon/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="Bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="CSS/index.css" />
	<link rel="stylesheet" type="text/css" href="CSS/carousel.css" />
	<title>Will's Home</title>
</head>
<body>
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
						<a href="index.jsp">首頁</a>
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
          <h1 class="page-header">瀏覽資訊</h1>
          <h2 class="sub-header">總瀏覽次數： <%=logSize%></h2>
          <div class="table-responsive">
            <table id="mytable" class="table table-striped">
              <thead>
                <tr>
                  <th id="thead">Index</th>
                  <th>IP</th>
                  <th>LogTime</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
	<!-- Script -->
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>
	<script src="Javascript/jquery/jquery-2.1.1.js"></script>
	<script src="Bootstrap/js/bootstrap.js"></script>
	<script src="Javascript/holder.min.js"></script>
	<script type="text/Javascript">
	<%
		for(int index = 0 ; index < 25 ; index++){
			String html = 
			"\"<tr>"
				+"<td>"+(index+1)+"</tb>"
				+"<td>"+IPArray[index].toString()+"</tb>"
				+"<td>"+TimeArray[index].toString()+"</tb>"
			+"</tr>\"" ;
			%>
			$("#mytable tr:last").after(<%=html%>) ;
			<%
		}
	%>
	</script>
</body>
</html>