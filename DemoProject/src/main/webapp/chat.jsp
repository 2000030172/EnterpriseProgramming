<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link   rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        />
        <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<style>
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  border-radius:2000px;
  min-width:80px;
}
.chat-popup 
{
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 10;
}
.form-container 
{
  max-width: 1000px;
  padding: 10px;
  background-color: white;
}
.form-container iframe 
{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: 2px;
  background: #f1f1f1;
  resize: none;
  min-height: 200px;  
}
.form-container iframe:focus 
{
  background-color: #ddd;
  outline: none;
}
.form-container .btn:hover, .open-button:hover 
{
  opacity: 1;
}
</style>
</head>
<body>
<button class="open-button" onclick="openForm()"><i class="fa-solid fa-message" style="font-size :25px;"></i></button>

<div class="chat-popup" id="myForm">
  <form action="index.jsp" class="form-container" style="background-color: white;">
    <iframe src="https://web.powerva.microsoft.com/environments/Default-808cc83e-a546-47e7-a03f-73a1ebba24f3/bots/new_bot_6d443e87a9d84eb3ba09608416fe8c1e/webchat"></iframe>
    <br/>
    <br/>
    <button class="button" style="background-color: red; font-size:25px;"><i class="fa-solid fa-x"></i></button></
  </form>
</div>
<script>
function openForm() 
{
  document.getElementById("myForm").style.display = "block";
}
function closeForm() 
{
  document.getElementById("myForm").style.display = "none";
}
</script>

</body>
</html>
