
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/js/dropdown-toggle.js"></script>
 
 
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/style.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/font-awesome.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/custom.css" />" />



</head>   

<body background="images/bg.jpg">





<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">HRCM</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
	        		<ul class="dropdown-menu">
						
	        		</ul>
	      		</li>
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/1.png" alt=""/><span class="badge">9</span></a>
	        		<ul class="dropdown-menu">
			
						<li class="m_2"><a href="#"><i class="fa fa-lock"></i> Logout</a></li>	
	        		</ul>
	      		</li>
			</ul>

  <div class="navbar-default sidebar" role="navigation">
     <div class="sidebar-nav navbar-collapse">
       <ul class="nav" id="side-menu">
  
    <li> 
   </li>     
  </li> 
    <li>
       <a href="#"><i class="fa fa-envelope nav_icon"></i>Interview Schedule<span class="fa arrow"></span></a>
      <ul class="nav nav-second-level">
   <li>
    <a href="inbox">Inbox</a>
  </li>
   <li>
 <a href="compose">Candidate email</a>
</li>
  <li>
 <a href="forms">Technical email</a>
   </li>
   </ul>
 </li>
 <li> 
    </li>
     </ul>
     </div>
  </div>
  </nav>
        <div id="page-wrapper">
        <div class="graphs">
	     <div class="xs">
  	       <h3>Forms</h3>
  	         <div class="tab-content">
						<div class="tab-pane active" id="horizontal-form">
							<form class="form-horizontal">
								 <div class="col-md-8 inbox_right">
        	<div class="Compose-Message">               
                <div class="panel panel-default">
                    <div class="panel-heading">
                       Technical email
                    </div>
                    <div class="panel-body">
                        <div class="alert alert-info">
                            Please fill details to send a new message
                        </div>
<!-- <textarea id="mytext"></textarea> -->
<select id="dropdown">
  <option value="">round1</option>
    <option value="abc@gmail.com">einstein</option>
    <option value="sah@gmail.com">sahara</option>
    <option value="gh@gmail.com">ganga</option>
    <option value="j@gmail.com">john</option>
</select>


<select id="dropdown1">
  <option value="">round2</option>
    <option value="mahesh@gmail.com">mahesh</option>
    <option value="suresh@gmail.com">suresh</option>
    <option value="naresh@gmail.com">naresh</option>
    <option value="ganesh@gmail.com">ganesh</option>
</select>

<select id="dropdown2">
  <option value="">round3</option>
    <option value="j@gmail.com">john</option>
    <option value="ed@gmail.com">edward</option>
    <option value="al@gmail.com">albert</option>
    <option value="cris@gmail.com">ronaldo</option>
</select>


<select id="dropdown3">
  <option value="">round4</option>
    <option value="sn@gmail.com">sachin</option>
    <option value="re@gmail.com">rehana</option>
    <option value="tim@gmail.com">tim</option>
    <option value="lee@gmal.com">lee</option>
</select>
   <hr>
 <label>Enter Recipient Name : </label>
<!--   <input type="text" class="form-control1 control3" placeholder="enter email"> -->
  <!-- <textarea id="mytext" placeholder="enter email"></textarea>  -->
<input type="text" id="mytext"  class="form-control1 control3" placeholder="enter email">
<script type="text/javascript">
    var mytextbox = document.getElementById('mytext');
    var mydropdown = document.getElementById('dropdown');

    mydropdown.onchange = function(){
          mytextbox.value = mytextbox.value  + this.value; //to appened
         //mytextbox.innerHTML = this.value;
    }
</script>

<script type="text/javascript">
    var mytextbox1 = document.getElementById('mytext1');
    var mydropdown1 = document.getElementById('dropdown1');

    mydropdown1.onchange = function(){
          mytextbox.value = mytextbox.value  + this.value; //to appened
         //mytextbox.innerHTML = this.value;
    }
</script>
<script type="text/javascript">
    var mytextbox2 = document.getElementById('mytext2');
    var mydropdown2 = document.getElementById('dropdown2');

    mydropdown2.onchange = function(){
          mytextbox.value = mytextbox.value  + this.value; //to appened
         //mytextbox.innerHTML = this.value;
    }
</script>
<script type="text/javascript">
    var mytextbox3= document.getElementById('mytext3');
    var mydropdown3 = document.getElementById('dropdown3');

    mydropdown3.onchange = function(){
          mytextbox.value = mytextbox.value  + this.value; //to appened
         //mytextbox.innerHTML = this.value;
    }
</script>
                      <br>
                        <label>Enter Subject :  </label>
                        <input type="text" class="form-control1 control3" value="Interview schedule">
                        <label>Enter Message : </label>
                        <textarea rows="6" class="form-control1 control2">Dear Candidate,

As a result of your application for the position of **********, I would like to invite you to attend an interview on **** , at * *M at our office in ***CompanyName, IND.

You will have an interview with the ****** manager, ****Name of Person***. The interview will last about ***00** minutes. Please bring three references as well as a copy of your driver's license to the interview.

If the date or time of the interview is inconvenient, please contact me by phone (***********) or email (*****@gmail.com) in order to arrange another appointment.

We look forward to seeing you.

Best regards,

Thomas Gunn

_______

Thomas Gunn
Administrative Director
Randall & Associates
101 Beech Street
Quincy, MA 02169
518-555-5555
gunn@gmail.com</textarea>
                        <hr>

 <div class="form-group">
        <label for="exampleInputFile">File input</label>
        <input type="file" id="exampleInputFile">
        <p class="help-block">Example block-level help text here.</p>
      </div>
  <a href="#" class="btn btn-warning btn-warng1"><span class="glyphicon glyphicon-envelope tag_02"></span> Send Mail </a>&nbsp;
      </div>
          </div>
     </div>
         </div>
         <div class="clearfix"> </div>
   </div>
 
						
    </form>
  </div>
  </div>
  </div>
      </div>
   </div>
 
</body>
</html>
