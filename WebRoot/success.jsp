<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <center><h3 style="font-size:50px;">欢迎使用图书管理系统</h3></center>
  <body style="background: url(images/backImage.jpg)">
  <%
  	String name=request.getParameter("u.username");
   %>
  
   <center>
   欢迎你，<%=name %>
   <form action='queryBook' method ='post'>
    <input type='hidden' value=${u.username} name='yonghuming'>
   	<input type='submit' value='借书'>
   </form>
   <form action='showBorrow'>
   <input type='hidden' value=${u.username} name='name'>
   <input type='submit' value='还书'>
   </form>
   </center>
  </body>
</html>
