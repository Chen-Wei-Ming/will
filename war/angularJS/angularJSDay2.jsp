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
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.3/angular.min.js"></script>
		<script src="../Javascript/jquery/jquery-2.1.1.js"></script>
		<script src="../Bootstrap/js/bootstrap.js"></script>
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
            <li class="active"><a href="#">Day 2</a><span class="sr-only">(current)</span></li>
          	<li><a href="angularJSDay3.jsp">Day 3</a></li>
          	<li><a href="angularJSDay4.jsp">Day 4</a></li>
          </ul>
        </div>
        <div id = 'angularJSDemo'>
        	<div ng-app ="" ng-init="mycolor='lightblue'">
        		<div>
        			<input style="background-color:{{mycolor}}" ng-model="mycolor" value="{{mycolor}}">
	        		<p>style中放入ng-model所對應的input值</p>
	        		<p>搭配{{ }}將值立刻顯示於input的背景顏色中</p>
	        		<p>ng-model 是為了再次對變數進行修改</p>
        		</div>
	        	<hr>
	        	<div ng-app="" ng-init="person={firstName:'John',lastName:'Doe'}">
        			<p>The name is {{person.firstName+person.lastName}}</p>
        			<p>The name is <span ng-bind="person.firstName + person.lastName"></span></p>
        			<p>ng-init 類別名稱 = { 變數 : ' 值 ' }</p>
        			<p>建立類別可以另用變數儲存數值</p>
        			<p>利用類別與變數名稱可以再次取得數值</p>
        		</div>
        		<hr>
        		<div ng-app="" ng-init="array=[0,1,2,3,4]">
        			<p>Array = [0,1,2,3,4]</p>
        			<p>The third result is {{array[2]}}</p>
        			<p>The third result is <span ng-bind='array[2]'></span></p>
        			<p>ng-init 陣列名稱 = [值1 , 值2 , 值3 ...]</p>
        		</div>
        	</div>
        </div>
      </div>
    </div>
    </body>
</html>