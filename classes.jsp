<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.learner.connection.DbConnection" %>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./style.css">
</head>

<body>
<div id="tec t">
<div>
<jsp:include page="welcome.jsp"></jsp:include>
<div class="sbar">
<h1>Classes</h1>
</div>
<% Connection con = DbConnection.GetConnection();
   PreparedStatement ps= con.prepareStatement("select * from classes ");
   ResultSet rs = ps.executeQuery();
   %>
   </div>
   <div id="table">
   <table  border="1px" text-align="center">
   <th> class id</th>
   <th>class name</th>
   <% 
   while(rs.next()){
	 %>
	 <tr >
	  <td width="100px"><%out.print(rs.getString(1));%></td>
	  <td width="100px"><%out.print(rs.getString(2));%></td></tr>
	 <%} %></table>
	 </div>
	 
	 <div id="registerteacher">
	 
	 <div>
	 <div><h4>Register for a class </h4></div>
	 <div><h3>Enter your Details</h3></div></div>
	 <div>
	 <form method="post" action="addclass.jsp">
	 <h5>Name</h5>
	 <h5><input type="text" name="name"></h5>
	 <h5>Teacher</h5>
	 <h5><input type="text" name="teacher"></h5>
	 <h5><label for="class">Class</label></h5>
	 
	 <h5><select name="class">
	 <option value="-1">Select class</option>
	 <option value="java">Java</option>
	 <option value="python">python</option>
	 <option value="c">Language C</option>
	 </select></h5>
	 
	 <h6><input type="submit" value="submit"></h6>
	 </form>
	 </div>
	 </div>
	 </div>
</body>
</html>