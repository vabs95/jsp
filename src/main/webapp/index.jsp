  <%--
  Created by IntelliJ IDEA.
  User: ajay
  Date: 7/3/18
  Time: 12:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form name="loginForm" method="post" action="Login">
    email:
    <input type="email" name="email"><br>
    Password:
    <input type="password" name="pass"><br>
    <input type="submit" value="signIn">

  </form>
  <form method="post" action="register">
    <input type="submit" value="signUp">

  </form>
  </body>
</html>
