<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>详细</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
    <center><h3 style="font-size:50px;">借书信息</h3></center>
  <body style="background: url(images/backImage.jpg)">
<center>
<form action="rtOne" method ="post" >
ISBN<input type="text" name="n.isbn" value="<s:property value='n.isbn'/>" style="border:0px;background:rgba(0,0,0,0);" readonly='true' style="border-style:none"/><br>
书名<input type="text" name="n.name" value="<s:property value='n.name'/>" style="border:0px;background:rgba(0,0,0,0);" readonly='true' style="border-style:none"/><br>
价格<input type="text" name="n.price" value="<s:property value='n.price'/>" style="border:0px;background:rgba(0,0,0,0);" readonly='true' style="border-style:none"/><br>
<input type="hidden" name="n.stock" value="<s:property value='n.stock+1'/>"/><br>
<input type="hidden" name="n.lastaccess" value="<s:property value='%{#parameters.username[0]}'/>"/><br>
<input type="hidden" name="n.lastid" value="<s:property value='%{#parameters.id[0]}'/>"/><br>
<input type="submit" value="归还">
</form>
</center>
  </body>
</html>
