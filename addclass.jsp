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
	 con=DbConnection.GetConnection();

String tname = request.getParameter("name");
String teacher= request.getParameter("teacher");
String tcls= request.getParameter("class");

System.out.println(tcls);

PreparedStatement ps= con.prepareStatement("INSERT INTO joined (name,teacher,class) VALUES (?,?,?)");
ps.setString(1,tname);
ps.setString(2,teacher);
ps.setString(3,tcls);

int i=ps.executeUpdate();


}
catch(Exception e){
	System.out.println(e);
}

%>
<jsp:forward page="classes.jsp"></jsp:forward>

</body>
</html>