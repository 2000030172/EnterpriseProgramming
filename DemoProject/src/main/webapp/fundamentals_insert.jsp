<%@include file="header_admin.jsp" %>
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

.input-field-box
{
    max-width: 380px;
    height:105px;
    width: 100%;
    background-color: #f0f0f0;
    margin: 10px 0;
    border-radius: 55px;
    grid-template-columns: 15% 85%;
    padding: 0 0.1rem;
    position: relative;
}
.input-field-box textarea{
  width: 80%;
  height: 45px;
  background:none;
  outline: none;
  border: none;
  color: black;
  border-radius: 15px;
  font-size: 1.5rem;
  
}
.input-field-box i
{
    text-align: center;
    color: #acacac;
    font-size: 1.5rem;
    position:center;
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
<%String username=(String)session.getAttribute("uname");
HttpSession session123 = request.getSession(false);%>
<% if(username==null || session123==null) {%>
	<%@include file="session.jsp" %>
<% }
else if(username.equals("admin"))
{
%>  
<div id="id1">
    <form method="post" action="FundamentalServlet">        
        <div class="container"> 
            <h1>Add Rights</h1>
               <p>Adding the Rights</p>
               <br/>
              <hr>
              <div class="input-field">
                  <i class="fa-solid fa-location-pin"></i>
                   <input type="text" placeholder="Mark" id="edit" name="edit" required>
              </div>
              <div class="input-field">
                   <i class="fa-solid fa-book-open"></i>
                   <input type="text" placeholder="Right" id="right" name="right" required>
              </div>
               <div class="input-field-box">
                   <i class="fa-solid fa-house-chimney-crack" ></i>
                   <textarea id="subject" name="about" id="about" placeholder="About Rights" style="height:90px; position: center;"></textarea>
               </div>
            <button type="submit" class="btn btn-success">Add</button>
        </div>
    </form>
</div>
<%} else {%>
	<%@include file="prohibit.jsp" %>
<%} %>
</body>
</html>
<%@include file="footer.jsp" %>