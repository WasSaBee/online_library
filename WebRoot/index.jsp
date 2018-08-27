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
    <center><form action="login" method='get'style="margin-left: 50px;margin-top: 100px;">
    用户名<input type='text' name='u.username'><br>
    密码	<input type ="password" name="u.password"><br>
    <input type="submit" value="登陆"><br>
    </form>
    </center>
  </body>
</html>
