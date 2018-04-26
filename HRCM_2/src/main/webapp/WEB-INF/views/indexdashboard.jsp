<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>HR DASHBOARD</title>
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css" />" />
</head>
<body style="background-color:lightblue"> 
<h1 style="text-align: center">HR DASHBOARD</h1>
<br>
<div class="container" style="text-align: center;">
	<div class="row">
		<div class="col-md-12">
		    <div class="wrapper">
                <button  href="views/login.jsp" class="btn btn-primary">HR Login</button>
               <button class="btn btn-primary">HR Registration</button>
                 <button class="btn btn-primary"> Technical Login</button>
          		    </div>
		</div>
	</div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>



</body>
</html>