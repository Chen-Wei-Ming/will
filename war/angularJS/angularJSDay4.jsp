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
            <li><a href="angularJSDay1.jsp">Day 1</a></li>
            <li><a href="angularJSDay2.jsp">Day 2</a></li>
             <li><a href="angularJSDay3.jsp">Day 3</a></li>
            <li class="active"><a href="#">Day 4</a><span class="sr-only">(current)</span></li>
          </ul>
        </div>
        <div id = 'angularJSDemo'>
        	<div ng-app="myApp">
        		<div ng-controller='myCtrl1'>
        			Name: <input ng-model="name">
			    	<h1>You entered: {{name}}</h1>
			    	<p>搭配script 進行controller設定 在上方的文字才有辦法顯示</p>
			    	<p>input 中進行 ng-model設定 下方{{ }}才可以顯示</p>
        		</div>
        		<hr>
        		<div ng-controller='myCtrl2'>
					Name: <input ng-model="name2">
					<h1>You entered: <span ng-bind="name2"></span></h1>
					<p>同上需要在script中進行設定</p>
					<p>顯示方式修改為 ng-bind</p>
				</div>
				<hr>
				<div>
					<form name='myForm' action="">
						Email: <input type="email" name='myAddress' ng-model='text'>
						<span ng-show='myForm.myAddress.$error.email'>Not a valid e-mail address</span>
					</form>
					<p>ng-model 不可省略，對應驗錯會失效</p>
					<p>ng-show 可以設定顯示條件</p>
					<p>條件設定 formName.inputName.$error.format</p>
					<p>不用加入 ng-controller 也不用加入script</p>
				</div>
			</div>
        </div>
      </div>
    </div>
    <script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl1', function($scope) {
		   	
		});
		app.controller('myCtrl2', function($scope){

		});
	</script>
    </body>
</html>