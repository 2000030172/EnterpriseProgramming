<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>  
    <%@page import="java.sql.*"%>
    <%@page import="java.text.*"%>
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
	transition: 1s;
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
    background-color: white;
    margin: 10px 0;
    border-radius: 55px;
    grid-template-columns: 15% 85%;
    padding: 0 0.1rem;
    position: relative;
}
.input-field input,select, option{
  width: 80%;
  height: 45px;
  background:none;
  outline: none;
  border: none;
  color: black;
  border-radius: 15px;
  font-size: 1.5rem;
  
}
.input-field label{
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
   <%@ page import = "java.io.*" %>
   <%@ page import = "java.util.*" %>
   <%@ page import = "java.time.*" %>
   <%@ page import = "com.controller.*" %>
    <form method="post" action="#">  
    <div id="id1">      
        <div class="container"> 
              <%    
			              String url="jdbc:mysql://localhost:3306/jsp?useSSL=false";
			              String user="root";
			              String password="muni2002";
			              Connection conn;
			              PreparedStatement pst;
                        ResultSet rs;
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection(url,user,password);
                        String id = (String)session.getAttribute("uname");
                        pst = conn.prepareStatement("select * from profile where username = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                         while(rs.next())
                         {
                    
                    %>
              		<div class="input-field">
                   <label>User : </label>
                   <input type="text" placeholder="Username" name="username" value= <%= rs.getString("username") %> disabled/>
               </div>
               <div class="input-field">
               		<label>Email : </label>
                   <input type="text" placeholder="Email"  name="pemail" value=<%= rs.getString("email")  %> disabled>
              </div>
               <div class="input-field">
               		<label>Name : </label>
                   <input type="text" placeholder="Name" name="name" value=<%= rs.getString("name") %> disabled/>
               </div>
               <%
		               SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		               SimpleDateFormat sdf2 = new SimpleDateFormat("dd-MMMM-yyyy");
		               String ds2 = sdf2.format(sdf1.parse(rs.getString("dob")));
					SimpleDateFormat format1=new SimpleDateFormat("yyyy-mm-dd");
					SimpleDateFormat format2=new SimpleDateFormat("dd-MMMM-YYYY");
					String result=format2.format(format1.parse(rs.getString("dob")));
				%>
               <div class="input-field">
               		<label>DOB : </label>
                   <input type="text" id="birthday" name="dob" value=<%=ds2 %> disabled/>
               </div>
               <div class="input-field">
               		<label>Phone : </label>
                   <input type="tel" placeholder="Phone Number" name="phone" value=<%= rs.getString("phone") %> disabled/>
               </div>
               <div class="input-field">
               		<label>Address : </label>
                   <input type="text" placeholder="Address" name="address" value=<%= rs.getString("address") %> disabled/>
               </div>
               <div class="input-field">
               		<label>State : </label>
               		<select disabled>
               		<option><%= rs.getString("state") %></option>
               		</select> 
               </div>
               <div class="input-field">
               		<label>Gender : </label>
               		<input type="text" placeholder="Gender" name="sex" value=<%= rs.getString("gender") %> disabled/>
               </div>
               <%} %>
              </div>
              </div>
    </form>
</body>
</html>