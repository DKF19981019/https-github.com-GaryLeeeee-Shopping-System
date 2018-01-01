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
<!-- 	以下这行是bootstrap实现控件在同一行！！！！！！！！！！！！！！！！！ -->
	<div align="center" class="form-inline">

		<FORM action="searchByConditionServlet" Method="post">
			<br>

			<!-- 			<Input type=radio name="radio" value="cosmetic_number">商品版本号 -->
			<!-- 			<Input type=radio name="radio" value="cosmetic_name" checked="ok">商品名称 -->
			<!-- 			<Input type=radio name="radio" value="cosmetic_price">商品价格 <br> -->
			<!-- 			<div class="btn-group" data-toggle="buttons"> -->
			<!-- 				<label class="btn btn-default active"> <input type="radio" name="radio" value="cosmetic_name" -->
			<!-- 					checked> 商品名称 -->
			<!-- 				</label> <label class="btn btn-default"> <input type="radio" name="radio" value="cosmetic_number"> -->
			<!-- 					商品版本号 -->
			<!-- 				</label> <label class="btn btn-default"> <input type="radio" name="radio" value="cosmetic_price"> -->
			<!-- 					商品价格 -->
			<!-- 				</label> -->
			<!-- 			</div> -->
<!-- 			下拉列表实现单选 -->
			<select class="form-control" name="radio" style="width:7%">
				<option value="cosmetic_name">商品名称</option>
				<option value="cosmetic_number">商品版本号</option>
				<option value="cosmetic_price">商品价格</option>
			</select>
			<Input type=text name="searchMess" placeholder="请输入查询内容"
				class="form-control" style="width: 10%"><Input type=submit
				name="g" value="查询" class="btn btn-primary"><br>

		</FORM>
	</div>
	<div align="center">
		<table
			style="cellSpacing: 1; cellPadding: 1; width: 660; align: center; border: 0">
			<tr valign="bottom">

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

			</tr>
		</table>
	</div>

</body>
</html>