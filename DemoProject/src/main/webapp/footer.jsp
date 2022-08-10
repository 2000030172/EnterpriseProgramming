<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<style type="text/css">
		.footer
		{
			text-align: center;
            padding: 40px 10vw;
    		bottom: 0;
			padding: 50px;
  			background-color: black;
  			color: white;
  			transition: 1s;
		}
		.footer:hover
		{
		  box-shadow: 0 8px 100px 0 gray;
		}
		.footer-content
		{
		    display: flex;
		    width: 100%;
		    justify-content: space-between;
		}
        .footer-ul-container
        {
            width: 45%;
            display: flex;
            justify-content: space-between;
        }
        .category
        {
            width: 200px;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 10px;
            list-style: none;
        }
        .category-title
        {
            grid-column: span 2;
            text-transform: capitalize;
            color: #fff;
            font-size: 20px;
            margin-bottom: 20px;
        }
</style>
<body>
<br/>
<br/>
	<footer class="footer">
	<hr/>
		<h1 style="font-size: large; font-weight: 500;">Footer tag</h1>
        <div class="footer-ul-container">
            <ul class="category">
                <li><a href="#" class="footer-link">Rules</a></li>
                <li><a href="#" class="footer-link">Government</a></li>
            </ul>
        </div>
        
        <br/>
        <br/>
                    <a href="about.jsp">About Us</a>|
                    <a href="#">Privacy Policy</a>|
                    <a href="#">Careers</a>     
					<p>@CopyRights, Some rights reserved</p>
	</footer>
</body>
</html>