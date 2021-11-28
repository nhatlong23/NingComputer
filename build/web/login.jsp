<%-- 
    Document   : login
    Created on : Nov 7, 2021, 11:11:09 PM
    Author     : Long
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="icon" href="image/NingPhone.png" type="image/x-icon"</> 
        
        <title>Login</title>
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <h2>Welcome to NingPhone Computer: Sign in/up Form</h2>
            <div class="container" id="container">
                <div class="form-container sign-up-container">
                    <form action="signup" method="post">
                        <h1>Create Account</h1>
                        <div class="social-container">
                            <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                        <span>or use your email for registration</span>
                        <input name="user" type="text" placeholder="Name" />
                        <input name="email" placeholder="Email" />
                        <input name="pass" type="password" placeholder="Password" />
                        <input name="repass" type="repeat-password" placeholder="Repeat-Password" />
                        <button type="submit">Sign Up</button>
                    </form>
                </div>
                <div class="form-container sign-in-container">
                    <form action="login" method="post">
                        <div style="background: white; border-radius: 2px; border: 1px solid rgb(251, 196, 196); box-sizing: border-box; color: #de5959; float: none; font-family: Arial, sans-serif; font-size: 15px; margin: 0px auto; outline: 0px; padding: 15px 20px; vertical-align: baseline;">${mess}</div>
                    <h1>Sign in</h1>
                    <div class="social-container">
                        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <span>or use your account</span>
                    <input name="user" type="text" placeholder="Name" />
<!--                    <input name="email" type="email" placeholder="Email" />-->
                    <input name="pass" type="password" placeholder="Password" />
                    <a href="#">Forgot your password?</a>
                    <button type="submit">Sign In</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button type="submit" class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <button type="submit" class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="javascript/login.js"></script>

</html>
