<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<body>
	<div
		style="border: 2px solid gray; font-size: 100%; background-color: Gainsboro; text-align: right">
		<a href="inputRegisterMess.jsp">注册</a> <a href="login.jsp">登陆</a>
	</div>
	<div align="center">
		<font color=red>
			<h3>h9小卖部</h3>
		</font>

		<table
			style="cellSpacing: 1; cellPadding: 1; width: 660; align: center; border: 0">
			<tr valign="bottom">
				<td><a href="lookCosmetic.jsp"><img src="浏览商品.gif" width=70
						height=70 title="浏览商品"></a></td>
				<td><a href="searchCosmetic.jsp">查询化妆品</a></td>
				<td><a href="lookShoppingCar.jsp"
					style="position: absolute; right: 350px; top: 180px;"><img
						src="购物车图标.jpg" width=70 height=70 title="查看购物车"></a></td>
				<td><a href="lookOrderForm.jsp"
					style="position: absolute; right: 350px; top: 300px;"><img
						src="查看订单.png" width=70 height=70 title="查看订单"></a></td>
				<td><a href="exitServlet">退出</a></td>
				<td><a href="index.jsp"><img src="主页.gif" width=70
						height=70 title="主页"></a></td>
			</tr>
		</table>
	</div>

</body>
</html>