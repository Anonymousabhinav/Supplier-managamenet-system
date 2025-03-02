<%-- 
    Document   : searchSupplier
    Created on : 18-Jan-2025, 1:04:43 pm
    Author     : DELL
--%>

<%@ page import="java.sql.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Suppliers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        h1 {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
            padding: 10px;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        td {
            text-align: center;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        .search-box {
            text-align: center;
            margin: 20px 0;
        }
        input[type="text"] {
            padding: 10px;
            font-size: 16px;
            width: 40%;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Search Suppliers</h1>
    <div class="container">
        <!-- Search form -->
        <div class="search-box">
            <form action="SearchSupplierServlet" method="get">
                <input type="text" name="searchQuery" placeholder="Enter supplier name" required>
                <input type="submit" value="Search">
            </form>
        </div>

        <!-- Display suppliers table -->
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
            </tr>

            <% 
                String searchQuery = request.getParameter("searchQuery");
                Connection conn = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;

                try {
                    // Database connection
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/suppliermanagement", "root", "");
                    
                    // Query to search suppliers by name
                    String sql = "SELECT * FROM suppliers WHERE name LIKE ?";
                    stmt = conn.prepareStatement(sql);
                    stmt.setString(1, "%" + searchQuery + "%");  // Add wildcards to search

                    rs = stmt.executeQuery();

                    // Loop through the result set and display the suppliers
                    while (rs.next()) {
                        int id = rs.getInt("id");
                        String name = rs.getString("name");
                        String email = rs.getString("email");
                        String phone = rs.getString("phone");
                        String address = rs.getString("address");
            %>

            <tr>
                <td><%= id %></td>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= phone %></td>
                <td><%= address %></td>
            </tr>

            <% 
                    } 
                } catch (SQLException | ClassNotFoundException e) {
                    e.printStackTrace();
                } finally {
                    // Close resources
                    try {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
        </table>
    </div>
</body>
</html>
