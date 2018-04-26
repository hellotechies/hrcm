
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



  <title>round registration</title>
  <link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/rounds.css" />" />
  <link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css" />" />
  <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  
</head>
<body background="images/bg.jpg">
<script>
function setRType(rtypeVal){
	alert('1...'+rtypeVal)
	$("#rType").val(rTypeVal);
	
}
</script>
<div class="container">
  <div class="row">
   
     
        <div class="comment-tabs">
            <ul class="nav nav-tabs" role="tablist">
                <li><a href="#add-comment0" role="tab" data-toggle="tab" onclick="setRType('R1');"><h4 class="reviews text-capitalize">Round 1</h4></a></li>
                <li><a href="#add-comment1" role="tab" data-toggle="tab" onclick="setRType('R2');"><h4 class="reviews text-capitalize">Round 2</h4></a></li>
                <li><a href="#add-comment2" role="tab" data-toggle="tab" onclick="setRType('R3');"><h4 class="reviews text-capitalize">Round 3</h4></a></li>
                <li><a href="#add-comment3" role="tab" data-toggle="tab" onclick="setRType('R4');"><h4 class="reviews text-capitalize">Round 4</h4></a></li>
            </ul>            
           


            <div class="tab-content">
                <div class="tab-pane active" id="add-comment0">                
                    <form  method="post" class="form-horizontal" id="accountSetForm" role="form" action="roundProcess" modelAttribute="rounds">
                      
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="name" id="name" placeholder="Enter ur name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nickName" class="col-sm-2 control-label">Technical name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="nickName" id=" " placeholder="Technical person name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" name="email" id="email" placeholder="abc@mail.com">
                            </div>
                        </div>  
                 		<div><input type="hidden" id="rType" name="rType"/></div>
                       
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-primary btn-circle text-uppercase" type="submit" id="submit">Save</button>
                            </div>
                        </div>            
                    </form>
                </div>






       
                <div class="tab-pane " id="add-comment1">                
                    <form action="roundProcess" method="post" class="form-horizontal" id="accountSetForm" role="form">
                      
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="name" id="name" placeholder="Enter ur name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nickName" class="col-sm-2 control-label">Technical name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="nickName" id="nickName" placeholder="Technical person name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" name="email" id="email" placeholder="abc@mail.com">
                            </div>
                        </div>  
                 <div><input type="hidden" id="rType" name="rType"/></div>
                       
                       
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-primary btn-circle text-uppercase" type="submit" id="submit">Save</button>
                            </div>
                        </div>            
                    </form>
                </div>



     <div class="tab-pane" id="add-comment2">                
                    <form action="roundProcess" method="post" class="form-horizontal" id="accountSetForm" role="form">
                      
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="name" id="name" placeholder="Enter ur name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nickName" class="col-sm-2 control-label">Technical name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="nickName" id="nickName" placeholder="Technical person name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" name="email" id="email" placeholder="abc@mail.com">
                            </div>
                        </div>  
                 <div><input type="hidden" id="rType" name="rType"/></div>
                       
                       
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-primary btn-circle text-uppercase" type="submit" id="submit">Save</button>
                            </div>
                        </div>            
                    </form>
                </div>


     <div class="tab-pane" id="add-comment3">                
                    <form action="roundProcess" method="post" class="form-horizontal" id="accountSetForm" role="form">
                      
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="name" id="name" placeholder="Enter ur name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nickName" class="col-sm-2 control-label">Technical name</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" name="nickName" id="nickName" placeholder="Technical person name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                              <input type="email" class="form-control" name="email" id="email" placeholder="abc@mail.com">
                            </div>
                        </div>  
                 <div><input type="hidden" id="rType" name="rType"/></div>
                       
                       
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-primary btn-circle text-uppercase" type="submit" id="submit">Save</button>
                            </div>
                        </div>            
                    </form>
                </div>
</div>
</body>
</html>
