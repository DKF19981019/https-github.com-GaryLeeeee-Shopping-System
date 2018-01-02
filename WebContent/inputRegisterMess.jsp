<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="userBean" class="mybean.data.Register" scope="request" />
<head>
<%-- <%@include file="head.jsp" %> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body><font size=2>
	<div
		style="border: 2px solid gray; font-size: 100%; background-color: Gainsboro; text-align: right">
		<a href="index.jsp">主页</a> <a href="inputRegisterMess.jsp">注册</a> <a href="login.jsp">登陆</a>
	</div>
<div align="center">
<form action="registerServlet" method="post" name=form>
<table>用户名由字母、数字、下划线构成，*注释的项必须填写。
<tr><td>*用户名称</td><td><input type=text name="logname"></td>
	<td>*用户密码</td><td><input type=password name="password"></td>
</tr>
<tr><td>*重复密码：</td><td>
<input type=password name="again_password"></td>
<td>联系电话：</td><td><input type=text name="phone"></td></tr>
<tr><td>邮寄地址：</td><td>
<input type=text name="address"></td>
<td>真实姓名：</td><td><input type=text name="realname"></td>
<td><input type=submit name="g" value="提交"></td>
</tr>
</table>
</form>
</div>
</font>
<div align="center">
<p>注册反馈：
<jsp getProperty name="userBean" property="backNews" />
<table border=3>
<tr><td>会员名称：</td>
<td><jsp:getProperty name="userBean" property="logname"/></td>
</tr>
<tr><td>姓名：</td>
<td><jsp:getProperty name="userBean" property="realname"/></td>
</tr>
<tr><td>地址：</td>
<td><jsp:getProperty name="userBean" property="address"/></td>
</tr>
<tr><td>电话：</td>
<td><jsp:getProperty name="userBean" property="phone"/></td>
</tr>
</table>
</div>
</body>
</html>