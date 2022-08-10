<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>  
    <%@page import="java.sql.*"%>
<html> 
<head>
    <meta charset="UTF-8"><meta http-equiv="X-UA-Compatible", content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

<style>
/* @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap'); */
*{
    margin:0;
    padding: 0;
    box-sizing: border-box;
}
body,input{
    font-family: 'Poppins',sans-serif;
}


.panels.container{
    position:absolute;
    width:100%;
    height:100%;
    top:0;
    left:0;
    display:grid;
    grid-template-columns: repeat(2,1fr);
}
.panel{
    display:flex;
    flex-direction:column;
    align-items:center;
    justify-content:center;
    text-align:center;
    z-index:7;
}
button {
    width: 150px;
    height: 49px;
    border:none;
    border-radius: 48px;
    background-color: #F08080;
    color:whitesmoke;
    text-transform: uppercase;
    font-weight:600;
    margin:10px 0;
    cursor: pointer;
}
button.hover{
    background-color: #00bfa6;
    cursor: pointer;
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
a {
  color: dodgerblue;
}
.signin {
  background-color: #f1f1f1;
  text-align: center;
  border-radius:25px;
}
#id1
{
	margin:5px auto;
	border: solid 5px #00bfa6;
    width: 35%;
	text-align: center;
	background-color:white;		
	position: center;
	border-radius: 30px;
	box-shadow: 0px 0px 24px #5C5696;
}
#id1:hover
{
  box-shadow: 0 8px 100px 0 gray;
  border-radius: 30px;
}
.container {
  padding: 30px;
	align-items: center;
	justify-content: center;
}
.span{
    text-align: center;
    line-height:80px;
    color: #acacac;
    font-size: 1.5rem;
    float: right;
    margin-left: 340px;
    position: relative;
    display:grid;
    z-index: 2;
}
.input-field
{
    max-width: 380px;
    height:55px;
    width: 100%;
    background-color: #f0f0f0;
    margin: 10px 0;
    border-radius: 55px;
    grid-template-columns: 15% 85%;
    padding: 0 0.1rem;
    position: relative;
}
.input-field-radio
{
    max-width: 380px;
    height:20px;
    width: 100%;
    background-color: #f0f0f0;
    margin: 10px 0;
    border-radius: 55px;
    grid-template-columns: 15% 85%;
    padding: 0 0.1re;
    position: relative;
}
.input-field input,select,option{
  width: 80%;
  height: 45px;
  background:none;
  outline: none;
  border: none;
  color: black;
  border-radius: 15px;
  font-size: 1.5rem;
  
}
.input-field i{
    text-align: center;
    line-height: 55px;
    color: #acacac;
    font-size: 1.5rem;
}
#outer
{
    width:100%;
    text-align: center;
}
.inner
{
    display: inline-block;
}
</style> 
</head>  
<body>
    <br>
    <br>
   <%@ page import = "java.io.*" %>
   <%@ page import = "java.util.*" %>
   <%@ page import = "com.controller.*" %>
<%  
if(request.getParameter("submit")!=null)
{
	String url="jdbc:mysql://localhost:3306/jsp?useSSL=false";
	String user="root";
	String password="muni2002";
	Connection conn;
	PreparedStatement ptmt;
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url,user,password);
	ptmt=conn.prepareStatement("update profile set name=?,dob=?,phone=?, address=?, state=?,gender=? where username=?;");
	String username=request.getParameter("username");
	String name=request.getParameter("name");
	SimpleDateFormat format1=new SimpleDateFormat("yyyy-mm-dd");
	SimpleDateFormat format2=new SimpleDateFormat("dd-mm-yyyy");
	String date=format1.format(format2.parse(request.getParameter("dob")));
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	String state=request.getParameter("state");
	String gender=request.getParameter("sex");
	ptmt.setString(7, username);
	ptmt.setString(1, name);
	ptmt.setString(2, date);
	ptmt.setString(3, phone);
	ptmt.setString(4, address);
	ptmt.setString(5, state);
	ptmt.setString(6, gender);
	ptmt.executeUpdate(); 
	String redirectURL = "http://localhost:8080/DemoProject/DisplayController";
	response.sendRedirect(redirectURL);
}
%>  
<div id="id1">
    <form method="get">        
        <div class="container"> 
            <h1>Update</h1>
               <p>Please Enter your Details to Update.</p>
               <br/>
              <hr>
              <%          String url="jdbc:mysql://localhost:3306/jsp?useSSL=false";
			              String user="root";
			              String password="muni2002";
			              Connection conn;
			              PreparedStatement pst;
                        ResultSet rs;
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection(url,user,password);
                        String id = request.getParameter("username");
                        pst = conn.prepareStatement("select * from profile where username = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                         while(rs.next())
                         {
                    
                    %>
              <div class="input-field">
                   <i class="fas fa-user-tie"></i>
                   <input type="text" placeholder="Username" name="username" value= <%= rs.getString("username") %> disabled/>
               </div>
               <div class="input-field">
                   <i class="fas fa-user"></i>
                   <input type="text" placeholder="Name" name="name" value=<%= rs.getString("name") %> required/>
               </div>
               <%
               SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
               SimpleDateFormat sdf2 = new SimpleDateFormat("dd-MMMM-yyyy");
               String ds2 = sdf2.format(sdf1.parse(rs.getString("dob")));
					SimpleDateFormat format1=new SimpleDateFormat("yyyy-mm-dd");
					SimpleDateFormat format2=new SimpleDateFormat("dd-mm-yyyy");
					String result=format2.format(format1.parse(rs.getString("dob")));
				%>
               <div class="input-field">
                   <i class="fa-solid fa-cake-candles"></i>
                   <input type="text" id="birthday" name="dob" value=<%=ds2 %> disabled/>
               </div>
               <div class="input-field">
                   <i class="fa-solid fa-phone"></i>
                   <input type="tel" placeholder="Phone Number" name="phone" value=<%= rs.getString("phone") %> required/>
               </div>
               <div class="input-field">
                   <i class="fa-solid fa-location-dot"></i>
                   <input type="text" placeholder="Address" name="address" value=<%= rs.getString("address") %> required/>
               </div>
               <div class="input-field">
                   <i class="fa-solid fa-building-columns"></i>
                  <select name="state" placeholder="State"  required> 
                  		<option ><%= rs.getString("state") %></option> 
						<option value="Andhra Pradesh">Andhra Pradesh </option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam </option>
						<option value="Bihar">Bihar</option>
						<option value="Chattisgarh">Chattishgarh </option>
						<option value="Goa">Goa </option>
						<option value="Gujarat">Gujarat </option>
						<option value="Haryana">Haryana </option>
						<option value="Himachal Pradesh">Himachal Pradesh</option> 
						<option value="Jammu & Kashmir">Jammu & Kashmir</option>
						<option value="Jharkhand">Jharkhand </option>
						<option value="Karnataka">Karnataka </option>
						<option value="Kerala">Kerala </option>
						<option value="Madhya Pradesh">Madhya Pradesh </option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Manipur">Manipur </option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram </option>
						<option value="Nagaland">Nagaland </option>
						<option value="Odisha">Odisha </option>
						<option value="Punjab">Punjab </option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim </option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Telangana">Telangana</option>
						<option value="Tripura">Tripura </option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Uttarakhand">Uttarakhand </option>
						<option value="West Bengal">West Bengal</option>
				</select>
               </div>
               <div class="input-field">
               		<i class="fa-solid fa-user"></i>
					 <select name="sex" placeholder="Gender"  required> 
                  		<option ><%= rs.getString("gender") %></option> 
						<option value="Male">Male </option>
						<option value="Female">Female</option>
					 </select>
               </div>
               <%} %>
              
            <button type="submit" name="submit" id="submit" class="btn btn-success">Update</button>
        </div>
    </form>
</div>
</body>
</html>
<%@include file="footer.jsp" %>