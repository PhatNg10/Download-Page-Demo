<%-- 
    Document   : album2_download
    Created on : Sep 10, 2026, 10:56:51 AM
    Author     : phatn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/download.css">
        <title>Album 2 Download</title>
    </head>
    <body>
        <h1>Downloads</h1>
        
        <h2>Paddlefoot - The First CD</h2>
        
        <table>
            <tr>
                <th>Song title</th>
                <th>Audio Format</th>
            </tr>
            
            <tr>
                <td>Many star in the skyline</td>
                <td>
                    <a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/audio2.mp3">MP3</a>
                </td>
            </tr>
            
            <tr>
                <td>The star fade away</td>
                <td>
                    <a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/audio2.mp3">MP3</a>
                </td>
            </tr>
        </table>
    </body>
</html>
