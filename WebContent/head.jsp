<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<body>
	<!-- 超级注册start -->
	<div class="modal fade" id="myRegister" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">注册窗口</h4>
				</div>
				<div class="modal-body">
					<table>
						<div align="center">
							<form action="registerServlet" method="post" name=form>
								<table>
									用户名由字母、数字、下划线构成，*注释的项必须填写。
									<tr>
										<td>*用户名称</td>
										<td><input type=text name="logname" class="form-control"></td>
										<td>*用户密码</td>
										<td><input type=password name="password"class="form-control"></td>
									</tr>
									<tr>
										<td>*重复密码：</td>
										<td><input type=password name="again_password" class="form-control"></td>
										<td>联系电话：</td>
										<td><input type=text name="phone" class="form-control"></td>
									</tr>
									<tr>
										<td>邮寄地址：</td>
										<td><input type=text name="address" class="form-control"></td>
										<td>真实姓名：</td>
										<td><input type=text name="realname" class="form-control"></td>
										<td><input type=submit name="g" value="提交" class="btn btn-primary"></td>
									</tr>
								</table>
							</form>
						</div>
				</div>
				<!-- <div align="center"> -->
				<%-- 登录反馈信息：<jsp:getProperty name="loginBean" property="backNews"/> --%>
				<%-- <br>登录名称：<jsp:getProperty name="loginBean" property="logname"/> --%>
				<!-- </div> -->
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
	<!-- 超级注册end -->
	<!-- 超级登录start -->
	<div
		style="border: 2px solid gray; font-size: 100%; background-color: Gainsboro; text-align: right">
		<!-- 		以下一行为用户名 -->
<!-- 		用户名: -->
<%-- 		<jsp:getProperty name="loginBean" property="logname" /> --%>
<!-- 		<a href="index.jsp">主页</a>  -->
<!-- 		<a href="inputRegisterMess.jsp">注册</a> <a href="login.jsp">登陆</a> -->
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#myModal">登录</button>
		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#myRegister">注册</button>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">登录窗口</h4>
				</div>
				<div class="modal-body">
					<table>
						<FORM action="loginServlet" method="post">
							<tr>
								<td>登录名称：<Input type=text name="logname"
									class="form-control"></td>
							</tr>
							<tr>
								<td>输入密码：<Input type=password name="password"
									class="form-control"></td>
							</tr>
					</table>
					<Input type=submit class="btn btn-primary" name="g" value="提交">
					<button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
					</FORM>

				</div>
				<!-- <div align="center"> -->
				<%-- 登录反馈信息：<jsp:getProperty name="loginBean" property="backNews"/> --%>
				<%-- <br>登录名称：<jsp:getProperty name="loginBean" property="logname"/> --%>
				<!-- </div> -->
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
	<!-- 超级登录end -->

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
			<select class="form-control" name="radio" style="width: 7%">
				<option value="cosmetic_name">商品名称</option>
				<option value="cosmetic_number">商品版本号</option>
				<option value="cosmetic_price">商品价格</option>
			</select> <Input type=text name="searchMess" placeholder="请输入查询内容"
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
						style="position: fixed; right: 30px; top: 350px; width: 70; height: 70"></a></td>
				<td><a href="lookOrderForm.jsp"><input type="image"
						src="查看订单.png" class="btn btn-default" data-toggle="tooltip"
						data-placement="left" title="查看订单"
						style="position: fixed; right: 30px; top: 450px; width: 70; height: 70"></a>
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