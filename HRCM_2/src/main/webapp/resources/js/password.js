   function myFunction() {
       var password = document.getElementById("password").value;
       var retypepassword = document.getElementById("retypepassword").value;
       if (pass1 != pass2) {
           //alert("Passwords Do not match");
           document.getElementById("password").style.borderColor = "#E34234";
           document.getElementById("retypepassword").style.borderColor = "#E34234";
       }
       else {
           alert("Passwords Match!!!");
       }
   }

