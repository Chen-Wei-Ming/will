<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	if(!session.isNew()){
		boolean passResult = Boolean.parseBoolean((String)session.getAttribute("pass")) ;
		if(passResult){
			
		}else{
			response.sendRedirect("/index.jsp") ;
		}
	}else{
		response.sendRedirect("/index.jsp") ;
	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="Image/icon/favicon.ico" />
<link rel="stylesheet" href="Bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="CSS/strata-css/main.css"/>
<link rel="stylesheet" href="CSS/about.css"/>
<title>關於</title>
</head>
<body id="top">
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
					<li>
						<a href="index.jsp">首頁</a>
					</li>
					<li>
						<a href="angularJS/angularJSDay1.jsp">AngularJS</a>
					</li>
					<li  class="active">
						<a href="about.jsp">關於</a>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
	    	<div class="modal-content">
	      		<div class="modal-header">
		       		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		       		<h4 class="modal-title" id="myModalLabel">提示訊息</h4>
		     	</div>
		     	<div class="modal-body">
		       		<h5 id='modal-message'>
		       		</h5>
		     	</div>
		     	<div class="modal-footer">
		       		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		    	</div>
		   	</div>
		</div>
	</div>
	<!-- Header -->
	<header id="header"> 
		<a href="#" class="image avatar">
			<img src="Image/willChen.jpg" alt="" />
		</a>
	<h1>
		名字：<strong>陳威銘(Will)</strong><br /> 
		身分：淡江大學 資訊管理 4年級 學生<br />
	</h1>
	</header>
	<!-- Main -->
	<div id="main">

		<!-- One -->
		<section id="one">
			<header class="major">
				<h2>
					製作的起源<br /> 
				</h2>
			</header>
			<p>
				在大學3年級的時候開始接觸網頁，但那時候忙著完成進度<br />
				完全沒有認真在做，只為了交差了事<br />
				後來因為開始製作中研院 生物醫學科學所的網頁，開始接觸JSP與GAE<br />
				另一方面想要製作不受他人規劃的網頁，可以隨著自己的心情亂玩XD<br />
				就算有bug也不用在意，也沒有進度的壓力<br />
				也不用看別人留下的程式碼，有時候真的會讓人想找前輩聊天(捲袖子<br />
			</p>
		</section>
		
		<!-- Three -->
		<section id="three">
			<h2>意見與回饋</h2>
			<p>
				下方的表單我會利用JSP將資料丟到Database裡，所以也歡迎大家留意見給我 XD
			</p>
			<div class="row">
				<div class="8u 12u$(small)">
					<form method="post" action="Function/SendFeeback.jsp">
						<div class="row uniform 50%">
							<div class="6u 12u$(xsmall)">
								<input type="text" name="name" id="name" placeholder="姓名" />
							</div>
							<div class="6u$ 12u$(xsmall)">
								<input type="email" name="email" id="email" placeholder="Email" />
							</div>
							<div class="12u$">
								<textarea name="message" id="message" placeholder="意見與回饋" rows="4"></textarea>
							</div>
						</div>
						<ul class="actions">
							<li><input type="submit" value="送出訊息" /></li>
						</ul>
					</form>
				</div>
				<div class="4u$ 12u$(small)">
					<ul class="labeled-icons">
						<li>
							<h3 class="icon fa-mobile">
								<span class="label">Phone</span>
							</h3> +886-953-211-325
						</li>
						<li>
							<h3 class="icon fa-envelope-o">
								<span class="label">Email</span>
							</h3> <a href="#">will19940625@gmail.com</a>
						</li>
					</ul>
				</div>
			</div>
		</section>
	</div>
	<!-- Footer -->
	<footer id="footer">
	<ul class="icons">
		<li><a href="https://www.facebook.com/profile.php?id=100001374442109" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
		<li><a href="https://twitter.com/will19940625?lang=zh-tw" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
		<li><a href="https://github.com/Chen-Wei-Ming" class="icon fa-github"><span class="label">Github</span></a></li>
		<li><a href="mailto:will19940625@gmail.com" class="icon fa-envelope-o" target="_blank"><span class="label">Email</span></a></li>
	</ul>
	<ul class="copyright">
		<li>&copy; Untitled</li>
		<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
	</ul>
	</footer>
	<!-- Scripts -->
	<script src="Javascript/jquery/jquery-2.1.1.js"></script>
	<script src="Bootstrap/js/bootstrap.js"></script>
	<script src="Javascript/strata-js/jquery.poptrox.min.js"></script>
	<script src="Javascript/strata-js/skel.min.js"></script>
	<script src="Javascript/strata-js/util.js"></script>
	<script src="Javascript/strata-js/main.js"></script>
	<%			
		String message = (String)session.getAttribute("message") ;
		if(message != null){
			%>
			<script type="text/javascript" language="javascript">
				$('#myModal').modal('show');
				$('#modal-message').html("<%=message%>");
			</script>				
			<%
			session.setAttribute("message", null);
		}
	%>
</body>
</html>