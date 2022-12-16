<%@page import="com.model.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.conn.DBConnection"%>
<%@page import="com.repo.EmpRepository"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
	<link href="style.css" rel="stylesheet">
</head>
<body>

	<div class="container-fluid bgImg">
			<%@include file="Navbar.jsp"%>
			
			
<%
Employee login_emp = (Employee) session.getAttribute("login_user");
if(login_emp==null){
	response.sendRedirect("index.jsp");
}
%>
	<div class="row">
		<div class="col-lg-8 offset-lg-2 mt-5">
		
			<table class="table table-bordered text-white">
				<thead>
					<tr>
						<th scope="col">Sr.No</th>
						<th scope="col">Employee Name</th>
						<th scope="col">Employee Email</th>
						<th scope="col">Employee Contact</th>
						<th scope="col">Employee Department</th>
					</tr>
				</thead>
				<tbody>
					<% 
					try{
					EmpRepository rs = new EmpRepository(DBConnection.getConnection());
					List<Employee> emp = rs.allEmployees();
					for(Employee e:emp){
						%>
					<tr>
						<th scope="row"><%= e.getId() %></th>
						<td><%= e.getEmpName() %></td>
						<td><%= e.getEmpEmail() %></td>
						<td><%= e.getEmpContact() %></td>
						<td><%= e.getEmpDepartment() %></td>
					</tr>
						<%
					}
					}catch(Throwable t){
						
					}
					%>
						
					
				</tbody>
			</table>
		</div>
	</div>
	</div>



	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>