<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp" %>  
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
    <html>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
    	.mySlides
    	{
    		display:none;
    	}
    	.img
    	{
    		height: 422px;
    	}
    </style>
    <body>
    <div class="w3-content w3-section" style="max-width:2500px">
	    	<img src="https://lifebeyondnumbers.com/wp-content/uploads/2019/01/National-Emblem-of-India.jpg" style="width:100%; height:383kb" class="mySlides">
	    	
	    	<img src="https://tfipost.com/wp-content/uploads/2022/02/Indian-Constitution-Revolution.jpg" style="width:100%; height:383kb" class="mySlides">
	</div>
	</body>
	<script>
	var myIndex = 0;
	carousel();

	function carousel() 
	{
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  for (i = 0; i < x.length; i++) 
		  {
	    x[i].style.display = "none";  
	  }
	  myIndex++;
	  if (myIndex > x.length) {myIndex = 1}    
	  x[myIndex-1].style.display = "block";  
	  setTimeout(carousel, 2000);
	}
    </script>
	</html>
	<%@include file="chat.jsp" %>
<%@include file="footer.jsp" %>