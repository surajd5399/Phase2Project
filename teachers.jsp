<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.learner.connection.DbConnection" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="tec">
<div>
<jsp:include page="welcome.jsp"></jsp:include>
<div class="sbar">
<h1>Teachers</h1>
</div>
<%  

session.setAttribute("info","Please log in again !!");
Connection con = DbConnection.GetConnection();
   PreparedStatement ps= con.prepareStatement("select * from teacher ");
   ResultSet rs = ps.executeQuery();

   %>
   </div>
   <div id="table">
   <table  border="1px">
   <th>id</th>
   <th>name</th>
   <th>Gender</th>
   <th>Address</th>
   <th>loc</th>
   <th>Phone</th>
   <th>Email</th>
   <% 
   while(rs.next()){
	 %>
	 <tr>
	  <td width="100px"><%out.print(rs.getInt(1));%></td>
	  <td width="100px"><%out.print(rs.getString(2));%></td>
	  <td width="100px"><%out.print(rs.getString(3));%></td>
	  <td width="100px"><%out.print(rs.getString(4));%></td>
	  <td width="100px"><%out.print(rs.getString(5));%></td>
	  <td width="100px"><%out.print(rs.getString(6));%></td>
	  <td width="100px"><%out.print(rs.getString(7));%></td></tr>
	 <%} %></table>
	 </div>
	 
	 <div id="registerteacher">
	 
	 <div>
	 <div><h4>Register as Teacher</h4></div>
	 <div><h3>Enter your Details</h3></div></div>
	 <div>
	 <form name="form" method="Post" action="addteacher.jsp">
	 <h5>Name</h5>
	 <h5><input type="text" name="name"/></h5>
	 <h5>Gender</h5>
	 <h5><input type="text" name="gender"/></h5>
	 <h5>Address</h5>
	 <h5><input type="text" name="address"/></h5>
	 <h5>location</h5>
	 <h5><input type="text" name="loc"/></h5>
	 <h5>Phone</h5>
	 <h5><input type="number" name="phone"/></h5>
	 <h5>Email</h5>
	 <h5><input type="email" name="email"/></h5>
	 <div class="btn">
	 <h6><input type="submit" value="Register"/></h6>
	 </div>
	 </form>
	 </div>
	 </div>
	 </div>

</body>

</html>