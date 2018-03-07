<%--
  Created by IntelliJ IDEA.
  User: ajay
  Date: 7/3/18
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
</head>
<body>
<%
    response.setHeader ( "Cache-Control","no-cache,no-store,must-revalidate" );

    if ( session.getAttribute("email")==null  )
    {
        response.sendRedirect("index.html");
    }





%>
welcome <%= session.getAttribute("email")%>
<br>
<form method="get" action="SignOut">
    <input type="submit" value="SignOut">
</form>
</body>
</html>
