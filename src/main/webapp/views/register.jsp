<%-- 
    Document   : register
    Created on : 2024年3月26日, 23:15:01
    Author     : lfrz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <FORM ACTION="RegisterServlet" METHOD="POST">
            username:<input type="text" required="required" placeholder="username" name="username"></input><BR>
            name:<input type="text" required="required" placeholder="name" name="name"></input><BR>
            email:<input type="text" required="required" placeholder="xx@123.com" name="email"></input><BR>
            password:<input type="password" required="required" placeholder="password" name="password"></input><BR>
            usertype:<select name="usertype">
                <option value="1">retailer</option>
                <option value="2">charity</option>
                <option value="3">customer</option>
            </select><BR>
        <button class="but" type="submit">Register</button> 
        </FORM>
    </body>
</html>
