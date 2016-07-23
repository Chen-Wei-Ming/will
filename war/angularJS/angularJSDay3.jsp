<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Will's angularJS</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="../Image/icon/favicon.ico" />
		<link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/index.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/carousel.css" />
		<link rel="stylesheet" type="text/css" href="../CSS/angularJS/angularJSPart1.css" />
	</head>
	<!-- Script -->
	<script src="../Javascript/jquery/jquery-2.1.1.js"></script>
	<script src="../Bootstrap/js/bootstrap.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>
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
					<img src="../Image/w.jpg">
				</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li>
						<a href="../index.jsp">首頁</a>
					</li>
					<li class="active">
						<a href="#">AngularJS</a>
					</li>
					<li>
						<a href="../about.jsp">關於</a>
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
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a href="angularJSDay1.jsp">Day 1</a></li>
            <li><a href="angularJSDay2.jsp">Day 2</a></li>
            <li class="active"><a href="#">Day 3</a><span class="sr-only">(current)</span></li>
            <li><a href="angularJSDay4.jsp">Day 4</a></li>
          </ul>
        </div>
        <div id = 'angularJSDemo'>
        	<div ng-app="my-app">
        		<div ng-controller="myctrl1">
        			{{firstName +" "+ lastName}}
       				<p>利用controller建立控制物件</p>
       				<p>利用ng-app & ng-contorller 的 id 建立對應的連結</p>
       				<p>ng-app 利用 angular.module(id , [參數])</p>
        			<p>ng-contoller 利用 angular.moudle(id , []).controller(id , function($ 變數)){</p>
					<p>	$ 變數.controller中的變數 進行設定</p>
        			<p>}</p>
	        	</div>
	        	<hr>
	        	<div angular-test-directive></div>
	        	<div>
	        		<p>設定 directive</p>
	        		<p>命名id id part1-id part2-directive</p>
	        		<p>angular.module.directive(id part1 + id part2 + directive ,function(){return{</p>
					<p>template : " String "</p>
	        		<p>}} )</p>
	        	</div>
	        	<hr>
	        	<div ng-controller="myctrl2">
	        		{{test}}
	        		<p>javascript 的部份獨立成為個別的.js檔案</p>
	        		<p>變數可以交互使用，不受限於相同的.html或是.js之中</p>
	        	</div>
	        	<hr>
        	</div>
        </div>
      </div>
    </div>
    <script>
    	var app = angular.module('my-app' , []) ;
    	app.controller('myctrl1' , function($scope){
    		$scope.firstName = "John" ;
    		$scope.lastName = "Doe" ;
    	}) ;
		app.directive("angularTestDirective", function() {
   			return {
        		template : "I was made in a directive constructor!"
    		};
		});
    </script>
  	<script src="../Javascript/angularJS/myctrl.js"></script>
    </body>
</html>