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
<% Connection con=null;

try{
	con = DbConnection.GetConnection();
	
	   String name=request.getParameter("name");
	   String teach=request.getParameter("teacher");
	   String cls=request.getParameter("class");
	   
	   
	   PreparedStatement ps= con.prepareStatement("INSERT INTO student (name,teacher,class) VALUES (?,?,?)");
	   
	   
	   ps.setString(1,name);
	   ps.setString(2,teach);
	   ps.setString(3,cls);
	   
	   
	   
	  int t= ps.executeUpdate();
}catch(Exception e){
	System.out.println(e);
}
%>
<jsp:forward page="students.jsp"></jsp:forward>
</body>
</html>