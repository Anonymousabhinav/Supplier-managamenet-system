<%-- 
    Document   : errorDelete
    Created on : 18-Jan-2025, 1:02:04 pm
    Author     : DELL
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            background-color: #f8d7da;
            color: #721c24;
        }
        h1 {
            font-size: 2em;
        }
        a {
            color: #721c24;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>An Error Occurred!</h1>
    <p>${errorMessage}</p>
    <a href="dashboard.jsp">Return to Dashboard</a>
</body>
</html>
