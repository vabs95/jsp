<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>

<html>
<head>
    <title>SignUp</title>
</head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        System.out.println("Trying to insert the values");
        String email = request.getParameter("email1");
        String pass = request.getParameter("pass1");
        System.out.println(email + " " + pass + "  " );

        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/login" , "root" , "igdefault");
        PreparedStatement stmt = connection.prepareStatement(" insert into user (email,pass) values(?,?);");
        stmt.setString(1 , email);
        stmt.setString(2 , pass);
        stmt.executeUpdate();
        connection.close();


    }
    catch (SQLException e) {
        e.printStackTrace();
    }
    catch (ClassNotFoundException e) {
        System.out.println("Class not found Exception");
        e.printStackTrace();
    }

%>
<%

    out.print ( "congo for successfully creating an account" );
    RequestDispatcher rs = request.getRequestDispatcher("index.html");
    rs.include(request, response);
%>
</body>
</html>