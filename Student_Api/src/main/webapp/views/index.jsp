<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h1 class="text-center">Student Registration</h1>
	
	<form action="addStudent" method="post" class="text-center col-sm-12 form-group" style="width:50%;margin-left:300px">
		
		Enter First Name <input type="text" name="fname" class="col-sm-2 form-control"> <br>
		Enter Last Name <input type="text" name="lname" class=" col-sm-3 form-control"> <br>
		Enter Address <input type="text" name="address" class="col-sm-2 form-control"> <br>
		Enter Email <input type="email" name="email" class="col-sm-2 form-control"> <br>
		Enter Mobile  <input type="tel" name="mobile" class="col-sm-2 form-control"> <br>
		Enter Password <input type="password" name="password" class="col-sm-2 form-control"> <br>
		
		<button type="submit" class="btn btn-success form-group" style="margin:10px">
		Submit 
		</button>
		
		<button type="reset" class="btn btn-danger form-group" style="margin:10px">
		Reset
		</button>
		
	
	</form>
	
	
		${student}
</body>
</html>