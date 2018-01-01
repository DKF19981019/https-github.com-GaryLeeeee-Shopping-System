<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<html>
<head><%@include file="head.jsp" %></head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>视图</title>
<style>
body
  {
    background-image:url(主界面_原图.jpg);
    width:100%;
    height:200%;
    background-size: cover;
  }

</style>
<BODY>
<a href="lookOrderForm.jsp"><input type="image"
						src="查看订单.png" class="btn btn-default" data-toggle="tooltip"
						data-placement="left" title="返回顶部"
						style="position: absolute; right: 50px; top: 5670px; width: 70; height: 70"></a>
<!-- <img src="欢迎界面_08.jpg" width=750 height=750></img> -->
</BODY>
</html>