<%-- 
    Document   : register
    Created on : Dec 11, 2016, 11:58:50 AM
    Author     : nkaka
--%>

<%@page import="com.sun.mail.smtp.SMTPTransport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String Email = request.getParameter("email");
            String Names = request.getParameter("fname");
            String Pass = request.getParameter("pswd");
            String Company = request.getParameter("cname");
            String Industry =request.getParameter("industry");
            String Phone = request.getParameter("phone");
            String Pos = request.getParameter("posi");
            String Pos1 = request.getParameter("posi1");
            String Pos2 = request.getParameter("posi2");
            String Pos3 = request.getParameter("posi3");
            String Pos4 = request.getParameter("posi4");
            String Pos5 = request.getParameter("posi5");
            String[] positions = {Pos,Pos1,Pos2,Pos3,Pos4,Pos5};
            final String names = request.getParameter("fname");
            final String to = request.getParameter("email");
            final String from = "myskedjo@gmail.com";
            final String host = "smtp.gmail.com";
            final String pass = "myskedjo16628";
            Properties mailProps = new Properties();
            mailProps.put("mail.smtp.user",from);
            mailProps.put("mail.smtp.host",host);
            mailProps.put("mail.smtp.auth", "true");
            mailProps.put("mail.smtp.port", "465"); //587 or 465
            mailProps.put("mail.smtp.starttls.enable", "true");
            Session mailSession = Session.getInstance(mailProps,null);
            
            Session ss = Session.getInstance(mailProps,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication(){
                            return new PasswordAuthentication(from, pass);
                        }
                    });
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo","root","Nkaka@16628");
            try {
                PreparedStatement ps1 = con.prepareStatement("INSERT INTO company VALUES(?,?)");
                ps1.setString(1, Company);
                ps1.setString(2, Industry);
                ps1.execute();
            } catch (SQLException e) {
                out.print("company error");
                System.out.println(e);
            }
            
            
            try{
                PreparedStatement ps2 = con.prepareStatement("INSERT INTO position VALUES (?)");
                for (String position: positions){
                    if (!position.equals("")){
                        ps2.setString(1, position);
                        ps2.execute();
                    }
                }   
            }catch(SQLException e){
                out.print("position error");
                System.out.println(e);
            }
           
            try {
                PreparedStatement ps =  con.prepareStatement("INSERT INTO employee (username,names,pass,phone,pos,compName,user_type) VALUES (?,?,?,?,?,?,?)");
                ps.setString(1,Email);
                ps.setString(2,Names);
                ps.setString(3,Pass);
                ps.setString(4,Phone);
                ps.setString(5,"Manager");
                ps.setString(6,Company);
                ps.setString(7, "Admin");
                ps.execute();
            } catch (SQLException e) {
                out.print("Employee error");
                System.out.println(e);
            }
            
            request.setAttribute("message", "yaay!You have registered your company, now you can login");
            MimeMessage msg = new MimeMessage(ss);
            msg.setFrom(new InternetAddress(from));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            msg.setSubject("skedjo notifications");
            msg.setContent("<h1>Thank you for trusting skedjo</h1>"
                            + "<p>Mr./Mrs.</p>"+names+"<p>This message was sent"
                            + " because you subscribed to use skedjo scheduler www.skedjo.com "
                            + "online. Now you will be receiving mails from time to time"
                            + " giving you directions and replying to queries submitted by you.</p> <br/><br/>"
                            + "for more information call this number: +250786155871 or "
                            + "send and email to this address myskedjo@gmail.com"
                            + "Regards,"
                            + "skedjo ltd."
                            , "text/html");
            SMTPTransport t=(SMTPTransport)mailSession.getTransport("smtp");
            System.out.println(" Taking protocol! ");
            t.connect(host, from, pass);
            System.out.println(" Connection Successfull! ");
            t.sendMessage(msg,msg.getAllRecipients());
            out.println("your subscription was successfull now check your mail");
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
            out.print("WTF???");
        }
        /*} catch (AddressException ex){
            throw new RuntimeException(ex);
        }*/
           request.getRequestDispatcher("index.jsp").forward(request, response);

%>
    </body>
</html>
