<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String name = request.getParameter("name");
String  pass= request.getParameter("pass");
if(name.equals("admin") && pass.equals("12345"))
{
	response.sendRedirect("welcome.jsp");
}
else{
	session.setAttribute("info","Wrong Credentials");
	response.sendRedirect("index.jsp");
}
%>

</body>
</html>