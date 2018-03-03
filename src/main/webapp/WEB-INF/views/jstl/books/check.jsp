<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script type="text/javascript" src="static/js/jquery.min.js"></script>
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
<link href="static/css/my.css" rel="stylesheet"/>
 <!--  <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>-->
 <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="static/js/all.js"></script>
</head>
  
  <body style="font-size:16px;font-weight:900;">
  <nav class="navbar navbar-default" role="navigation" style="width:1000px; margin:0 auto; margin-top:55px;" >
	<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand">记账簿</a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li><a href="add.jsp">记账</a></li>
			<li class="active"><a href="/AccountBook/books/check">查账</a></li>
			<li >
				<a href="/AccountBook/books/checkGiveBook" >
					已付
				</a>
			</li>
			<li style="margin-right:0px; margin-left:550px;"><img height="50px" width="100px" src="static/images/timg.jpg"/></li>
		</ul>
	</div>
	</div>
</nav>
  <div style="border:1px solid #E7E7E7; width:1000px; margin:0 auto;">
    <form action="/AccountBook/books/search">
    <input type="text" class="form-control" name="check" style="width:250px; float:left;"/>
    <input type="submit" class="btn btn-success" style="float:left;">
    <label><input type="radio" name="howcheck" value="1" style="margin-left:10px;"/>按姓名查</label><label><input type="radio" checked="checked" class="styled" name="howcheck" value="2" style="margin-left:10px;"/>按手机号查找</label>
    </form>
    <table class="table table-bordered">
     <thead><tr><th>姓名</th><th>电话号</th><th>钱数（元）</th><th>斤数（斤）</th><th>类型</th><th>日期</th><th>操作</th></tr></thead>
     <tbody>
     <c:if test="${empty books}">
      <span style="color:red;">你所搜索的账单不存在！！！</span>
    </c:if>
    <c:if test="${not empty books}">
    <c:forEach var="book" items="${books }">
    <tr>
	    <td>${book.name}</td>
	    <td>${book.phoneNum}</td>
	    <td>${book.money}</td>
	    <td>${book.weight}</td>
	    <td>${book.type}</td>
	    <td>${book.date}</td>
	    <td>
		    <ul class="nav nav-pills">
		    <li class="active" ><a href="/AccountBook/books/delete?id=${book.id }">已给</a></li>
		    <li class="active" style="margin-left:20px;"><a href="/AccountBook/books/updatePerpar?id=${book.id }">修改</a></li>
		    </ul>
		    
	    </td>
    </tr>
    </c:forEach>
     </c:if>
    </tbody>
   
    </table>
    </div>
  </body>
</html>

