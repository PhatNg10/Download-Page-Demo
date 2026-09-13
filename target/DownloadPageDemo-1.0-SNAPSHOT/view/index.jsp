<%-- 
    Document   : index.jsp
    Created on : Sep 10, 2026, 10:13:39 AM
    Author     : phatn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/index.css">
        <title>Music Store</title>
    </head>
    
    <body>
        <h1>List of albums</h1>
        
        <p>
            <a href="${pageContext.request.contextPath}/DownloadServlet?action=checkUser&amp;productCode=album1">
                86 (the band) - True life Songs and Pictures
            </a><br>
            
            <a href="${pageContext.request.contextPath}/DownloadServlet?action=checkUser&amp;productCode=album2">
                Paddlefoot - The First CD
            </a><br>
            
            <a href="${pageContext.request.contextPath}/DownloadServlet?action=checkUser&amp;productCode=album3">
                Paddlefoot - The Second CD
            </a><br>
            
            <a href="${pageContext.request.contextPath}/DownloadServlet?action=checkUser&amp;productCode=album4">
                Joe Rut - Genuine Wood Grained Finish
            </a>
        </p>
    </body>
</html>
