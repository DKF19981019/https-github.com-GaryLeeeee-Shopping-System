<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<HTML><HEAD><%@ include file = "head.jsp" %></HEAD>
<BODY background = image/back.jpg><font size = 2>
<div align = "center">
<br>输入商品的版本号或化妆品名称及价格.<br>
商品名称支持模糊查询
<br>输入价格是在2个值之间的价格，格式是：价格1-价格2<br>
例如258-689
<FORM action = "searchByConditionServlet" Method = "post">
	<br>输入查询信息：<Input type = text name = "searchMess"><br>
	<Input type = radio name = "radio" value = "cosmetic_number">商品版本号
	<Input type = radio name = "radio" value = "cosmetic_name" checked = "ok">商品名称
	<Input type = radio name = "radio" value = "cosmetic_price">商品价格
	<br><Input type = submit name = "g" value = "提交">
</FORM>
</div>
</font></BODY></HTML>