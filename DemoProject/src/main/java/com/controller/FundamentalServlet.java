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

/**
 * Servlet implementation class FundamentalServlet
 */
@WebServlet("/FundamentalServlet")
public class FundamentalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FundamentalServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String right=request.getParameter("right");
		String des=request.getParameter("about");
		String edit=request.getParameter("edit");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?allowPublicKeyRetrieval=true&useSSL=false", "root", "muni2002");
			String query="insert into fundamentals values(?,?,?);";
			PreparedStatement ptmt=conn.prepareStatement(query);
			ptmt.setString(1,right);
			ptmt.setString(2,des);
			ptmt.setString(3,edit);
			boolean flag=ptmt.execute();
			if(!flag)
			{
				RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
				rd.include(request,response);	
			}
			else
			{
				out.println("Error occured...!");
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
