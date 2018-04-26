<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



    <title>Feedback</title>
    
    

<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/font-awesome.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/feedback.css" />" />



</head>
<body>
<div class="container">
<form:form action="fbProcess" modelAttribute="feedback" method="post">

            <form class="form-horizontal" role="form">
                <h2>Feedback Form</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="fullname" name="fullname" placeholder="Full Name" class="form-control" autofocus>
                        <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" id="email" name="email" placeholder="Email" class="form-control">
                        <span class="help-block">Ex:abc@gmail.com</span>
                    </div>
                </div>
                 <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Interview</label>
                    <div class="col-sm-9">
                        <input type="date" id="date" name="date" class="form-control">
                        <span class="help-block">DD-MM-YEAR ex: 14-Jul-2017</span>
                    </div>
                </div>
                
                  <div class="form-group">
                    <label for="text" class="col-sm-3 control-label">Technical Marks</label>
                    <div class="col-sm-9">
                    <div data-tip="Enter marks between 1 and 10">
                        <input type="text" id="tech_marks" name="tech_marks" class="form-control">
                    <span class="help-block">Technical Marks out of 10</span>
                    </div>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="text" class="col-sm-3 control-label">Communication Marks</label>
                    <div class="col-sm-9">
                    <div data-tip="Enter marks between 1 and 10">
                        <input type="text" id="com_marks" name="com_marks"  class="form-control">
                    <span class="help-block">Communication marks out of 10</span>
                    </div>
                    </div>
                </div>
              
              
                <div class="form-group">
                    <label for="text" class="col-sm-3 control-label">Attitude Marks</label>
                    <div class="col-sm-9">
                    <div data-tip="Enter marks between 1 and 10">
                        <input type="text" id="attitude_marks" name="attitude_marks"  class="form-control">
                    <span class="help-block">Attitude marks out of 10</span>
                    </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-6 control-label">Status</label>
                    <div class="col-sm-9">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="status" name="status"value="Low calorie">Selected
                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="status" name="status" value="Low salt">Non Selected
                            </label>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <!-- <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">I accept <a href="#">terms</a>
                            </label>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </div>
                </div>
            </form:form> <!-- /form -->
            
            <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        </div> <!-- ./container -->


</body>
</html>


