<%-- 
    Document   : success
    Created on : 18-Jan-2025, 12:37:33 pm
    Author     : DELL
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background-color: #d4edda;
            color: #155724;
        }
        h1 {
            font-size: 2em;
        }
        
        a {
            color: #155724;
            text-decoration: none;
            font-weight: bold;
        }

        .goback {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Supplier added successfully!</h1>
    <a href="addSupplier.jsp">Add Another Supplier</a>
    <div class="goback">
        <a href="dashboard.jsp">Go back to dashboard</a>
    </div>
</body>
</html>
