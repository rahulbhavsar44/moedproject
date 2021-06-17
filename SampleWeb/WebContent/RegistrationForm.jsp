<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>
    Registration
</title>
<link rel="stylesheet" type="text/css" href="RegistrationFile.css">

</head>
<body>


    <div class="registration-form">
        <h1>Login Details</h1>
        <form action="SaveDataServlet" method="post">
           <p> Full Name:</p>
            <input type="text" name="fullname" placeholder="Full Name">
            <p>User Name:</p>
            <input type="text" name="username" placeholder="User Name">
            <p>Mobile No:</p>
            <input type="number" name="mobile_no" placeholder="10 digit no">
            <p>Email:</p>
            <input type="email" name="email" placeholder="Email">
            <p>Password:</p>
            <input type="password" name="password" placeholder="Password">
            <div class="submission">
            <button type="submit" class="register">Register</button>
            
            <button type="login" class="submit"> <a href="login.jsp"> Back To Login</a></button>
        </div>


        </form>
    </div>


</body>
</html>