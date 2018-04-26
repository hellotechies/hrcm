




<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>




  <title>forgot password</title>
  <link href='//fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  
  <link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/font-awesome.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-grid.min.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-reboot.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-reboot.min.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-theme.min.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/font-awesome-login.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/font-awesome.css" />" />






</head>
<body>
<%-- <div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">Forgot Password?</h2>
                          <p>You can reset your password here.</p>
                            <div class="panel-body">
                               <center>
                               <form class="form" method="post" action="resetPassword" modelAttribute="reset">
                            
                                <fieldset>
                                  <div class="form-group">
                                    <div class="input-group">
                                      <input id="emailInput" placeholder="email address" name="email" class="form-control" type="email" oninvalid="setCustomValidity('Please enter a valid email address!')" onchange="try{setCustomValidity('')}catch(e){}" required="">
                                    </div>
                                    <div class="form-group">
                                    <input type="password" value="password" name="pass" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
                                  </div>
                                  <div class="form-group">
                                  <input type="password" value="password" name="renewpass" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
                                 	</div>
                                  <div class="form-group">
                                    <input class="btn btn-lg btn-primary btn-block" value="Submit" id="submitBtn" onsubmit="return validatePassword()" type="submit">
                                  </div>
                                </fieldset>
                                
                              </form>
                              </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --%>

 <form class="form" method="post" action="resetPassword" modelAttribute="reset">

 
<h4 align="center">Fogot Password </h4>
 <div class="col-lg-3">
 <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
    <input id="email" name="email" placeholder="Enter email address" class="form-control"  type="email">
     </div>
                        
         </div>   
              <br>
         <div class="col-md-3 ">
                        <button type="button" class="btn btn-primary btn-lg">submit
                           </button>
                            </div>     
              
                     

</form>
</body>
</html>
