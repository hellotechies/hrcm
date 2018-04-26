<%@include file="include.jsp"%>

<title>HRCM-Rounds</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>


</head>
<body id="login">

<center>
 <%--  <div class="login-logo">
    <a href=""><img src="${pageContext.request.contextPath}/resources/images/lo.png"/></a>
  </div> --%>
<h2 class="form-heading">Round1</h2>
 <form:form id="register-form" modelAttribute="round1" action="round1Process"	method="POST">
      <br><p>Enter your details</p>
      <br>
      <table  cellpadding="5" cellspacing="5" align="center">
      <tr>
      <td>
      <input type="text" class="form-control1" placeholder="Name of Person" autofocus="" id="name" name="name" required></td></tr>
      <tr>
      <td>
      <input type="text" class="form-control1" placeholder="techname" autofocus="" id="techname" name="techname" required></td></tr>
      <tr>
        <td>
      <input type="text" class="form-control1" placeholder="Email" autofocus="" id="email" name="email" required></td></tr>
      <tr>
      <td>
 <button class="btn btn-lg btn-success1 btn-block" type="submit" onclick="myFunction()">Submit</button></td></tr>
      </table>
  </form:form>
   </center>
  
</body>
</html>
