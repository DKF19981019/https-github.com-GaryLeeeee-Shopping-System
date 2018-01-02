<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="mybean.data.DataByPage"
	import="com.sun.rowset.*"%>
<jsp:useBean id="dataBean" class="mybean.data.DataByPage"
	scope="session" />
<%@include file="head.jsp"%></head>
<html>
<style>
body
  {
    background-image:url(查询商品界面_原图.jpg);
    width:100%;
    height:200%;
    background-size: cover;
  }
</style>
<Body background=image/back.jpg>
	<center>
	<div style="position:relative;top:700px;">
		当前显示的内容是：
<!-- 		bootstrap的表格-悬停 -->
		<table class="table table-striped table-bordered table-hover  table-condensed" style="width:50%">
			<thead>
				<th>商品标识号</th>
				<th>商品名称</th>
				<th>商品制造商</th>
				<th>商品价格</th>
				<th>查看详情</th>
				<th>添加到购物车</font>
			</thead>
			<jsp:setProperty name="dataBean" property="pageSize" param="pageSize" />
			<jsp:setProperty name="dataBean" property="currentPage"
				param="currentPage" />
			<%
				CachedRowSetImpl rowSet = dataBean.getRowSet();
				if (rowSet == null) {
					out.print("没有任何查询信息，无法浏览");
					return;
				}
				rowSet.last();
				int totalRecord = rowSet.getRow();
				out.print("全部记录数" + totalRecord);
				int pageSize = dataBean.getPageSize();
				int totalPages = dataBean.getTotalPages();
				if (totalRecord % pageSize == 0)
					totalPages = totalRecord / pageSize;
				else
					totalPages = totalRecord / pageSize + 1;
				dataBean.setPageSize(pageSize);
				dataBean.setTotalPages(totalPages);
				if (totalPages >= 1) {
					if (dataBean.getCurrentPage() < 1)
						dataBean.setCurrentPage(dataBean.getTotalPages());
					if (dataBean.getCurrentPage() > dataBean.getTotalPages())
						dataBean.setCurrentPage(1);
					int index = (dataBean.getCurrentPage() - 1) * pageSize + 1;
					rowSet.absolute(index);
					boolean boo = true;
					for (int i = 1; i <= pageSize && boo; i++) {
						String number = rowSet.getString(1);
						String name = rowSet.getString(2);
						String maker = rowSet.getString(3);
						String price = rowSet.getString(4);
						String goods = "(" + number + "," + name + "," + maker + "," + price + ")#" + price; //便于购物车计算价格，尾缀上“#价格值”
						goods = goods.replaceAll("\\p{Blank}", "");
						String button = "<form action='putGoodsServlet'method='post'>"
								+ "<input type='hidden'name='java'value=" + goods + ">"
								+ "<input type='submit'value='放入购物车'></form>";
						String detail = "<form action='showDetail.jsp'method='post'>"
								+ "<input type='hidden'name='xijie'value=" + number + ">"
								+ "<input type='submit'value='查看细节'></form>";
						out.print("<tr>");
						out.print("<td>" + number + "</td>");
						out.print("<td>" + name + "</td>");
						out.print("<td>" + maker + "</td>");
						out.print("<td>" + price + "</td>");
						out.print("<td>" + detail + "</td>");
						out.print("<td>" + button + "</td>");
						out.print("</tr>");
						boo = rowSet.next();
					}
				}
			%>
		</table>
		<br>每页最多显示<jsp:getProperty name="dataBean" property="pageSize" />条信息
		<br>当前显示第<font color=blue> <jsp:getProperty
				property="currentPage" name="dataBean" />
		</font>页，共有 <font color=blue><jsp:getProperty property="totalPages"
				name="dataBean" /> </font>页
		<Table>
			<tr>
				<td><FORM action="" method=post>
						<input type=hidden name="currentPage"
							value="<%=dataBean.getCurrentPage() - 1%>"> <input
							type=submit name="g" value="上一页">
					</form></td>
				<td><FORM action="" method=post>
						<input type=hidden name="currentPage"
							value="<%=dataBean.getCurrentPage() + 1%>"> <input
							type=submit name="g" value="下一页">
					</form></td>
			</tr>
			<tr>
				<td><FORM action="" method=post>
						每页显示<input type=text name="pageSize" value=1 size=3> 条记录<input
							type=submit name="g" value="确定">
					</FORM></td>
				<td><FORM action="" method=post>
						输入页码：<input type=text name="currentPage" size=2>
						<input type =submit name="g" value="提交"></input>
					</FORM>
			</td>
			</tr>
		</Table>
	</div>
	</center>
		<a href="lookShoppingCar.jsp"><img src="透明图片.gif" width=200
		height=200 title="购物车"
		style="position: absolute; left: 470px; top: 320px;"></a>
	<a href="lookOrderForm.jsp"><img src="透明图片.gif" width=200
		height=200 title="查看订单"
		style="position: absolute; left: 850px; top: 320px;"></a>
	<a href="index.jsp"><img src="透明图片.gif" width=200 height=200
		title="返回主页" style="position: absolute; left: 1250px; top: 320px;"></a>
</body>
</html>