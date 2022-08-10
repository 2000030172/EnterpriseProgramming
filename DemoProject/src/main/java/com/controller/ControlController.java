package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.User;
import com.model.UserManager;

/**
 * Servlet implementation class ControlController
 */
@WebServlet("/ControlController")
public class ControlController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControlController() {
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
		String cname=request.getParameter("cname");
		String cemail=request.getParameter("cemail");
		String csub=request.getParameter("csub");
		String cmsg=request.getParameter("cmsg");
		try
		{
			User u=new User();
			UserManager um=new UserManager();
			u.setCname(cname);
			u.setCemail(cemail);
			u.setCmsg(cmsg);
			u.setCsub(csub);
			if(um.saveContact(u)!=null)
			{
				pw.print("Message has send successfully....!");
			}
			else
			{
				pw.print("Error Occured");
			}
		}
		catch(Exception e)
		{
			pw.print(e.getMessage());
		}
	}

}
