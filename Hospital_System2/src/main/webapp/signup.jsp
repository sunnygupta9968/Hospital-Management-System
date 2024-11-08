<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<%@include file="components/allcss.jsp" %>
</head>
<body>
<%@include file="components/navbar.jsp" %>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">New User Registration</p>

					
						<c:if test="${not empty successMsg }">
							<div class="alert alert-success" role="alert">
  							${successMsg}
						</div>
							<c:remove var="successMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
						<div class="alert alert-danger" role="alert">
  							${errorMsg}
						</div>
							
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						

						<form action="user_register" method="post">
						   <div class="mb-3">
								<label class="form-label">Full Name</label> <input required
									name="fullname" type="text" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn bg-info text-white col-md-12">Register</button>
						</form>

						

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>