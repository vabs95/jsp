<%--
  Created by IntelliJ IDEA.
  User: ajay
  Date: 7/3/18
  Time: 12:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Q2</title>
  </head>
  <body>


  <%
    int n = Integer.parseInt(request.getParameter("no"));
  %>

  <% for(int i = 0; i<=n; i+=1)
  {
  %>

  <%= i%><br>

  <%
    }
  %>
  </body>
</html>
