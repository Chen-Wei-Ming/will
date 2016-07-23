<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.project.Function.FunctionCall" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Send Feeback</title>
</head>
<body>
<% 
	String name = (String)request.getParameter("name") ;
	String email = (String)request.getParameter("email") ;
	String message = (String)request.getParameter("message") ;
	FunctionCall functioncall = new FunctionCall();
	functioncall.addFeeback(name, email, message, request.getRemoteAddr()) ;
	session.setAttribute("message", functioncall.getMessage());
	response.sendRedirect("../about.jsp") ;
%>
</body>
</html>