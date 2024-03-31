<%-- 
    Document   : retailer
    Created on : 2024年3月30日, 16:13:50
    Author     : lfrz1
--%>
<%@page import="java.util.List" %>
<%@page import="model.Food" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Retailer management portal</title>
    </head>
    <body>
        <h2>Inventory</h2>

        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Location</th>
                    <th>quantity</th>
                    <th>price</th>
                </tr>
            </thead>
            <tbody>
                <% List<Food> items = (List<Food>) request.getAttribute("items");
                for (Food food : items) {%>
                <tr>
                    <td><%= food.getUid()%></td>
                    <td><%= food.getName()%></td>
                    <td><%= food.getLocation()%></td>
                    <td><%= food.getQuantity() %></td>
                    <td><%= food.getPrice() %></td>
                </tr>
                <% }%>
            </tbody>
        </table>
    </body>
</html>
