<%-- 
    Document   : error
    Created on : 18-Jan-2025, 12:37:51 pm
    Author     : DELL
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background-color: #f8d7da; /* Red background for errors */
            color: #721c24; /* Dark red text color */
        }
        h1 {
            font-size: 2em;
            color: #721c24;
        }
        p {
            font-size: 1.2em;
            color: #721c24;
        }
        a {
            color: #721c24;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>An error occurred!</h1>
    <p>${errorMessage}</p>
    <a href="addSupplier.jsp">Try Again</a>
</body>
</html>
