<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session" />
<%@ page import="java.sql.*"%>
<html>
<HEAD><%@include file="head.jsp"%></HEAD>
<style>
body
  {
    background-image:url(查看订单界面_原图.jpg);
    width:100%;
    height:200%;
    background-size: cover;
  }
</style>
<BODY>
	<div align="center" style="position:relative;top:600px;">
		<%
			if (loginBean == null) {
				response.sendRedirect("login.jsp");//重定向到登陆页面
			} else {
				boolean b = loginBean.getLogname() == null || loginBean.getLogname().length() == 0;
				if (b)
					response.sendRedirect("login.jsp");//重定向到登陆页面
			}
			Connection con;
			Statement sql;
			ResultSet rs;
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (Exception e) {
			}
			try {
				String uri = "jdbc:mysql://127.0.0.1/shop";
				String user = "root";
				String password = "19961219";
				con = DriverManager.getConnection(uri, user, password);
				sql = con.createStatement();
				String cdn = "SELECT id,mess,sum FROM orderform where logname='" + loginBean.getLogname() + "'";
				rs = sql.executeQuery(cdn);
				out.print("<table border=2>");
				out.print("</tr>");
				out.print("<th width=100>" + "订单号");
				out.print("<th width=100>" + "信息");
				out.print("<th width=100>" + "价格");
				out.print("</TR>");
				while (rs.next()) {
					out.print("<tr>");
					out.print("<td>" + rs.getString(1) + "</td>");
					out.print("<td>" + rs.getString(2) + "</td>");
					out.print("<td>" + rs.getString(3) + "</td>");
					out.print("</tr>");
				}
				out.print("</table>");
				con.close();
			} catch (SQLException e) {
				out.print(e);
			}
		%>
	</div>
</BODY>
</html>