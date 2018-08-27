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
    
    <title>在库图书</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
    <center><h3 style="font-size:50px;">在库图书</h3></center> 
  <body style="background: url(images/backImage.jpg)">
  <%String usrname=request.getParameter("yonghuming"); %>
当前用户  <%=usrname %>
    
    <s:iterator id="book" value="list" var='book'>
<table align="center">
<tr>
	<th>ISBN</th>
	<th>书名</th><th>价格</th><th>库存</th>
</tr>
<tr>
<td><s:property value="#book.isbn"/>&nbsp;</td>
<td><s:property value="#book.name"/>&nbsp;</td>
<td><s:property value="#book.price"/>&nbsp;</td>
<td><s:property value="#book.stock"/></td>
<td><s:a action="queryOne.action?isbn=%{#book.isbn}&username=%{#parameters.yonghuming[0]}">详细</s:a></td>
</tr>
</table>
    </s:iterator>
  </body>
</html>
