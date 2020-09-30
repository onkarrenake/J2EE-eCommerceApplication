package com.online_shopping_servlet;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	public static int LoginID;
	private static final long serialVersionUID = 1L;
	public static Connection con;
	public static Statement stmnt;
    public LoginServlet() {
        super();
    }
    public void init(ServletConfig config){
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Shopping","root","Sadguru@123");
    		stmnt = con.createStatement();
    	}catch(Exception e){
    		System.out.println(e);
    	}
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email_ID = request.getParameter("Email_ID");
		String Password = request.getParameter("Password");
		
		HttpSession session = request.getSession();
		session.setAttribute("username", Email_ID);
		@SuppressWarnings("unused")
		String user = (String)session.getAttribute("username");
		try {
			ResultSet result = stmnt.executeQuery("select * from Login_Signup where Email_ID = '"+Email_ID+"' and Password = '"+Password+"'");
			if(result.next()){
				RequestDispatcher RD1 = request.getRequestDispatcher("Home.jsp");	
				RD1.include(request, response);
				LoginServlet.LoginID = 1;
			}else{
				session.setAttribute("incorrect", Email_ID);
				RequestDispatcher RD1 = request.getRequestDispatcher("LoginJSP.jsp");	
				RD1.include(request, response);
				LoginServlet.LoginID = 0;
				session.invalidate();
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}
