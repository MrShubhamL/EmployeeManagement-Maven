<%@page import="com.model.Employee"%>
<%
Employee login_emp2 = (Employee) session.getAttribute("login_user");
%>
<nav class="navbar navbar-expand-lg sticky-top" style="background: transparent;">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="#">Employee Registration</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
      <%
      if(login_emp2==null){
    	  %>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-white" aria-current="page" href="index.jsp">(Author: Shubham Lohar)</a>
        </li>
		<li class="nav-item">
			<a class="nav-link active text-white" aria-current="page" href="index.jsp">Home</a>
		  </li>
      </ul>
		      <form class="d-flex" role="search">
		        <a class="nav-link active text-white" data-bs-toggle="modal" data-bs-target="#exampleModal1" style="font-weight: bold;">Login Now</a>
		      </form>
    </div>
    	  <%
      }
      else{
    	  %>
    	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-white" aria-current="page" href="Welcome.jsp">Home</a>
        </li>
        <% String success = (String) session.getAttribute("success");
			if(success!=null){
				%>
				 <li class="nav-item">
          <a class="nav-link active text-success" aria-current="page" href="Welcome.jsp">
          Your registration has been successfully completed.</a>
        </li>
				<%
			}
			session.removeAttribute("success");
		%>
      </ul>
	      <form action="logoutController" method="post" class="d-flex">
	      
	        <div class="dropdown">
			  <a class="nav-link active text-white dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
			    <%= login_emp2.getEmpEmail() %>
			  </a>
			  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1" style="background: transparent;">
			    <li><a class="dropdown-item text-white" href="#">Profile</a></li>
			    <li><a class="dropdown-item text-white" href="#">Settings</a></li>
			    <li>
			     <button class="dropdown-item text-white" type="submit" 
	        style="font-weight: bold;">Logout</button>
			    </li>
			  </ul>
			</div>
	      
	      
	      </form>
	   </div>
	  <%
      }
      %>
  </div>
</nav>