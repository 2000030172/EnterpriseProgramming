<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
button {
    width: 150px;
    height: 49px;
    border:none;
    border-radius: 48px;
    background-color: #F08080;
    color:whitesmoke;
    text-transform: uppercase;
    font-weight:800;
    margin:10px 0;
    cursor: pointer;
}
button.hover{
    background-color: #00bfa6;
    cursor: pointer;
}
</style>
<body>
	<div align="center">
	<br><br><br><br>
	 <span style="font-size:100px">&#128551;</span>
	 <h1 style="font-family: cursive;font-size: 35px">Login Required..! or Session TimeOut</h1>
	 <a href="login.jsp"><button type="button">Login</button></a>
	 <br><br><br><br><br><br><br>
	</div>
<%@include file="footer.jsp" %>
</body>
</html>