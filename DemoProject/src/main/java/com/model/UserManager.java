package com.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
public class UserManager 
{
	public static String url="jdbc:mysql://localhost:3306/jsp?useSSL=false";
	public static String username="root";
	public static String password="muni2002";
	public static Connection conn=null;
	public static PreparedStatement ptmt;
	public String validate(User u) throws Exception
	{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,password);
			ptmt=conn.prepareStatement("select * from signup where username=? and password=?;");
			ptmt.setString(1,u.getUsername());
			ptmt.setString(2,u.getPassword());
			String ans="";
//			ResultSet rs=ptmt.executeQuery();
//			int status=0;
//			if(rs.next())
//				status = rs.getInt(1);
//			conn.close();
//			if(status != 0)
//			{
//				return true;
//			}
//			return false;
//			boolean flag=ptmt.execute();
//			String ans="";
//			if(!flag)
//			{
//				ans="Successsfully Validated";
//			}
//			else
//			{
//				ans="Error occured";
//			}
			ResultSet rs=ptmt.executeQuery();
			int status=0;
			if(rs.next())
			{
				status = rs.getInt(1);
			}
			if(status != 0)
			{
				ans="Successsfully Validated";
			}
			else
			{
				ans="Error occured";
			}
//			return false;
			conn.close();
			return ans;
	}
	public String saveData(User u) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url,username,password);
		ptmt=conn.prepareStatement("insert into profile values(?,?,?,?,?,?,?,?)");
		ptmt.setString(1, u.getName());
		ptmt.setString(2, u.getDate());
		ptmt.setString(3, u.getPhone());
		ptmt.setString(4, u.getAddress());
		ptmt.setString(5, u.getState());
		ptmt.setString(6, u.getGender());
		ptmt.setString(7, u.getPuser());
		ptmt.setString(8, u.getPemail());
		boolean flag=ptmt.execute();
		String ans="";
		if(!flag)
		{
			ans="Data inserted Successsfully";
		}
		else
		{
			ans="Error occured";
		}
		conn.close();
		System.out.println("Executed");
		return ans;
	}
	public String saveContact(User u) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url,username,password);
		ptmt=conn.prepareStatement("insert into contact values(?,?,?,?)");
		ptmt.setString(1, u.getCname());
		ptmt.setString(2, u.getCemail());
		ptmt.setString(3, u.getCsub());
		ptmt.setString(4, u.getCmsg());
		boolean flag=ptmt.execute();
		String ans="";
		if(!flag)
		{
			ans="Data inserted Successsfully";
		}
		else
		{
			ans="Error occured";
		}
		conn.close();
		return ans;
	}
	public String saveRegister(User u) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url,username,password);
		ptmt=conn.prepareStatement("insert into signup values(?,?,?,?)");
		ptmt.setString(1, u.getRemail());
		ptmt.setString(2, u.getPassword());
		ptmt.setString(3, u.getRname());
		ptmt.setString(4, u.getRuser());
		boolean flag=ptmt.execute();
		String ans="";
		if(!flag)
		{
			ans="Registered Successful";
		}
		else
		{
			ans="Error Occured";
		}
		return ans;
	}
	public String admin_delete(User u) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url,username,password);
		ptmt=conn.prepareStatement("delete from profile where username=?;");
		ptmt.setString(1, u.getRuser());
		boolean flag=ptmt.execute();
		ptmt=conn.prepareStatement("delete from signup where username=?;");
		ptmt.setString(1, u.getRuser());
		boolean status=ptmt.execute();
		String answer="";
		if(!status && !flag)
		{
			System.out.println("Deletion Successfull");
			answer="Deleted Successfull";
		}
		else
		{
			answer="Error Occured";
		}
		conn.close();
		return answer;
	}
	public String admin_right_delete(User u) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url,username,password);
		ptmt=conn.prepareStatement("delete from fundamentals where title=?;");
		ptmt.setString(1, u.getRight());
		boolean flag=ptmt.execute();
		String answer="";
		if(!flag)
		{
			System.out.println("Deletion Successfull");
			answer="Deleted Successfull";
		}
		else
		{
			answer="Error Occured";
		}
		conn.close();
		return answer;
	}
	public String admin_update(User u) throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url,username,password);
		ptmt=conn.prepareStatement("update profile set name=?,dob=?,phone=? address=?, state=?,gender=? where username=?;");
		ptmt.setString(7, u.getPuser());
		ptmt.setString(1, u.getName());
		ptmt.setString(2, u.getDate());
		ptmt.setString(3, u.getPhone());
		ptmt.setString(4, u.getAddress());
		ptmt.setString(5, u.getState());
		ptmt.setString(6, u.getGender());
		boolean flag=ptmt.execute();
		String ans="";
		if(!flag)
		{
			ans="Updated Successfull";
		}
		else
		{
			ans="Error Occured";
		}
		conn.close();
		return ans;
	}
	public List<User> readData() throws Exception
	{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,password);
			ptmt=conn.prepareStatement("select * from profile;");
			ResultSet rs=ptmt.executeQuery();
			List<User> L = new ArrayList<User>();
			while(rs.next())
			{
				User u=new User();
				u.setPuser(rs.getString(7));
				u.setName(rs.getString(1));
				u.setDate(rs.getString(2));
				u.setPhone(rs.getString(3));
				u.setAddress(rs.getString(4));
				u.setState(rs.getString(5));
				u.setGender(rs.getString(6));
				u.setPemail(rs.getString(8));
				L.add(u);
			}
			conn.close();
			return L;
	}
	public List<User> readContact() throws Exception
	{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,password);
			ptmt=conn.prepareStatement("select * from contact;");
			ResultSet rs=ptmt.executeQuery();
			List<User> L = new ArrayList<User>();
			while(rs.next())
			{
				User u=new User();
				u.setKname(rs.getString(1));
				u.setKemail(rs.getString(2));
				u.setKsub(rs.getString(3));
				u.setKmsg(rs.getString(4));
				L.add(u);
			}
			conn.close();
			return L;
	}
	public static User getUsername(String username) throws Exception
	{  
	    User u=null;  
	    try
	    {  
	    	Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,password);
			ptmt=conn.prepareStatement("select * from profile where username=?;");
	        ptmt.setString(1,username);  
	        ResultSet rs=ptmt.executeQuery();  
	        if(rs.next())
	        {  
	        	u=new User();
				u.setPuser(rs.getString(7));
				u.setPemail(rs.getString(8));
				u.setName(rs.getString(1));
				u.setDate(rs.getString(2));
				u.setPhone(rs.getString(3));
				u.setAddress(rs.getString(4));
				u.setState(rs.getString(5));
				u.setGender(rs.getString(6));
	        }  
	        conn.close();
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	    return u;  
	}
	public List<User> readRights() throws Exception
	{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,password);
			ptmt=conn.prepareStatement("select * from fundamentals;");
			ResultSet rs=ptmt.executeQuery();
			List<User> L = new ArrayList<User>();
			while(rs.next())
			{
				User u=new User();
				u.setRight(rs.getString(1));
				u.setAbout(rs.getString(2));
				u.setEdit(rs.getString(3));
				L.add(u);
			}
			conn.close();
			return L;
	}
}