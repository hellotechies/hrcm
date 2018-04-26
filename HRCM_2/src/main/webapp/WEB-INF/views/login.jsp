<%-- 
 
 
    <head>
        <meta charset="UTF-8" />
        
        <title>Login and Registration Form </title>
        
       
       <link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/demo.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/style.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/animate-custom.css" />" />

      
    </head>
    <body>
        <div class="container">
   
            <header>
                <h1>Login Form & Registration Form</span></h1>
			
            </header>
            <section>				
                <div id="container_demo" >
                 
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                          <form:form id="submitForm" action="login"  method="POST">
                          
                          <table align="center">
	<tr align="center">
                <td>
                    <td style="font-style: italic; color:blue;">${error}</td>
                </td>
            </tr>
	</table>
	
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="emailData"  name="emailData" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" value="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit"  value="Login" /> 
								</p>
                             <!--    <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p> -->
                            </form:form>
                        </div>





                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>

 --%>
 
 
 
 
 
 
 
 
 
 
 <%@include file="include.jsp"%>

</head>
<body id="login">
  <div class="login-logo">
    <a href=""><img src="${pageContext.request.contextPath}/resources/images/logo1.png"/></a>
  </div>
  <h2 class="form-heading">Login</h2>
  <div class="app-cam">
	  <form:form id="login-form" modelAttribute="login" action="loginProcess" method="POST">
	<table align="center">
	<tr align="center">
                <td>
                    <td style="font-style: italic; color:blue;">${error}</td>
                </td>
            </tr>
	</table>
	  <table align="center">
	  	  <tr>
	  <td>
	  <td>
	 		<input type="text" id="emailData"  name="emailData" required >
		</td> </td>
		</tr>
		<tr>
		<td>
		<td>
		<input type="password" value="password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required>
		</td></td>
		</tr>
		<tr>
		<td>
		<td>
		<div class="submit"><input type="submit"  value="Login"></div></td><td>
		</td></tr>
		</table>
	
		<ul class="new">
			<li class="new_left"><p><a href="forgotpswd">Forgot Password ?</a></p></li>
			<li class="new_right"><p class="sign">New here ?<a href="register"> Sign Up</a></p></li>
			<div class="clearfix"></div>
		</ul>
	</form:form>
  </div>
<!--    <div class="copy_layout login">
      <p>Powered By <a href="http://elakk.com/" target="_blank">Elakk</a> </p>
   </div> -->
</body>
</html>
 