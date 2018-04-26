<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<title>Filter</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/style.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/font-awesome.css" />" />
<link type="text/css" rel="stylesheet" href="<spring:url value="/resources/css/custom.css" />" />
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
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
                            <a href="#"><i class="fa fa-envelope nav_icon"></i>Interview Schedule<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="round1">Rounds Registration</a>
                                </li>
                                 <li>
                                    <a href="inbox">Inbox</a>
                                </li>
                                <li>
                                    <a href="forms">Technical email</a>
                                </li>
                                <li>
                                    <a href="compose">Candidate email</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="page-wrapper">
        <div class="graphs">
	          <div class="col-md-8 inbox_right">
         	<form action="#" method="GET">
                <div class="input-group">
                    <input type="text" id="search" class="form-control1 input-search" onkeyup="myFunction()" placeholder="Search...">
                    <span class="input-group-btn">
                        <button class="btn btn-success" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            <div class="mailbox-content">
               <div class="mail-toolbar clearfix">
			     <div class="float-left">
			        <div class="btn btn_1 btn-default mrg5R">
			           <i class="fa fa-refresh"> </i>
			        </div>
			        	<button type="button" class="btn btn-primary btn-xs">Send</button><br>
			        <!-- <div class="dropdown">
			            <a href="#" title="" class="btn btn-default" data-toggle="dropdown" aria-expanded="false">
			                <i class="fa fa-chevron-down icon_8">Experience</i>
			            <div class="ripple-wrapper"></div></a>
			            <ul class="dropdown-menu float-right">
			                <li>
			                    <a href="#" title="">
			                        <i class="fa fa-download icon_9"></i>
			                        0 year
			                    </a>
			                </li>
			                <li>
			                    <a href="#" title="">
			                        <i class="fa fa-download icon_9"></i>
			                        1 year
			                    </a>
			                </li>
			                <li>
			                    <a href="#" title="">
			                        <i class="fa fa-download icon_9"></i>
			                        2 year
			                    </a>
			                </li>
			               <li>
                          <a href="#" title="">
                              <i class="fa fa-download icon_9"></i>
                              3 year
                          </a>
                      </li>
			            </ul>
			        </div> -->
			  			        <div class="clearfix"> </div>
               <table class="table" id="myTable">
		<tbody>
		<c:forEach var="career" items="${careerList}">
	
	  	<tr class="unread_checked">
			<td class="hidden-xs">
			<input type="checkbox" class="checkbox"></td>
			<td class="hidden-xs"><i class="fa fa-star icon-state-warning"></i></td>	
							<td class="hidden-xs">
							<td>${career.id}</td>
							<td>${career.firstname}</td>
							<td>${career.message }</td>
							<td>${career.experience}</td>
							<td>${career.address}</td>
							<td>${career.email}</td>
							<td>${career.phone}</td>
								<td>${career.aadhar}</td>
							<td>${career.country}</td>
							<td>${career.city}</td>
							<td>${career.address}</td>
							<td>${career.position}</td>
							<td><c:if test="${career.resume != null}">
				<a href="download"><i class="fa fa-paperclip"></i></a></c:if>
						</td>
							<td>${career.mytime}</td>
			</tr>
										<script>
$('.check input:checkbox').click(function() {
    $('.check input:checkbox').not(this).prop('checked', false);
});     
		</script>
					</c:forEach>
							</tbody>

						</table>
						
	<!-- 	<button type="button" class="btn btn-primary btn-xs">Send</button> -->
		
<script type="text/javascript"> 
function myFunction() {
	  var input, filter, table, tr, td, i;
	  input = document.getElementById("search");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
	    if (td) {
	      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
</script>
  </div>
            </div>
            <div class="clearfix"> </div>
       </div>
   
   </div>
      </div>
   </div>
</form> 
<%-- ajax related part try 
<div>
<form>
<div> <h3><font color="red">Indian States</states></font></h3> 
<br /> Enter India State Name to see autocomplete
<input type="text" size="30" value="" id="inputString" 
onkeyup="lookup(this.value);" onblur="fill();" />
</div>
<div class="suggestionsBox" id="suggestions" style="display: none;">
<div class="suggestionList" id="autoSuggestionsList">
</div>
</div>
</form>
</div>

<script type="text/javascript">
function lookup(inputString) {
if(inputString.length == 0) {
$('#suggestions').hide();
} else {
$.post("states.jsp", {queryString: ""+inputString+""}, function(data){
if(data.length >0) {
$('#suggestions').show();
$('#autoSuggestionsList').html(data);
}
});
}
}
function fill(thisValue) {
$('#inputString').val(thisValue);
setTimeout("$('#suggestions').hide();", 200);
}
</script>
 --%>


</body>
</html>



				