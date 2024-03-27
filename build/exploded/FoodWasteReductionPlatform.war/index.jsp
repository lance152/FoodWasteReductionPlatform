<%-- 
    Document   : index
    Created on : 2024年3月25日, 23:14:29
    Author     : lfrz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Manage System</title>
    </head>
    <body>
        <FORM ACTION="LoginServlet" METHOD="POST">
            <input type="text" required="required" placeholder="username" name="username"></input><BR>
            <input type="password" required="required" placeholder="password" name="password"></input><BR> 
        <button class="but" type="submit">Sign in</button> 
                <a href="views/register.jsp"><button type="button"> register </button></a>
        </FORM>
    </body>
</html>
