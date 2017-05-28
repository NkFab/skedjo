<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String u = request.getParameter("user");
    String p = request.getParameter("pass");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo", "root", "Nkaka@16628");
        PreparedStatement ps = con.prepareStatement("SELECT username,names,pos,compName,user_type FROM employee WHERE username = ? and pass = ? ");
        ps.setString(1, u);
        ps.setString(2, p);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            session.setAttribute("user", rs.getString("username"));
            session.setAttribute("names", rs.getString("names"));
            session.setAttribute("company", rs.getString("compName"));
            session.setAttribute("position", rs.getString("pos"));
            if (rs.getString("user_type").equals("Admin")) {
                request.getRequestDispatcher("dashboard.jsp").forward(request, response);
            } else if (rs.getString("user_type").equals("Scheduler")) {
                request.getRequestDispatcher("scheduler.jsp").forward(request, response);
            } else if (rs.getString("user_type").equals("Employee_level")) {
                request.getRequestDispatcher("employee_level.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("errorLogin", "Incorrect Username or Password");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    } catch (SQLException e) {
        out.print(e);
        e.printStackTrace();
    } catch (Exception e) {
        System.out.println(e);

    }

%>
