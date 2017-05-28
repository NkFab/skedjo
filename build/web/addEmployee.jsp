<%-- 
    Document   : addEmployee
    Created on : Mar 15, 2017, 6:45:23 PM
    Author     : nkaka
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String n = request.getParameter("nm");
            String e = request.getParameter("em");
            String p = request.getParameter("pss");
            String ph = request.getParameter("pho");
            String po = request.getParameter("pos");
            String g = request.getParameter("gov");
            String com = session.getAttribute("company").toString();
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo","root","Nkaka@16628");
                PreparedStatement ps = con.prepareStatement("INSERT INTO employee VALUES (?,?,?,?,?,?,?)");
                ps.setString(1, e);
                ps.setString(2, n);
                ps.setString(3, p);
                ps.setString(4, ph);
                ps.setString(5, po);
                ps.setString(6, g);
                ps.setString(7, com);
                ps.execute();
                request.setAttribute("message", n+"'s account was created succesfully");
            } catch (SQLException ex) {
                request.setAttribute("errorMessage","Something went wrong, an error occured");
                System.out.println(ex);
                ex.printStackTrace();
            }
            request.getRequestDispatcher("settings.jsp").forward(request, response);
        %>
    </body>
</html>
