<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="static/js/jquery.min.js"></script>
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
 <!--  <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>-->
 <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </head>
  
  <body style="font-size:16px;font-weight:900;">
    <div style="border:1px solid #E7E7E7; width:600px; margin:0 auto;margin-top:150px;border-radius:10px;box-shadow:20px;">
    <form action="/AccountBook/books/update" style="margin-left:25%;">
    姓名： <input type="text" name="name"  value="${book.name }" class="form-control" style="width:250px;"/><br>
    电话号：<input type="text" name="phoneNum" value="${book.phoneNum }" class="form-control" style="width:250px;"/><br>
    钱数：<input type="text" name="money" value="${book.money }" class="form-control" style="width:250px;"/><br>
    斤数：  <input type="text" name="weight" value="${book.weight }" class="form-control" style="width:250px;"/><br>
    类型： <input type="text" name="type" value="${book.type }" class="form-control" style="width:250px;"/><br>
 日期： <input type="text" name="date" value="${book.date }" class="form-control" style="width:250px;"/><br>
    <input type="hidden" name="id" value="${book.id }"/>
    <input type="submit" value="修改" class="btn btn-success"/><br>
    </form>
    </div>
  </body>
</html>
