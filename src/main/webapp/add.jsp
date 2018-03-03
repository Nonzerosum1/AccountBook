<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>记账簿</title>
    
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
  <nav class="navbar navbar-default" role="navigation" style="width:1000px; margin:0 auto; margin-top:55px;" >
	<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand">记账簿</a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">记账</a></li>
			<li><a href="/AccountBook/books/check">查账</a></li>
			<li>
				<a href="/AccountBook/books/checkGiveBook" >
					已付
				</a>
			</li>
			<li style="margin-right:0px; margin-left:610px;"><img height="50px" width="100px" src="static/images/timg.jpg"/></li>
		</ul>
	</div>
	</div>
</nav>
  <div style="border:1px solid #E7E7E7; width:1000px; margin:0 auto;">
    <form action="/AccountBook/books/insert" style="margin-left:9%;">
    姓名： <input type="text" name="name"  class="form-control" style="width:250px;"/><br>
    电话号：<input type="text" name="phoneNum" class="form-control" style="width:250px;"/><br>
    钱数：<input type="text" name="money" class="form-control" style="width:250px;"/><br>
    斤数：  <input type="text" name="weight" class="form-control" style="width:250px;"/><br>
    类型：<select class="form-control" name="type" style="width:250px;">
      <option>--请选择--</option>
      <option>大白鸡</option>
      <option>三黄鸡</option>
      <option>乌鸡</option>
      <option>黑爪子鸡</option>
    </select><br>
    <input type="submit" value="提交" class="btn btn-success"/><br>
    </form>
    </div>
  </body>
</html>
