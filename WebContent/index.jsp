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
<td><a href="lookCosmetic.jsp"><img src="透明图片.gif" width=80
						height=30 title="浏览商品"
						style="position: absolute; left: 550px; top: 120px;"></a></td>
										<td><a href="exitServlet"><img src="透明图片.gif" width=40
						height=30 title="退出"
						style="position: absolute; left: 750px; top: 120px;"></a></td>
				<td><a href="index.jsp"><img src="透明图片.gif" width=40
						height=30 title="首页"
						style="position: absolute; left: 370px; top: 120px;"></a></td>
<a href="lookOrderForm.jsp"><input type="image"
						src="返回顶部.gif" class="btn btn-default" data-toggle="tooltip"
						data-placement="left" title="返回顶部"
						style="position: absolute; right: 50px; top: 5670px; width: 70; height: 70"></a>
<!-- <img src="欢迎界面_08.jpg" width=750 height=750></img> -->
</BODY>
</html>