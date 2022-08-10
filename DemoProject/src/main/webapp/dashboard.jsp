<%@ page errorPage="error.jsp" %>  
    <%@page import="java.text.*"%>
    <%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
        />
        <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta charset="utf-8">
  <style media="screen">
  /*@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');*/
*{
    margin:0;
    padding: 0;
    box-sizing: border-box;
}
body,input{
    font-family: 'Poppins',sans-serif;
}
    a:link {
      text-decoration: none;
    }
.topnav a
{
    float:right;
    text-align:center;
}
.topnav a:hover
{
    background-color: white;
    color:black;
}
#id1:hover
{
  box-shadow: 0 8px 100px 0 gray;
  border-radius: 30px;
}
    header {
      position: fixed;
      background: #22242A;
      width: 100%;
      z-index: 1;
      height: 60px;
    }
    .left_area h3 {
      color: #fff;
      margin: 0px;
      text-transform: uppercase;
      font-size: 22px;
      font-weight: 900;
    }
    .left_area span {
      color: #19B3D3;
    }
    .logout_btn {
      padding: 5px;
      background: #19B3D3;
      text-decoration: none;
      float: right;
      margin-top: -30px;
      margin-right: 40px;
      border-radius: 2px;
      font-size: 15px;
      font-weight: 600;
      color: #fff;
      transition: 0.5s;

    }
    .logout_btn:hover {
      background: #0B87A6;
    }
    .sidebar {
      background: #2f323a;
      margin-top: 70px;
      padding-top: 30px;
      position: fixed;
      left: 0;
      width: 250px;
      height: 100%;
      transition: 0.5s;
      transition-property: left;
    }

    .sidebar .profile_image {
      width: 100px;
      height: 100px;
      border-radius: 100px;
      margin-bottom: 10px;
    }

    .sidebar h4 {
      color: #ccc;
      margin-top: 0;

    }

    .sidebar a {
      color: #fff;
      display: block;
      width: 100%;
      line-height: 60px;
      text-decoration: none;
      padding-left: 40px;
      box-sizing: border-box;
      transition: 0.5s;

    }

    .sidebar a:hover {
      background: #19B3D3;
    }

    .sidebar i {
      padding-right: 10px;
    }

    label #sidebar_btn {
      z-index: 1;
      color: #fff;
      position: fixed;
      cursor: pointer;
      left: 300px;
      font-size: 20px;
      margin: 1px 0;
      transition: 0.5s;
      transition-property: color;
    }

    label #sidebar_btn:hover {
      color: #19B3D3;
    }

    #check:checked~.sidebar {
      left: -190px;
    }

    #check:checked~.sidebar a span {
      display: none;
    }

    #check:checked~.sidebar a {
      font-size: 20px;
      margin-left: 170px;
      width: 80px;
    }

    .content {
      margin-left: 250px;
      background: url(background.png) no-repeat;
      background-position: center;
      background-size: cover;
      height: 100vh;
      transition: 0.5s;
    }
	.content.h1
	{
		text-align: center;
	}
    #check:checked~.content {
      margin-left: 60px;
    }

    #check {
      display: none;
    }
  </style>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
</head>
<body>
<%String username=(String)session.getAttribute("uname");
HttpSession session123 = request.getSession(false);%>
<% if(username==null || session123==null) {%>
	<%@include file="session.jsp" %>
<% }
else if(username.equals("admin"))
{
%>
	  <input type="checkbox" id="check">
	  <!--header area start-->
	  <header>
	    <label for="check">
	      <i style="padding-left: 60px;margin-top: 17px;" class="fas fa-bars" id="sidebar_btn"></i>
	    </label>
	    <div class="left_area">
	      <h3 href="login.jsp">&#160;&#160;&#160;Constitution</h3>
	    </div>
	     <div class="topnav">
	    </div>
	  </header>

	  <div class="sidebar" style="margin-top:60px;">
	    <div align="center">
	      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEbQQVL316EnOguTFMcyWbTEnBqbD98ungpw&usqp=CAU" class="profile_image" alt="">
	      <h4 style="color: rgb(255, 255, 255);">Hello, Admin</h4>
	    </div>
	    <a href="dashboard.jsp"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a>
	    <a href="DisplayController"><i class="fa-solid fa-users"></i><span>Users</span></a>
	    <a href="DisplayContact"><i class="fa-brands fa-facebook-messenger"></i><span>Contact</span></a>
	    <a href="user_cards_dashboard.jsp"><i class="glyphicon glyphicon-credit-card"></i><span>Fundamental Rights</span></a>
	    <a href="fundamentals_insert.jsp"><i class="fa-solid fa-address-card"></i><span>Add Acts</span></a>
	    <a href="FundamentalDisplay"><i class="fa-solid fa-id-card"></i><span>Display Acts</span></a>
	    <a href="LogoutServlet"><i class="glyphicon glyphicon-log-out"></i><span>Log out</span></a>
	  </div>
	  <div class="content">
	    <br><br><br><br><br>
	    <div align="center">
	    	
	    	<span style="font-size:100px">&#128519;</span>
	    	<h1>Welcome Back, <h3>User : <%=username %></h3> </h1>
	    	<h3>Session ID:  <%= session.getId()%></h3>
	    	<h3>Login Time:  <%= new Date(session.getCreationTime())%></h3>
	    	<h3>Last Accessed Time: <%= new Date(session.getLastAccessedTime())%></h3>
	    </div>
	  </div>
<%} else {%>
<input type="checkbox" id="check">
	  <!--header area start-->
	  <header>
	    <label for="check">
	      <i style="padding-left: 60px;margin-top: 17px;" class="fas fa-bars" id="sidebar_btn"></i>
	    </label>
	    <div class="left_area">
	      <h3 href="login.jsp">&#160;&#160;&#160;Constitution</h3>
	    </div>
	     <div class="topnav">
	    </div>
	  </header>
<div class="sidebar" style="margin-top:60px;">
		    <div align="center">
		      <img src="data:image/jpeg;base64,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" class="profile_image" alt="">
		      <h4 style="color: rgb(255, 255, 255);">Hello, User </h4>
		    </div>
		    <a href="user_dashboard.jsp"><i class="fas fa-tachometer-alt"></i><span>Dashboard</span></a>
		    <a href="user_dashboard_account.jsp"><i class="glyphicon glyphicon-check"></i><span>Account</span></a>
		    <a href="user_cards_dashboard.jsp"><i class="glyphicon glyphicon-credit-card"></i><span>Fundamental Rights</span></a>
		    <a href="LogoutServlet"><i class="glyphicon glyphicon-log-out"></i><span>Log out</span></a>
		  </div>
		 <div class="content">
	<%@include file="prohibit.jsp" %>
	</div>
	<%}%>
</body>
</html>