<%-- 
    Document   : register
    Created on : Sep 10, 2026, 10:13:55 AM
    Author     : phatn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/register.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    
    <body>
        <h1>Download registration</h1>
        
        <p>To register for our downloads, enter your name and email address below. 
            Then, click on the Submit button.</p>
        
        <form action="${pageContext.request.contextPath}/DownloadServlet" method="post">
            <input type="hidden" name="action" value="registerUser">
            
            <label class="pad_top">Email:</label>
            <input type="email" name="email" value="${user.email}"><br>
            
            <label class="pad top">First Name:</label>
            <input type="text" name="firstName" value="${user.firstName}"><br>
            
            <label class="pad top">Last Name:</label>
            <input type="text" name="lastName" value="${user.lastName}"><br>
            
            <label>&nbsp;</label>
            <input type="submit" value="Register" class="margin_left">
        </form>
    </body>
</html>
