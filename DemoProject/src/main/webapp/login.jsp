<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>  
<html xmlns:h="http://java.sun.com/jsf/html"
      xmlns:f="http://java.sun.com/jsf/core">
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
    transition: 0.5s;
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
<script>
function viewPassword()
{
  var password = document.getElementById('password-field');
  var passStatus = document.getElementById('pass-status');
  if (password.type == 'password')
  {
    password.type='text';
    passStatus.className='fa fa-eye-slash';
    
  }
  else
  {
    password.type='password';
    passStatus.className='fa fa-eye';
  }
}
function validatePassword()
{
  var regularExpression  = /^[a-zA-Z0-9!@#$%^&*]{6,15}$/;
  var pw = document.getElementById("password-field").value;  
  if(pw.length < 6 && pw.length > 15 && !regularExpression.test(pw)) 
  {  
     alert("Password length must be atleast 6 characters with alphanumeric characters");  
     return false;  
  }  
}
</script>
</head>  
<body>
    <br>
    <br>
<div id="id1">
    <form method="post" action="UserController" onsubmit="validatePassword()">        
        <div class="container"> 
            <h1>Login</h1>
               <p>Please Enter your valid Credentials.</p>
               <br/>
              <hr>
              <div class="input-field">
                    <i class="fa-solid fa-user"></i>
                   <input type="text" placeholder="Username" id="uname" name="uname" required>
              </div>
               <div class="input-field">
                   <i class="fas fa-lock"></i>
                   <input type="password" placeholder="Password" name="pwd" id="password-field" required/>
                   <i id="pass-status" class="fa fa-fw fa-eye field-icon toggle-password" style="margin-left: -30px; cursor: pointer;" aria-hidden="true" onClick="viewPassword()"></i>
               </div>
               
            <button type="submit"  class="btn btn-success">Login</button>
        </div>
        <hr>
    <div class="container signin">
  	  <p>Doesn't have an account? <a href="register.jsp">Register</a>.</p>
  </div>
    </form>
</div>
</body>
</html>
<%@include file="feedback.jsp" %>
<%@include file="footer.jsp" %>