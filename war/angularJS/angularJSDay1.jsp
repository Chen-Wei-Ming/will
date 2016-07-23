<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="BIG5"%>
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
		<!-- Script -->
		<script src="../Javascript/jquery/jquery-2.1.1.js"></script>
		<script src="../Bootstrap/js/bootstrap.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>
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
            <li class="active"><a href="#">Day 1</a><span class="sr-only">(current)</span></li>
            <li><a href="angularJSDay2.jsp">Day 2</a></li>
            <li><a href="angularJSDay3.jsp">Day 3</a></li>
            <li><a href="angularJSDay4.jsp">Day 4</a></li>
          </ul>
        </div>
        <div id = 'angularJSDemo'>
        	 <div ng-app='myApp' ng-controller='myCtrl'>
				<div>
					<p>Name: <input type="text" ng-model='name'> </p>
					<p ng-bind='name'></p>
					<p>ng-app 表示angularJS使用的區段</p>
					<p>ng-model 表示變數對應的名稱</p>
					<p>ng-bind 表示 顯示ng-model變數</p>
				</div>
				<hr>
				<div data-ng-app='' data-ng-init="firstName='John'">
					<p>The name is <span data-ng-bind="firstName"></span></p>
					<p>data-ng-app 表示建立儲存資料用</p>
					<p>data-ng-init 表示儲存資料的變數以及變數名稱</p>
					<p>data-ng-bind 表示 顯示init的資料值</p>
				</div>
				<hr>
				<div>
					<p>Expression : 5 + 5 = {{5+5}}</p>
					<p>{ {  } } 表示用來執行計算式以及要顯示的資料</p>
				</div>
				<hr>
				<div>
					<p>Name : <input type="text" ng-model='name2'></p>
					<p>{{name2}}</p>
				</div>
				<hr>
				<div>
					<p>First Name : <input type="text" ng-model='firstname2'></p>
					<p>Last Name : <input type="text" ng-model ='lastname2'></p>
					<p>Full Name : {{firstname2+lastname2}}</p>
					<script>
						var app = angular.module('myApp',[]) ;
						app.controller('myCtrl' , function($scope){
							$scope.firstname2 = "John" ;
							$scope.lastname2 = "Doe" ;
						}) ;
					</script>
					<p>script 建立變數值</p>
					<p>angular.module 表示指定ng-app的id或是名稱</p>
					<p>app.controller 表示對應的ng-controller的id或是名稱</p>
					<p>scope表示元件,後加上id 即可以修改該變數所儲存的值</p>
				</div>
				<hr>
			</div>
        </div>
      </div>
    </div>
    </body>
</html>