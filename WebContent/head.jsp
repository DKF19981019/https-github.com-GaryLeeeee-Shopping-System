<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<body>

	<div
		style="border: 2px solid gray; font-size: 100%; background-color: Gainsboro; text-align: right">
		<a href="inputRegisterMess.jsp">注册</a> <a href="login.jsp">登陆</a>
	</div>
	<div align="center">

		<FORM action="searchByConditionServlet" Method="post">
			<br><Input type=text name="searchMess" placeholder="请输入查询内容"><Input type=submit name="g" value="查询"><br>
			<Input type=radio name="radio" value="cosmetic_number">商品版本号
			<Input type=radio name="radio" value="cosmetic_name" checked="ok">商品名称
			<Input type=radio name="radio" value="cosmetic_price">商品价格 <br>
			
		</FORM>
	</div>
	<div align="center">
		<table
			style="cellSpacing: 1; cellPadding: 1; width: 660; align: center; border: 0">
			<tr valign="bottom">
				<td><a href="lookCosmetic.jsp"><img src="浏览商品.gif" width=70
						height=70 title="浏览商品"></a></td>
				<td><a href="lookShoppingCar.jsp"><input type="image"
						src="购物车图标.gif" class="btn btn-default" data-toggle="tooltip"
						data-placement="left" title="查看购物车"
						style="position: fixed; right: 50px; top: 150px; width: 70; height: 70"></a></td>
				<td><a href="lookOrderForm.jsp"><input type="image"
						src="查看订单.png" class="btn btn-default" data-toggle="tooltip"
						data-placement="left" title="查看订单"
						style="position: fixed; right: 50px; top: 300px; width: 70; height: 70"></a>
					<script>
						$(function() {
							$("[data-toggle='tooltip']").tooltip();
						});
					</script></td>
				<td><a href="exitServlet">退出</a></td>
				<td><a href="index.jsp"><img src="主页.gif" width=70
						height=70 title="主页"></a></td>
			</tr>
		</table>
	</div>

</body>
</html>