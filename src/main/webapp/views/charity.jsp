<%-- 
    Document   : charity
    Created on : 2024年3月31日, 02:22:14
    Author     : lfrz1
--%>
<%@page import="java.util.List" %>
<%@page import="model.Food" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Charity portal</title>
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
                <% List<Food> foodsInventory = (List<Food>) request.getAttribute("foodsInventory");
                for (Food food : foodsInventory) {%>
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
            
        <h2>Surplus Food</h2>

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
                <% List<Food> surplusFoods = (List<Food>) request.getAttribute("surplusFoods");
                for (Food food : surplusFoods) {%>
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
