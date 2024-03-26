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
            username:
            <INPUT TYPE="TEXT" NAME="user" ><BR>
            password:
            <INPUT TYPE="TEXT" NAME="lastName" ><P>
                <INPUT TYPE="SUBMIT" value="login">
                <input type="button" value="register"><!-- Press this button to submit form -->
        </FORM>
    </body>
</html>
