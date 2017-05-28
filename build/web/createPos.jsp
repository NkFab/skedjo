<%-- 
    Document   : createPos
    Created on : Mar 15, 2017, 8:09:38 PM
    Author     : nkaka
--%>

<%@page import="java.util.*"%>
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
            String Pos = request.getParameter("posi");
            String Pos1 = request.getParameter("posi1");
            String Pos2 = request.getParameter("posi2");
            String Pos3 = request.getParameter("posi3");
            String Pos4 = request.getParameter("posi4");
            String Pos5 = request.getParameter("posi5");
            //String[] positions = {Pos,Pos1,Pos2,Pos3,Pos4,Pos};
            Collection<String> positions = new ArrayList(Arrays.asList());
            if (!Pos.equals("")) {
                positions.add(Pos);
            }
            if (!Pos1.equals("")) {
                positions.add(Pos1);
            }
            if (!Pos2.equals("")) {
                positions.add(Pos2);
            }
            if (!Pos3.equals("")) {
                positions.add(Pos3);
            }
            if (!Pos4.equals("")) {
                positions.add(Pos4);
            }
            if (!Pos5.equals("")) {
                positions.add(Pos5);
            }
            Collection<String> posFromDB = new ArrayList(Arrays.asList());
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo", "root", "Nkaka@16628");

                PreparedStatement ps2 = con.prepareStatement("INSERT INTO position VALUES (?)");
                PreparedStatement ps1 = con.prepareStatement("SELECT * FROM position");
                ResultSet rs = ps1.executeQuery();
                while (rs.next()) {
                    rs.getString(1);
                    posFromDB.add(rs.getString(1));
                }
                out.println("Positions from DB    " + posFromDB + "\n");%><br><%
                    out.println("Positions from Forms " + positions + "\n");%><br><%
                    Collection<String> similar = new HashSet<String>(posFromDB);
                    Collection<String> different = new HashSet<String>();
                    different.addAll(positions);
                    //different.addAll(posFromDB);
                    similar.retainAll(positions);
                    out.println("Similar: " + similar);%><br><%
                        different.removeAll(posFromDB);
                        out.println("Different: " + different);
                        if (!similar.equals(null)) {
                            request.setAttribute("msg", "The following positions are already registered" + similar);
                        }
                        if (!different.equals(null)) {
                            for (String pos : different) {
                                ps2.setString(1, pos);
                                ps2.execute();
                            }
                            request.setAttribute("message", "Ohterwise, the positions which were not registered were added successfully");
                        }

                        con.close();
                    } catch (SQLException e) {
                        request.setAttribute("errorMessage", "The position was previously recorded");
                        out.print("position error");
                        System.out.println(e);
                    }
                    request.getRequestDispatcher("create_position.jsp").forward(request, response);
        %>
    </body>
</html>
