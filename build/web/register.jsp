<%-- 
    Document   : register
    Created on : Mar 28, 2019, 1:00:55 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Register </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/login_util.css">
	<link rel="stylesheet" type="text/css" href="css/login_main.css">
    </head>
    <body>
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                            
				<form class="login100-form validate-form" action="register" method="POST" id="registerForm">
					<span class="login100-form-title p-b-33">
						REGISTER
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="reg_mail" placeholder="Email">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="reg_pass" placeholder="Password">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="container-login100-form-btn m-t-20">
						<input class="login100-form-btn" type="submit" value="Sign up">
							
						
					</div>

	

    <script>
        function doSubmit() {
            document.getElementById("registerForm").submit();
                     }
    </script>
        <script src="js/main.js"></script>
    </body>
    
</html>
