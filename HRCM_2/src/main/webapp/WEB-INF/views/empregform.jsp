<%@include file="include.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Technical Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</head>
<body id="login">
   <div class="login-logo">
    <a href=""><img src="${pageContext.request.contextPath}/resources/images/logo1.png"/></a>
  </div> 
  <h2 class="form-heading"> Technical Register</h2>
  <form:form id="register-form" modelAttribute="emp" action="empregisterProcess"	method="POST">
      
  
      <br>
      <br>
      <table  cellpadding="5" cellspacing="5" align="center">
      <tr><td>Enter your personal details below</td></tr>
      <tr></tr>
      <tr></tr>
      <tr>
      <td>
      <input type="text" class="form-control1" placeholder="Full Name" autofocus="" id="fullname" name="fullname" required></td></tr>
      <tr>
      <td>
      <input type="text" class="form-control1" placeholder="Employee ID" autofocus="" id="employeeid" name="employeeid" required></td></tr>
      <tr>
      <td>
      <input type="text" class="form-control1" placeholder="Email" autofocus="" id="email" name="email" required></td></tr>
      <!-- <tr>
      <td>
      <input type="text" class="form-control1" placeholder="City/Town" autofocus="" id="city" name="city"></td></tr>			
 <tr> <td>Enter your account details below </td></tr> -->
	<!--   <tr>
	  <td>
      <input type="text" class="form-control1" name="username" placeholder="User Name" autofocus=""> </td></tr> -->
      <tr>
      <td>
      <input type="password" class="form-control1" name="password" id="password" placeholder="Password" required> </td></tr>
      <tr><td><input type="password" class="form-control1" name="retypepassword" id="retypepassword" placeholder="Re-type Password" required></td></tr>
      <tr><td><label class="checkbox-custom check-success">
          <input type="checkbox" value="agree this condition" id="checkbox1"> <label for="checkbox1" required>I agree to the Terms of Service and Privacy Policy</label>
      </label></td></tr>
     <tr>
     <td>
      <button class="btn btn-lg btn-success1 btn-block" type="submit">Submit</button>
      </td></tr>
       </table>
      <div class="registration">
          Already Registered.
          <a class="" href="emplogin">
              Login
          </a>
      </div>
      
  </form:form>
	<script type="text/javascript">
		var password = document.getElementById("password")
		  , retypepassword = document.getElementById("retypepassword");

		function validatePassword(){
		  if(password.value !=retypepassword.value) {
			  retypepassword.setCustomValidity("Passwords Don't Match");
		  } else {
			  retypepassword.setCustomValidity('');
		  }
		}

		password.onchange = validatePassword;
		retypepassword.onkeyup = validatePassword;
</script>
   <div class="copy_layout login register">
      <p>Powered by <a href="http://elakk.com/" target="_blank">Elakk</a> </p>
   </div>
</body>
</html>
