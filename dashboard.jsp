<%-- 
    Document   : dashboard
    Created on : 18-Jan-2025, 12:46:17 pm
    Author     : DELL
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supplier Management Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            text-align: center;
            padding: 50px;
        }
        h1 {
            background-color: #007bff;
            color: white;
            padding: 20px;
            border-radius: 5px;
        }
        a {
            display: block;
            margin: 10px 0;
            padding: 10px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Supplier Management Dashboard</h1>
        <a href="addSupplier.jsp">Add Supplier</a>
        <a href="viewSuppliers.jsp">View Suppliers</a>
        <a href="deleteSupplier.jsp">Delete Supplier</a>
        <a href="searchSupplier.jsp">Search Supplier</a>
    </div>
</body>
</html>
