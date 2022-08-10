<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.callout {
  position: fixed;
  bottom: 35px;
  right: 20px;
  margin-left: 20px;
  max-width: 300px;
  border-radius:5px;
}

.callout-header {
  padding: 25px 15px;
  background: #555;
  font-size: 30px;
  color: white;
}

.callout-container {
  padding: 15px;
  background-color: #ccc;
  color: black;
  border-radius:5px;
}

.closebtn {
  position: absolute;
  top: 5px;
  right: 15px;
  color: white;
  font-size: 30px;
  cursor: pointer;
  border-radius:5px;
}

.closebtn:hover {
  color: lightgrey;
  border-radius:5px;
}
.star-rating 
{
  margin: 25px 0 0px;
  font-size: 0;
  display: inline-block;
  width: 175px;
  height: 35px;
  position: relative;
  background: url('data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjREREREREIiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=');
  background-size: contain;
}
.star-rating i 
{
  opacity: 0;
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width: 20%;
  background: url('data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjRkZERjg4IiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=');
  background-size: contain;
}
.star-rating input {
  opacity: 0;
  display: inline-block;
  width: 20%;
  height: 100%;
  margin: 0;
  padding: 0;
  z-index: 2;
  position: relative;
}
.star-rating input:hover+i,
.star-rating input:checked+i 
{
    opacity: 1;
}
.star-rating i ~ i
{
    width: 40%;
}
.star-rating i ~ i ~ i 
{
  width: 60%;
}
.star-rating i ~ i ~ i ~ i 
{
  width: 80%;
}
.star-rating i ~ i ~ i ~ i ~ i 
{
  width: 100%;
}
span
{
  position: right;
  animation: mymove 5s infinite;
  animation-iteration-count: 1;
}

@keyframes mymove {
  from {right: 2000px;}
  to{right: -10px;}
}
input{
  width: 80%;
  height: 45px;
  background:none;
  outline: none;
  border: none;
  color: black;
  border-radius: 15px;
  font-size: 1.5rem;
  
}
</style>
</head>
<body>
<span>
<span class="callout" >
<div class="callout-header">FeedBack</div>
<span class="closebtn" onclick="this.parentElement.style.display='none';">×</span>
<form action="#" method="post">
	  <div class="callout-container">
	     <span class="star-rating">
	        <input type="radio" name="rating1" value="1" value="1"><i></i>
	        <input type="radio" name="rating1" value="2" value="2"><i></i>
	        <input type="radio" name="rating1" value="3" value="3"><i></i>
	        <input type="radio" name="rating1" value="4" value="4"><i></i>
	        <input type="radio" name="rating1" value="5" value="5"><i></i>
	      </span>
	      <input type="text" placeholder="Comment" id="comment" name="comment" required>
	      <button type="submit" style="background-color: #008CBA;border: none; text-decoration: none;border-radius: 0.5px;cursor: pointer;">Submit</button>
	  </div>
</form>
</span>  
</span>
</body>
</html>