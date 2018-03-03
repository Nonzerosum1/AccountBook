<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'TestAjaxRequestJson.jsp' starting page</title>
    
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
  
  <body>
  <table class="table table-bordered" id="books_table">
     <thead><tr><th>姓名</th><th>电话号</th><th>钱数（元）</th><th>类型</th><th>日期</th><th>操作</th></tr></thead>
     <tbody>
     
     </tbody>
  </table>
  <script type="text/javascript">
    $(function(){
       $.ajax({
            url:"/AccountBook/books/JsonTest2",/*请求的地址*/
            data:"value=12",/*数据携带*/
            type:"get",/*请求的方式*/
            dataType:"json",
            success:function(result){/*请求后得到的结果*/
             console.log(result);
             build_books_table(result);
              
            }
       });
    
    });
    function build_books_table(result){
    $.each(result,function(index,item){
    var name=$("<td></td>").append(item.name);
    var phoneNum=$("<td></td>").append(item.phoneNum);
    var money=$("<td></td>").append(item.money);
     var type=$("<td></td>").append(item.type);
      var date=$("<td></td>").append(item.date); 
      var editButton=$("<button></button>").addClass("btn btn-primary btn-sm").append("编辑");
      var deleteBtn=$("<button></button>").addClass("btn btn-danger btn-sm").append("删除");
      var btn=$("<td></td>").append(editButton).append(deleteBtn);
      $("<tr></tr>").append(name)
                    .append(phoneNum)
                    .append(money)
                    .append(type)
                    .append(date)
                    .append(btn)
                    .appendTo("#books_table tbody");
    });
    }
  </script>
  </body>
</html>
