<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.learner.connection.DbConnection"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 Connection con=null;

try{
	con = DbConnection.GetConnection();

	   String tname = request.getParameter("name");
	   String tgender=request.getParameter("gender");
	   String tadd=request.getParameter("address");
	   String tloc=request.getParameter("loc");
	   String tphone=request.getParameter("phone");
	   String temail=request.getParameter("email");
	   PreparedStatement ps= con.prepareStatement("INSERT INTO teacher (tname,gender,address,loc,phone,email) VALUES (?,?,?,?,?,?)");
	   
	   ps.setString(1,tname);
	   ps.setString(2,tgender);
	   ps.setString(3,tadd);
	   ps.setString(4,tloc);
	   ps.setString(5,tphone);
	   ps.setString(6,temail);
	   
	   
	  int t= ps.executeUpdate();
}catch(Exception e){
	System.out.println(e);
}
%>
<jsp:forward page="teachers.jsp"></jsp:forward>
</body>
</html>