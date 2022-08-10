package com.controller;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

/**
 * Servlet implementation class DownloadController
 */
@WebServlet("/DownloadController")
public class DownloadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		try
		{
//			 String filename="Reviews-export.csv" ;
			 @SuppressWarnings("resource")
		     HSSFWorkbook hwb=new HSSFWorkbook();
			 HSSFSheet sheet=hwb.createSheet("new sheet");
			 HSSFRow rowhead=sheet.createRow((short)0);
			 rowhead.createCell((short) 0).setCellValue("UserName");
			 rowhead.createCell((short) 1).setCellValue("Name");
			 rowhead.createCell((short) 2).setCellValue("Date of Birth");
			 rowhead.createCell((short) 3).setCellValue("Phone Number");
			 rowhead.createCell((short) 4).setCellValue("Address");
			 rowhead.createCell((short) 5).setCellValue("State");
			 rowhead.createCell((short) 6).setCellValue("Gender");
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useSSL=false", "root", "muni2002");
			 Statement st=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			 ResultSet rs=st.executeQuery("Select * from profile;");
			 int i=1;
//			 FileInputStream inputStream = new FileInputStream(filename);
			 while(rs.next())
			 {
				 HSSFRow row=   sheet.createRow((short)i);
				 row.createCell((short) 0).setCellValue(rs.getString("username"));
				 row.createCell((short) 1).setCellValue(rs.getString("name"));
				 row.createCell((short) 2).setCellValue(rs.getString("dob"));
				 row.createCell((short) 3).setCellValue(rs.getString("phone"));
				 row.createCell((short) 4).setCellValue(rs.getString("address"));
				 row.createCell((short) 5).setCellValue(rs.getString("state"));
				 row.createCell((short) 6).setCellValue(rs.getString("gender"));
				 i++;
			 }
			 ByteArrayOutputStream outByteStream=new ByteArrayOutputStream();
			 hwb.write(outByteStream);
			 byte [] outArray = outByteStream.toByteArray();
			 response.setContentType("application/ms-excel");
			 response.setContentLength(outArray.length); 
			 response.setHeader("Expires:", "0"); // eliminates browser caching
			 response.setHeader("Content-Disposition", "attachment; filename=User Credentails.xls");
			 OutputStream outStream = response.getOutputStream();
			 outStream.write(outArray);
			 outStream.flush();
		} 
		catch (Exception e) 
		{
		    System.out.println(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
	}

}
