<%-- 
    Document   : album4_download
    Created on : Sep 10, 2026, 11:01:01 AM
    Author     : phatn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/download.css">
        <title>Album 4 Download</title>
    </head>
    <body>
        <h1>Downloads</h1>
        
        <h2>Joe Rut - Genuine Wood Grained Finish</h2>
        
        <table>
            <tr>
                <th>Song title</th>
                <th>Audio Format</th>
            </tr>
            
            <tr>
                <td>No Friend</td>
                <td>
                    <a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/audio4.mp3">MP3</a>
                </td>
            </tr>
            
            <tr>
                <td>No Nobody</td>
                <td>
                    <a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/audio4.mp3">MP3</a>
                </td>
            </tr>
        </table>
    </body>
</html>
