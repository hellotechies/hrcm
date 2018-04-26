<%@include file="include.jsp"%>

<title>HRCM-Register</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


</head>
<body id="login">

<center>
  <div class="login-logo">
    <a href=""><img src="${pageContext.request.contextPath}/resources/images/logo1.png"/></a>
  </div>
<h2 class="form-heading">Register</h2>
 <form:form id="register-form" modelAttribute="user" action="registerProcess"	method="POST">
      <br><p>Enter your Details below</p>
      <br>
      <table  cellpadding="5" cellspacing="5" align="center">
      <tr>
      <td>
      
      <input type="text" class="form-control1" placeholder="Full Name" autofocus="" id="fullname" name="fullname" required></td></tr>
      <tr>
      <td>
     
      <input type="text" class="form-control1" placeholder="Employee ID" autofocus="" id="employeeid" name="employeeid" required></td></tr>
      <tr>
        <td>
      <input type="text" class="form-control1" placeholder="Email" autofocus="" id="email" name="email" required></td></tr>
<!--       <tr>
      
      <td>
      <input type="text" class="form-control1" placeholder="City/Town" autofocus="" id="city" name="city"></td></tr> -->	
      		<tr>
				
			</tr>
			<!-- <tr>
				
				<td><input type="radio" name="gender" value="male">
					Male <input type="radio" name="gender" value="female">
					Female</td>
				
			</tr> -->
      <tr>
      <td>

     <!--  <tr>
      <td>
      <input type="text" class="form-control1" placeholder="User Name" autofocus="" id="Username" name="username"></td></tr> -->
      <tr>
      <td>
      <input type="password" class="form-control1" placeholder="Password" id="password" name="password" required></td></tr>
      <tr>
      <td>
      <input type="password" class="form-control1" placeholder="Re-type Password" id="retypepassword" name="retypepassword" required></td></tr>
      <tr>
      <td>
      <label class="checkbox-custom check-success">
          <input type="checkbox" value="agree this condition" id="checkbox1" name="checkbox1"> <label for="checkbox1" required>I agree to the Terms of Service and Privacy Policy</label>
      </label>
         <tr>
      <td>  
       <button class="btn btn-lg btn-success1 btn-block" type="submit" onclick="myFunction()">Submit</button></td></tr>
      </table>


      <div class="registration">
          Already Registered.
          <a class="" href="login">
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

 <!--   <div class="copy_layout login register">
      <p>Powered by <a href="http://elakk.com/" target="_blank">Elakk</a> </p>
   </div> -->
   </center>
  
</body>
</html>
