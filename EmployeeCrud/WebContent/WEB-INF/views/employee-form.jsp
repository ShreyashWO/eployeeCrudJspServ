<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Employee Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>	
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div align="center">
				<a class="navbar-brand"> Employee Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link"></a></li>
			</ul>
		</nav>
	</header>
	<br>
	
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${emp != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${emp == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${emp != null}">
            			Edit User
            		</c:if>
						<c:if test="${emp == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${emp != null}">
					<input type="hidden" name="id" value="<c:out value='${emp.id}' />" />
				</c:if>
				
				<fieldset class="form-group">
					<label>First Name</label>
					<input type="text" value="<c:out value='${emp.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>		

				<fieldset class="form-group">
					<label>Age</label>
					<input type="number" value="<c:out value='${emp.age}' />" class="form-control"
						name="age" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>salary</label>
					<input type="number"  step="0.01" value="<c:out value='${emp.salary}' />" class="form-control"
						name="salary" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Date of joining</label>
                   <%-- <input type="date" name="joiningdate" id="datepicker" value="<c:out value='${emp.joiningdate}' />" > --%>
			        <input type="date" value="<c:out value='${emp.joiningdate}' />" class="form-control"
						name="joiningdate" required="required" placeholder= '${joiningdate}'>
				</fieldset>
				
				<fieldset class="form-group">	
					<label>Skills: </label> <BR>
					<input type="checkbox" value="Java" name="skills" > Java 	
					<input type="checkbox" value="MySql" name="skills"> MySql <BR>
				</fieldset>
				

				<button type="submit" class="btn btn-success"  >Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>