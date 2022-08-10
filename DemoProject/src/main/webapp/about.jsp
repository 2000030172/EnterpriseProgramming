<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>  
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
	margin :5px auto;
	border: solid 5px #00bfa6;
    width: 80%;
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
  padding: 20px;
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
.about
{	
	padding: 50px;
  	text-align: center;
  	background-color: #474e5d;
  	color: white;
  	border-radius: 15px;
}
.container ul,li
{
	padding:10px;
	text-align: left;
}
</style> 
</head>  
<body>
    <br>
    <br>
<div id="id1">
    <form method="post">        
        <div class="container"> 
	        	<div class="about">
	            	<h1>Constitution</h1>
	                <p>The supreme law of India</p>
	                <br/>
	            </div>
              <hr>
              <ul>
              	<li>Constitution of India contains 395 articles in 22 parts.</li>
              	<li>Additional articles and parts are inserted later through various amendments. There are also 12 schedules in the Indian Constitution.</li>
              	<li>It is a document lays down the framework that demarcates fundamental political code, structure, procedures, powers, and duties of government institutions and sets out fundamental rights, directive principles, and the duties of citizens.</li>
              	<li>It is a Sovereign Socialist Secular Democratic Republic with a parliamentary system of government.</li>
              	<li> The Republic is governed in terms of the Constitution of India which was adopted by the Constituent Assembly on 26th November, 1949 and came into force on 26th January, 1950.</li>
              </ul>
        </div>
    </form>
</div>
</body>
</html>
<%@include file="footer.jsp" %>