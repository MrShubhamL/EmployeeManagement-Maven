<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		<div class="row">
			<%@include file="Navbar.jsp"%>
			<%@include file="registration.jsp"%>
			<%@include file="login.jsp"%>
			<div class="col-lg-12">
				<div class="row">
					<div class="heading">
						<h2 class="text-white headline">Employee Management</h2>
						<p class=" text-white sub-heading">
							Employees Like You Are One Of a Kind, Our Gratitude To You We
							Must Remind. <br> Few People Have Your Vision. Thank You For
							Showing Others An Alternate Perspective. For Your Hardworking
							Ways, <br> You Deserve Some Praise. Going the Extra Mile.
							Hats Off To Our Staff! It’s Your Careful Attention To Detail That
							Makes You So Special.
						</p>
					</div>
					<div class="col">
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-warning"
							data-bs-toggle="modal" data-bs-target="#exampleModal">
							Register Now</button>
					</div>
				</div>

				<%
				String failed = (String) session.getAttribute("failed");
				String success = (String) session.getAttribute("success");
				String login_failed = (String) session.getAttribute("login_failed");
				if (failed != null) {
				%>
				<h5 class="text-danger">You are already register!</h5>
				<%
				}
				session.removeAttribute("failed");

				if (login_failed != null) {
					%>
					<h5 class="text-warning">Username or Password is not correct!</h5>
					<%
					}
					session.removeAttribute("login_failed");
					
				if (success != null) {
					%>
					<h5 class="text-white">Congratulation!, You have been successfully register.</h5>
					<%
				}
				session.removeAttribute("success");
				%>



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