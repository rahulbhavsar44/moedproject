<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<link rel="stylesheet" type="text/css" href="loginpage.css">
</head>
<body>


    <!-- <img src="https://myhomeconnect.com.au/wp-content/uploads/2015/02/mhc_infographics_automation_1.jpg" width="1000px" > -->

	

    <form action="Login" method="post">

    <div class="login">LOGIN</div>

    <br><br>

    <div class="boxshad"><br>
        <div class=".container">
            <!-- container -->

            <div class="fbgoogle">
                <a href="https://www.facebook.com" target="_blank" title="Login Using Facebook">
                    Facebook
                </a>
            </div>

            <div class="fbgoogle">
                <a href="https://www.google.com" target="_blank" title="Login Using Google">
                    Google
                </a>
            </div>
        </div>
        <br>
        <label class="or">Or</label> <br><br><br><br>

        <div class="email">
            <div class="inpu-data">
                <input type="email" required title="Enter Your Registered Email" name="email">
                <div class="underline"></div>
                <label>
                    Email
                </label>
                
            </div>
        </div>
        <br><br>




        <div class="email">
            <div class="inpu-data">
                <input type="password" title="Enter Your Password" name="pass" required>
                <div class="underline"></div>
                <label>
                    Password
                </label>
            </div>
        </div>
        <br><br>
        <br>

		<input type="submit" value="login" class="submitid" >
       
       <br><br><br></div><br>

        <div class="forgot">
            <a href="https://www.yahoo.com">
                Forgot Password?
            </a>
        </div>
         </form>
        <br><br>
    </div>
    <br>

    <label for=""> Not a Member?</label>

    <span class="path">
        <a href="RegistrationForm.jsp" target="_blank">
            Register
        </a>
    </span>
    <br><br>
    




</body>
</html>