<%@page import="java.sql.*"%>
<%@page import="java.io.OutputStream"%>
<%
    String u = session.getAttribute("user").toString();
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo","root","Nkaka@16628");
        PreparedStatement ps = con.prepareStatement("select photo from employee where username = '"+u+"' ");
        ResultSet rs = ps.executeQuery();
        if (rs.next()){
            byte barray[] = rs.getBytes("photo");
            response.setContentType("image/jpeg");
            out.clear();
            OutputStream os = response.getOutputStream();
            os.write(barray);
            os.flush();
            os.close();
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>