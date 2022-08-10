package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.User;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String username=request.getParameter("uname");
		String password=request.getParameter("pwd");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?allowPublicKeyRetrieval=true&useSSL=false", "root", "muni2002");
			String query="select * from signup where username=? and password=?;";
			PreparedStatement ptmt=conn.prepareStatement(query);
			ptmt.setString(1,username);
			ptmt.setString(2, password);
			ResultSet rs=ptmt.executeQuery();
			if(username.equals("admin")&&password.equals("1234"))
			{
				session.setAttribute("uname", username);
				RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
				rd.include(request,response);	
			}
			else if(rs.next())
			{
				session.setAttribute("uname", username);
				RequestDispatcher rd=request.getRequestDispatcher("user_dashboard.jsp");
				rd.include(request,response);
			}
			else
			{
				out.println("Sorry UserName or Password Error!");
				RequestDispatcher rd=request.getRequestDispatcher("failure.jsp");
				rd.forward(request,response);
			}
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}

}
