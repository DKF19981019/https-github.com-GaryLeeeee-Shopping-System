package myservlet.control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.data.Register;

/**
 * Servlet implementation class HandleRegister1
 */
public class HandleRegister extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		try {
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e) {}
	}
	
    public String HandleString(String s) {
		try {
			byte bb[]=s.getBytes("utf-8");
			s=new String(bb);
		}catch(Exception ee) {}
		 return s;
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String url="jdbc:mysql://127.0.0.1/shop?"+"user=root&password=19961219&characterEncoding=gb2312";
	Connection con;
	PreparedStatement sql;
	Register userBean=new Register();
	request.setAttribute("userBean", userBean);
	String logname=request.getParameter("logname").trim();
	String password=request.getParameter("password").trim();
	String again_password=request.getParameter("again_password").trim();
	String phone=request.getParameter("phone").trim();
	String address=request.getParameter("address").trim();
	String realname=request.getParameter("realname").trim();
	if(logname==null) 
		logname="";
	if(password==null) 
		password="";
	if(!password.equals(again_password)) {
		userBean.setBackNews("两次注册密码不同，注册失败");
		RequestDispatcher dispatcher=request.getRequestDispatcher("inputRegisterMess.jsp");
		dispatcher.forward(request, response);
		return;
	}
	boolean isLD=true;
	for(int i=0;i<logname.length();i++) {
		char c=logname.charAt(i);
		if(!((c<='z'&&c>='a')||(c<='Z'&&c>='A')||(c<='9'&&c>='0')))
			isLD=false;
	}
	boolean boo=logname.length()>0&&password.length()>0&&isLD;
	String backNews="";
	try {
		con=DriverManager.getConnection(url);
		String insertCondition="INSERT INTO user VALUE( , , , ,)";
		sql=con.prepareStatement(insertCondition);
		if(boo) {
			sql.setString(1, HandleString(logname));
			sql.setString(2, HandleString(password));
			sql.setString(3, HandleString(phone));
			sql.setString(4, HandleString(address));
			sql.setString(5, HandleString(realname));
			int m=sql.executeUpdate();
			if(m!=0) {
				backNews="注册成功";
				userBean.setBackNews(backNews);
				userBean.setLogname(logname);
				userBean.setAddress(HandleString(address));
				userBean.setPhone(HandleString(phone));
				userBean.setRealname(HandleString(realname));
			}
		}
		else {
			backNews="信息填写不完整或者名字中有非法字符";
			userBean.setBackNews(backNews);
		}
		con.close();
	}catch(SQLException exp) {
		backNews="该会员名已经被使用，请您更换名字"+exp;
		userBean.setBackNews(backNews);
		
	}
	RequestDispatcher dispatcher=request.getRequestDispatcher("inputRegisterMess.jsp");
	dispatcher.forward(request, response);
		
	
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

}
