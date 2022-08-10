<%@ page errorPage="error.jsp" %>  
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<html>
	<head>
	 <meta charset="UTF-8"><meta http-equiv="X-UA-Compatible", content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
		<title>Home Page</title>
	</head>
	<style>
		.header-tag
		{
			border-bottom: 1px solid #ccc;  
   			padding: .5em 1em;  
   			display: flex;  
   			justify-content: space-between;  
   			transition: 1s;
		}
		.header-tag:hover
		{
		  box-shadow: 0 8px 100px 0 gray;
		}
		.top-header-tag
		{
			font-size: 1.5em;  
   			margin: .6em 0;  
   			display: inline-block; 
   			
		}
		.site-navigation-tag ul,li
		{
			margin:0;
			pading:0;
		}
		.site-navigation-tag li
		{
			display:inline-block;
			margin:1.4em 1em 1em 1em;
		}
		/* @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap'); */
		*{
		    margin:0;
		    padding: 0;
		    box-sizing: border-box;
		}
		body,input
		{
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
	<script type="text/javascript">
function startTime()
{
    var today=new Date();
    var h=today.getHours();
    var m=today.getMinutes();
    var s=today.getSeconds();
    m=checkTime(m);
    s=checkTime(s);
    document.getElementById('txt').innerHTML=h+":"+m+":"+s;
    t=setTimeout('startTime()',500);
}
function checkTime(i)
{
    if (i<10)
    {
        i="0" + i;
    }
    return i;
}
</script>
	<body onload="startTime()">
	<header>
		<div class="header-tag">
				<div id="top-header-tag">
					<h1><a href="cards_home.jsp">Constitution</a></h1>
				</div>
				<p style="font-family:cursive;font-size: 20px; text-align:center;display:inline-block;" id="txt"/><span> • </span><p style="font-family:cursive;font-size: 20px; text-align:center;" id="demo"/>
				<nav class="site-navigation-tag">
					<ul class="nav-tag">
						<li class="active"><a href="http://localhost:8080/DemoProject/">Home</a></li>
						<li class="active"><a href="about.jsp">About</a></li>
						<li class="active"><a href="contact.jsp">Contact</a></li>
						<li class="active"><a href="http://localhost:8080/DemoProject/login.jsp">Login</a></li>
						<li class="active"><a href="http://localhost:8080/DemoProject/register.jsp">Register</a></li>
					</ul>
				</nav>
		</div>
		</header>
		<script>
		const d=new Date();
		let text=d.toDateString();
		document.getElementById("demo").innerHTML=text;
		</script>
	</body>
</html>