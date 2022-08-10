package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.User;
import com.model.UserManager;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String username=request.getParameter("ruser");
		String email=request.getParameter("remail");
		String name=request.getParameter("rname");
		String password=request.getParameter("pwd");
		HttpSession session = request.getSession();
		try
		{
			User u=new User();
			UserManager um=new UserManager();
			u.setRuser(username);
			u.setRemail(email);
			u.setRname(name);
			u.setPassword(password);
			if(um.saveRegister(u)!=null)
			{
				pw.print("Registered Successfull");
				session.setAttribute("ruser", username);
				session.setAttribute("remail", email);
				session.setAttribute("rname", name);
				System.out.println("Success");
				RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
				rd.include(request, response);
			}
			else
			{
				pw.print("Failure from backend");
				System.out.println("Success");
				RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
				rd.include(request, response);
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			pw.println(e.getMessage());
		}
	}
}
