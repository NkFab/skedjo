<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String u = session.getAttribute("user").toString();
    String n = request.getParameter("names");
    String p = request.getParameter("phone");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo", "root", "Nkaka@16628");
        PreparedStatement ps = con.prepareStatement("UPDATE employee SET names = ?, phone = ? WHERE username = ?");
        ps.setString(1, n);
        ps.setString(2, p);
        ps.setString(3, u);
        ps.executeUpdate();
        request.setAttribute("success_message", "The account was Updated");
    } catch (Exception e) {
        e.printStackTrace();
        request.setAttribute("error_message", "Something is wrong");
    }
    request.getRequestDispatcher("modify_account.jsp").forward(request, response);
%>