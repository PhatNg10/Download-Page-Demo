<%-- 
    Document   : audio1_download
    Created on : Sep 10, 2026, 10:39:32 AM
    Author     : phatn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/download.css">
        <title>Album 1 Download</title>
    </head>
    <body>
        <h1>Downloads</h1>
        
        <h2>86 (the band) - True Life Songs and Pictures</h2>
        
        <table>
            <tr>
                <th>Song title</th>
                <th>Audio Format</th>
            </tr>
            
            <tr>
                <td>You Are a Star</td>
                <td>
                    <a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/audio1.mp3">MP3</a>
                </td>
            </tr>
            
            <tr>
                <td>Don't Make No Difference</td>
                <td>
                    <a href="${pageContext.request.contextPath}/musicStore/sound/${productCode}/audio1.mp3">MP3</a>
                </td>
            </tr>
        </table>
    </body>
</html>
