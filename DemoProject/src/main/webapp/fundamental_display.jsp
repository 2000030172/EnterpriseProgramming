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
	margin:0.5px auto;
	border: solid 5px #00bfa6;
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
table 
{
  width: 100%;
  border-radius: 4px;
}

th, td 
{
  text-align: center;
  padding: 8px;
  border-radius: 2px;
  background-color: white;
}
th
{
	background-color: white;
	color: white;
}
.required
{
	color:red;
}
.card {
  box-shadow: 0 4px 8px 0 black;
  transition: 0.5s;
  width: 250;
  padding: 20px;;
  border-radius: 20px;
}
.row {
    margin: 0 -5px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}
.card:hover {
  box-shadow: 0 8px 100px 0 grey;
  border-radius: 20px;
}
tr:nth-child(even) {background-color: #f2f2f2;}
</style> 
</head>  	
<body>
    <br>
    <br>
<%String username=(String)session.getAttribute("uname");
HttpSession session123 = request.getSession(false);%>
<% if(username==null || session123==null) {%>
	<%@include file="session.jsp" %>
<% }
else if(username.equals("admin"))
{
%>
<div id="id1">      
        <div class="container"> 
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.*"%>
	<%@ page import="com.controller.*" %>
	<%@ page import="com.model.*" %>
	<%	 List<User> L = (List<User>) request.getAttribute("fund"); %>
	 <div  id="makepdf">
	<table border="0" style="background-color: white">
		
		<% for(User u:L) { %>
				<td>
					<div class="column">
						<div class="container">
					      <div class="card" style="background-color: aqua;">
					        <% HttpSession session34 = request.getSession();
					        session34.setAttribute("edit", u.getEdit()); %><h2><%= u.getRight() %></h2><% session.setAttribute("edit", u.getEdit()); %> <p style="font-family: cursive;">(Mark : <%= u.getEdit() %>)</p> <a href="fundamental_update.jsp?edit=<%= u.getRight()%>"><button style="width: 30px; height: 30px;background-color: aqua"><i class="fa-solid fa-pen-to-square"></i></button></a> <a href="DeleteRight?right=<%=u.getRight()%>"><button style="width: 30px; height: 30px; background-color: aqua"><i class="fa-solid fa-trash"></i></button></a>
					        <hr/>
					        <p><%= u.getAbout() %></p>
					      </div>
					    </div>
					 </div>
				</td>
		<%} %>
	</table>
	</div>
	<br/>
	<p><span class="required">*</span>Download as pdf file</p>
	<span style='font-size:30px;'>&#8595;</span>
	<br/>
	<button id="button" style="width: 80px; height: 30px; background-color: blue; border-radius: 8px"><i class="fa-solid fa-print"></i>&#160;Print</button>
        </div>
</div>
<%} else {%>
	<%@include file="prohibit.jsp" %>
<%} %>
</body>
<script>
    var button = document.getElementById("button");
    var makepdf = document.getElementById("makepdf");
  
    button.addEventListener("click", function () {
        var mywindow = window.open("", "PRINT", 
                "height=400,width=600");
  
        mywindow.document.write(makepdf.innerHTML);
  
        mywindow.document.close();
        mywindow.focus();
        mywindow.print();
        mywindow.close();
        mywindow.save("Rights.pdf");
        return true;
    });
</script>
</html>