<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>  
<html> 
<head>
    <meta charset="UTF-8"><meta http-equiv="X-UA-Compatible">
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
.input-field input{
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
<%@ page import="java.util.*" %>
<%@ page import="com.controller.*" %>
<%@page import="java.sql.*"%>
<%
String Name = (String)session.getAttribute("user");
String userID=null;
String url="jdbc:mysql://localhost:3306/jsp?useSSL=false";
String username="root";
String password="muni2002";
Connection conn=null;
PreparedStatement ptmt;
ResultSet u=null;
try 
{
	Class.forName("com.mysql.cj.jdbc.Driver");	
}
catch (ClassNotFoundException e) 
{
	e.printStackTrace();
}
%>
<div id="id1">
    <form method="post" action="DisplayController">        
        <div class="container"> 
            <h1>Display Profile</h1>
               <p>Verify your details</p>
               <br/>
              <hr>
             <% try{ 
            	 conn = DriverManager.getConnection(url,username,password);
					String sql ="SELECT * FROM profile where name=?;";
					ptmt=conn.prepareStatement(sql);
					u= ptmt.executeQuery();
					while(u.next()){
			%>
              <div class="input-field">
                   <i class="fas fa-user-tie"></i>
                   <input type="text" placeholder="Username" name="user" value=<%=u.getString(7) %>/>
               </div>
               <div class="input-field">
                   <i class="fas fa-user"></i>
                   <input type="text" placeholder="Name" name="name" value=<%=u.getString(1) %>/>
               </div>
               <div class="input-field">
                   <i class="fa-solid fa-cake-candles"></i>
                   <input type="text" id="birthday" name="dob" value=<%=u.getString(2) %> required/>
               </div>
               <div class="input-field">
                   <i class="fa-solid fa-phone"></i>
                   <input type="text" placeholder="Phone Number" name="phone" value=<%=u.getString(3) %> required/>
               </div>
               <div class="input-field">
                   <i class="fa-solid fa-location-dot"></i>
                   <input type="text" placeholder="Address" name="address" value=<%=u.getString(4) %> required/>
               </div>
               <div class="input-field">
                   <i class="fa-solid fa-building-columns"></i>
                   <input type="text" placeholder="State" name="state" value=<%=u.getString(5) %> required/>
               </div>
               <div class="input-field-radio">
               		<input type="text" name="gender" value=<%=u.getString(6) %>/>
               </div>
               <%} 
               } catch (Exception e){
e.printStackTrace();
}%>
            <button type="submit"  class="btn btn-success">Submit</button>
        </div>
    </form>
</div>
</body>
</html>
<%@include file="footer.jsp" %>