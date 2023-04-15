<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login admin</title>
<link rel="stylesheet" href="./style.css">
<style>
body{
margin:0px;
padding:0px;
background:grey;
}

input{
margin-radius:10px;
}

.admin{
  background:white;
  outline:blue;
  position:center;
  margin-left:500px;
  margin-top:200px;
}

</style>
</head>
<body>
<main>
<div class="admin">
<h1>Learner's Academy</h1>
<h4> are you admin?</h4>
<form method="post" action="login.jsp">
<div class="login">
<h4>Login</h4>
<h4><input type="text" name="name" placeholder="admin"></h4>
</div>
<div class="password">
<h4>Password</h4>
<h4><input type="password" name="pass" placeholder="12345"></h4>

</div>
<div class="btn">
<h4><input type="submit" value="login"></h4>
<% if(session.getAttribute("info")!=null)
{
	String str=(String)session.getAttribute("info");
	%>
   <p><%=str%></p>
	
	<%
}
%>
</div>
</form>
</div>
</main>
</body>
</html>