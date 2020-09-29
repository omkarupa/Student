<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<h1 class="text-center">Student Registration</h1>
	
	<form action="addStudent" method="post" class="text-center col-sm-12 form-group" style="width:50%;">
		<input type="hidden" name="id" value="${student.id}">
		Enter First Name <input type="text" name="fname" class="col-sm-2 form-control" value="${student.fname}"> <br>
		Enter Last Name <input type="text" name="lname" class=" col-sm-3 form-control" value="${student.lname}" > <br>
		Enter Address <input type="text" name="address" class="col-sm-2 form-control" value="${student.address}"> <br>
		Enter Email <input type="email" name="email" class="col-sm-2 form-control" value="${student.email}"> <br>
		Enter Mobile  <input type="tel" name="mobile" class="col-sm-2 form-control" value="${student.mobile}"> <br>
		Enter Password <input type="password" name="password" class="col-sm-2 form-control" value="${student.password}"> <br>
		
		<button type="submit" class="btn btn-success form-group" style="margin:10px">
		Submit 
		</button>
		
		<button type="reset" class="btn btn-danger form-group" style="margin:10px">
		Reset
		</button>
	
	</form>
	
</div>
			
		<div class="container">
		<form  method="post">
		<table class="table table-bordered" style="width:70%;">
			<thead>
			<tr>
				<th>Sr no</th>
				<th>Name</th>
				<th>Address</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="student" items="${students}">
				<tr>
					<td><c:out value="${student.id}"></c:out></td>
					<td><c:out value="${student.fname}"> </c:out> <c:out value="${ student.lname}"></c:out> </td>
					<td><c:out value="${student.address}"></c:out></td>
					<td><c:out value="${student.email}"></c:out></td>
					<td><c:out value="${student.mobile}"></c:out></td>
					<td> <button class="btn btn-primary" type="submit" formaction="editStudent" name="id" value="<c:out value="${student.id}"></c:out>">
							Edit 
							<span class="glyphicon glyphicon-edit"></span>
						</button>
					</td>		
					<td> <button class="btn btn-danger"  type="submit" formaction="deleteStudent" name="id" value="<c:out value="${student.id}"></c:out>">
							Delete
							<span class="glyphicon glyphicon-trash"></span>
						</button>
					</td>	
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</form>
		</div>
		
		
</body>
</html>