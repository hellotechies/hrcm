<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="include.jsp"%>

<html>
<head>
<title>Job Application</title>
<!-- for-mobile-apps -->

<link href='//fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/career.css">
<link rel="stylesheet" href="css/style.css" type='text/css'/>
<link rel="stylesheet" href="css/bootstrap.css" type='text/css'/>
 <link rel="stylesheet" href="css/bootstrap.min.css" type='text/css'/>
  <link rel="stylesheet" href="css/bootstrap-grid.min.css" type='text/css'/>
   <link rel="stylesheet" href="css/bootstrap-reboot.css" type='text/css'/>
    <link rel="stylesheet" href="css/bootstrap-reboot.min.css" type='text/css'/>
 <link rel="stylesheet" href="css/font-awesome-login.css" type='text/css'/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body id="login">
<div class="content">
	
	<h1 style="color:green;">JOIN WITH US</h1>
	<div>
	<h3 style="color:red;text-align:center">${msg}</h3>
		<div class="main">
	
			<form:form class="contact-forms" commandName="career" action="careerProcess" method="post" enctype="multipart/form-data">
				<!-- end /.header-->

					<!-- start name -->
					<div class="first-line">
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" id="first_name" name="firstname" placeholder="First name">
								<span class="tooltip tooltip-right-top">surname</span>
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" id="last_name" name="lastname" placeholder="Last name">
								  <span class="tooltip tooltip-right-top">lastname</span>
							</div>
						</div>
					</div>
					<!-- end name -->

					<!-- start email phone -->
					<div class="first-line">
						<div class="span6 main-row">
							<div class="input">
								
								<input type="email" placeholder="Email" id="email" name="email">
							<span class="tooltip tooltip-right-top">ex: abc@xyz.com	</span>
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								<input type="text" placeholder="Phone" id="phone" name="phone">
							<span class="tooltip tooltip-right-top">only 10 digits(0-9)</span>
							</div>
						</div>
					</div>
				
<!-- start aadhar -->
					<div class="main-row">
						<div class="input">
							
							<input type="text" id="aadhar" placeholder="Aadhar no " name="aadhar" required>
							<span class="tooltip tooltip-right-top">aadhar no</span>
						</div>
					</div>
					<!-- end aadhar -->
					<!-- start country -->
					<div class="main-row">
						<label class="input select">
							<select name="country">
								<option value="none" selected="">Select country</option>
								<option value="Philippines">Philippines</option>
								<option value="Portugal">Portugal</option>
								<option value="South Africa">South Africa</option>
								<option value="Spain">Spain</option>
								<option value="Switzerland">Switzerland</option>
							</select>
							<i></i>
						</label>
					</div>
					<!-- end country -->

					<!-- start city post code -->
					<div class="first-line">
						<div class="span8 main-row">
							<div class="input">
								
								<input type="text" id="city" placeholder="City" name="city">
								 <span class="tooltip tooltip-right-top">city/town</span>
							</div>
						</div>
						
					</div>
					<!-- end city post code -->

					<!-- start address -->
					<div class="main-row">
						<div class="input">
							
							<input type="text" id="address" placeholder="Address" name="address">
						<span class="tooltip tooltip-right-top">Address</span>
						</div>
					</div>
					<!-- end address -->


					<!-- start position -->
					<div class="main-row">
						<label class="input select">
							<select name="experience" class="positionTypes">
								<option value="none" selected ="">Experience</option>
								<option value="tech lead">0-2 years</option>
								<option value="product manager">1-4 years</option>
								<option value="senior developer"> 3-6 years</option>
								<option value="QA specialist1">5-8 years</option>
								<option value="QA specialist2">7-10 years</option>
								<option value="QA specialist3">8-12 years</option>
								<option value="QA specialist4">11-15 years</option>
								<option value="QA specialist5">14-18 years</option>
<option value="QA specialist6">17-20 years</option>
							</select>
							<i></i>
						</label>
					</div>




	<div class="main-row">
						<label class="input select">
							<select name="position" class="positionTypes">
								<option value="none" selected ="">Designation</option>
								<option value="tech lead1">Trainee</option>
								<option value="tech lead">Software Engineer</option>
								<option value="tech lead">SeniorSoftwareEngineer</option>
								<option value="tech lead">Team Lead</option>
								<option value="tech lead">Project Lead</option>
								<option value="tech lead">Project Manager</option>
								<option value="tech lead">SeniorProjectManager</option>
								<option value="tech lead">Senior Manager</option>		
								<option value="tech lead">Associate Director</option>
							</select>
								
							<i></i>
						</label>
					</div>






					<!-- start message -->
					<div class="main-row">
						<div class="input">
							<textarea placeholder="Additional info" spellcheck="false" name="message"></textarea>
								<span class="tooltip tooltip-right-top">message / remarks</span>
						</div>
					</div>
					<!-- end message -->

					<!-- start files -->
					
						<div class=" main-row">
							<label class="input append-small-btn">
								<div class="upload-btn">
									Browse
									<input type="file" name="file" onchange="document.getElementById('file1_input').value = this.value;">
								</div>
								<input type="text" id="file1_input" readonly="" placeholder="Add your CV">
								<span class="hint">Only: pdf / doc Size: lessthan 1 Mb</span>
							</label>
						</div>
						
					
					<!-- end files -->

			
				<!-- end /.content -->

				<div class="footer">
					<button type="submit" class="primary-btn">Send</button>
					<button type="reset" class="secondary-btn">Reset</button>
				</div>
				<!-- end /.footer -->

			</form:form>
		</div>   

</div>
		<!-- Scripts -->
		<script src="js/jquery.1.11.1.min.js"></script>

		<!--[if lt IE 10]>
				<script src="j-folder/js/jquery.placeholder.min.js"></script>
			<![endif]-->

		<script>
			$(document).ready(function(){

				// Phone masking
				$('#phone').mask('(999) 999-9999', {placeholder:'x'});

				// Post code masking
				$('#post').mask('999-9999', {placeholder:'x'});

			});
		</script>

	<script src="js/jquery.1.11.1.min.js"></script>

<script type="text/javascript">
	
$("select.positionTypes").change(function () {
    $("select.positionTypes option[value='" + $(this).data('index') + "']").prop('disabled', false);
    $(this).data('index', this.value);
    $("select.positionTypes option[value='" + this.value + "']:not([value=''])").prop('disabled', true);
    $(this).find("option[value='" + this.value + "']:not([value=''])").prop('disabled', false);
    });
</script>

</body>
</html>

