<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@include file="head.jsp" %></head>
<BODY background=image/back.jpg><center><font size=2>
<div style="align:center">
<%   try{  Class.forName("com.mysql.jdbc.Driver");
}
     catch(Exception e){}
     String uri="jdbc:mysql://127.0.0.1/shop?"+"user=root&password=19961219&characterEncoding=utf-8";
     Connection con;
     Statement sql;
     ResultSet rs;
     try{
    	 con=DriverManager.getConnection(uri);
    	 sql=con.createStatement();
    	 //读取classify表，获得分类：
    	 rs=sql.executeQuery("SELECT * FROM classify");
    	 out.print("<form action='queryServlet' method='post'>");
    	 out.print("<select name='fenleiNumber'>");
    	 while(rs.next()){
    		 int id=rs.getInt(1);
    		 String name=rs.getString(2);
    		 out.print("<option value="+id+">"+name+"</option>");				 
    	 }
    	 out.print("</select>");
    	 out.print("<input type='submit'value='提交'>");
    	 out.print("</form>");
    	 con.close();
     }
     catch(SQLException e){
    	 out.print(e);
     }
%>
</div>
</font>
</center></BODY>
</body>
</html>