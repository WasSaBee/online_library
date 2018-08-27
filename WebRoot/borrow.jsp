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
    
    <title>借书列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <center><h3 style="font-size:50px;">借书列表</h3></center>
  <body style="background: url(images/backImage.jpg)">

   

    <s:iterator id="book" value="list" var='book'>
<table align="center">
<tr>
	<th>ISBN</th>
</tr>
<tr>
<td><s:property value="#book.isbn"/>&nbsp;</td>
<td><s:a action="rshowOne.action?isbn=%{#book.isbn}&username=%{#parameters.name[0]}&id=%{#book.id}">详细</s:a></td>
</tr>
</table>
    </s:iterator>
  </body>
</html>
