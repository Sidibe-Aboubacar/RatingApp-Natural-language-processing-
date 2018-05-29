<%-- 
    Document   : Success
    Created on : Feb 26, 2018, 9:03:54 PM
    Author     : macbookpro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            @-webkit-keyframes swing { 
                20%, 40%, 60%, 80%, 100% { -webkit-transform-origin: top center; } 
                20% { -webkit-transform: rotate(15deg); } 
                40% { -webkit-transform: rotate(-10deg); } 
                60% { -webkit-transform: rotate(5deg); } 
                80% { -webkit-transform: rotate(-5deg); } 
                100% { -webkit-transform: rotate(0deg); } 
            } 
            @keyframes swing { 
                20% { transform: rotate(15deg); } 
                40% { transform: rotate(-10deg); } 
                60% { transform: rotate(5deg); } 
                80% { transform: rotate(-5deg); } 
                100% { transform: rotate(0deg); } 
            } 
            .swinging{ 
                -webkit-transform-origin: top center; 
                transform-origin: top center; 
                -webkit-animation-name: swing; 
                animation-name: swing; 
            }
        </style>
    </head>
    <body>
        <h1>${message}</h1>
        <img src="images/iPhone10.png" class="swinging" style="width:100%;">
    </body>
</html>
