<%@include file="include.jsp"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Technical</title>
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
    <a href="index.html"><img src="${pageContext.request.contextPath}/resources/images/logo1.png"/></a>
  </div>
  <h2 class="form-heading">Technical login</h2>
  <div>
  <h3 style="color:blue;text-align:center">${msg1}</h3>
  <div class="app-cam">
	  <form modelAttribute="emplogin" action="feedback" method="POST">
		<input type="text" class="text" value="E-mail address" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail address';}" required>
		<input type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}" required>
		<div class="submit"><input type="submit" onclick="myFunction()" value="Login"></div>
	<!-- 	<div class="login-social-link">
          <a href="index.html" class="facebook">
              Facebook
          </a>
          <a href="index.html" class="twitter">
              Twitter
          </a>
        </div> -->
		<ul class="new">
			<li class="new_left"><p><a href="forgotpswd">Forgot Password ?</a></p></li>
			<li class="new_right"><p class="sign">New here ?<a href="empregform"> Sign Up</a></p></li>
			<div class="clearfix"></div>
		</ul>
	</form>
  </div>
<!--    <div class="copy_layout login">
      <p>Powered By <a href="http://elakk.com/" target="_blank">Elakk</a> </p>
   </div> -->
</body>
</html>
