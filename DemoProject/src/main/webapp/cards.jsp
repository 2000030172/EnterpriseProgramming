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
	text-align: center;
	background-color:white;		
	position: center;
	border-radius: 30px;
	box-shadow: 0px 0px 5px #5C5696;
    transition: 0.5s;
}
#id1:hover
{
  box-shadow: 0 8px 100px 0 gray;
  border-radius: 30px;
}
.card {
  box-shadow: 0 4px 8px 0 black;
  transition: 0.5s;
  width: 250;
  padding: 20px;;
  border-radius: 20px;
}

.card:hover {
  box-shadow: 0 8px 100px 0 grey;
  border-radius: 20px;
}

.container {
	padding : 22px;
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
#outer
{
    width:100%;
    text-align: center;
}
.inner
{
    display: inline-block;
}
.column {
  float: left;
  width: 31%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
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
</style> 
</head>  
<body>
    <br>
    <br>
<div id="id1">
       <div class="container"> 
         <div class="row">
	    <div class="column">
	      <div class="card" style="background-color: aqua;">
	        <h3>Right to Equality</h3>
	        <hr/>
	        <p>It provides for the equal treatment of everyone before the law and abolishes untouchability.</p>
	      </div>
	    </div>
	  
	    <div class="column">
	      <div class="card" style="background-color: salmon;">
	        <h2>Right to freedom</h2>
	        <hr/>
	        <p>It gives citizens about basic freedom with respect to speech and expression.</p>
	      </div>
	    </div>
	    
	    <div class="column">
	      <div class="card" style="background-color: chartreuse;">
	        <h3>Right against exploitation</h3>
	        <hr/>
	        <p>It protects both the citizens and non-citizens against exploitation.</p>
	      </div>
	    </div>
	</div>
	<br/>
	<br/>
	<br/>
	
	<div class="row">
	    <div class="column">
	      <div class="card" style="background-color: darkgoldenrod;">
	        <h2>Right to freedom of Religion</h2>
	        <hr/>
	        <p>Everyone has the right to freedom of thought, conscience and religion.</p>
	      </div>
	    </div>
	  
	    <div class="column">
	      <div class="card" style="background-color: steelblue;">
	        <h3>Cultural and Educational Rights</h3>
	        <hr/>
	        <p>It provides protection against discrimination on the ground of religion, caste, and language.</p>
	      </div>
	    </div>
	    
	    <div class="column">
	      <div class="card" style="background-color: darkcyan;">
	        <h3><bold>Right to constitutional Remedies</bold></h3>
	        <hr/>
	        <p>It gives the right to approach the Supreme Court get any fundamental right restored in case they are violated. </p>
	      </div>
	    </div>
	</div>    
       </div>
</div>
</body>
</html>