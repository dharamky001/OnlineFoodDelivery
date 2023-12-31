<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
   <style>
	   /* Apply a background color and center the login form */
body {
	font-family: Arial, Helvetica, sans-serif;
    background-image: url("images/img3.jpg");
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: 100% 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

/* Style the login container */
.login-container {
	background-color: antiquewhite;
	border: 6px solid antiquewhite;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 300px;
    text-align: center;
}

/* Style the login form elements */
.login-container h2 {
    margin-bottom: 20px;
}



.login-container input[type="email"],
.login-container input[type="password"] {
	width: 100%;
    height: 37px;
    font-size: 22px;
    padding: 10px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.login-container input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 60px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.login-container input[type="submit"]:hover {
    background-color: #45a049;
}

/* Add spacing between form elements */
.login-container label {
    display: block;
    margin-bottom: 10px;
}

/* Center the form button */
.login-container input[type="submit"] {
    margin-top: 15px;
}

/* Style links (e.g., "Forgot Password?" or "Register") */
.login-container a {
    text-decoration: none;
    color: #007BFF;
    font-weight: bold;
}

.login-container a:hover {
    text-decoration: underline;
}
.error-message {
            color: red;
            font-size: 14px;
            margin-top: 5px;
        }

   </style>
   
   <script>
        document.getElementById("login-form").addEventListener("submit", function (event) {
            event.preventDefault();

            // Get the values entered by the user
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            // Check if the username and password meet your validation criteria
            if (username === "" || password === "") {
                document.getElementById("error-message").textContent = "Username and password are required!";
            } else if (username !== "your_username" || password !== "your_password") {
                document.getElementById("error-message").textContent = "Invalid username or password!";
            } else {
                // You can redirect the user to another page or perform other actions here
                alert("Login successful!");
            }
        });
    </script>
   
</head>

<body>
    <div class="login-container">
        <h2>Login</h2>
        <form  action="login" method="post">
            <label for="Gmail">Gmail:</label>
            <input type="email" id="Gmail" name="Gmail" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <span class="error-message" id="error-message"></span>

            <input type="submit" value="Login">
        </form>
        <p><a href="Registration.html">Register/sign up</a></p>
    </div>
    
</body>
</html>