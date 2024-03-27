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
            <input type="text" required="required" placeholder="name" name="name"></input><BR>
            <input type="text" required="required" placeholder="xx@123.com" name="email"></input><BR>
            <input type="password" required="required" placeholder="password" name="password"></input><BR>
            <input type="number" required="required" placeholder="0" name="usertype"></input><BR>
        <button class="but" type="submit">Register</button> 
        </FORM>
    </body>
</html>
