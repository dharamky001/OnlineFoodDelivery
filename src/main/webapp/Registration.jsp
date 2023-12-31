<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
		/* Apply a background color and center the registration form */
body {
	background-image: url("images/img.jpg");
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: 100% 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

/* Style the registration container */
.container {
     margin-top: 37px;
     margin-right: 11px;
    
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 26px;
    width: 300px;
    text-align: start;
    
}
/* Style the registration form elements */
.container h2 {
    margin-bottom: 20px;
}

.container input[type="text"],
.container input[type="email"],
.container input[type="password"] {
    width: 100%;
        height: 27px;
    font-size: 22px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.container input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.container input[type="submit"]:hover {
    background-color: #45a049;
}

/* Add spacing between form elements */
.container label {
    display: block;
    margin-bottom: 10px;
}

/* Center the form button */
.container input[type="submit"] {
    margin-top: 15px;
}

/* Style links (e.g., "Forgot Password?" or "Login") */
.container a {
    text-decoration: none;
    color: #007BFF;
    font-weight: bold;
}

.container a:hover {
    text-decoration: underline;
}


	</style>
	<script>
		
	</script>
</head>


<body>
    <div class="container">
        <h2>Registration</h2>
        <form action="RigistrationServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>

            <input type="submit" value="Register" id="sub">
        </form>
    </div>
</body>


</html>