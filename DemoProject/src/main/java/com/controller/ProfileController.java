package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

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
 * Servlet implementation class ProfileController
 */
@WebServlet("/ProfileController")
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileController() {
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
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		HttpSession session = request.getSession();
//		String name=request.getParameter("name");
//		String email=request.getParameter("pemail");
		String date=request.getParameter("dob");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String state=request.getParameter("state");
		String gender=request.getParameter("gender");
//		String username=request.getParameter("user");
		String username = (String)session.getAttribute("ruser");
        String email = (String)session.getAttribute("remail");
        String name = (String)session.getAttribute("rname");
		try
		{
			User u=new User();
			UserManager um=new UserManager();
			u.setName(name);
			u.setDate(date);
			u.setPhone(phone);
			u.setAddress(address);
			u.setState(state);
			u.setGender(gender);
			u.setPuser(username);
			u.setPemail(email);
			if(um.saveData(u) != null)
			{
//				response.sendRedirect("success.jsp");
				System.out.println("welcome");
////				String ack = um.saveData(u);
//				pw.print(ack);
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
			}
			else
			{
//				HttpSession session=request.getSession();
				System.out.println("fail");
				RequestDispatcher rd=request.getRequestDispatcher("failure.jsp");
				rd.include(request, response);
			}
		}
		catch(Exception e)
		{
			pw.print(e.getMessage());
		}
//		RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
//		rd.include(request, response);
//		RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
	}

}
