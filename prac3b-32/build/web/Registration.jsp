<%-- 
    Document   : Registration
    Created on : 15 Jul, 2024, 8:04:35 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //jsp scriptlet
            String s1=request.getParameter("name");
            String s2=request.getParameter("pass");
            String s3=request.getParameter("repass");
            String s4=request.getParameter("mail");
            String s5=request.getParameter("country");
            if(s2.equals(s3))
            {
                //database connectivity code
                try
                {
                Class .forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
                PreparedStatement pst=conn.prepareStatement("insert into registration_32 value(?,?,?,?)");
                pst.setString(1,s1);
                pst.setString(2,s2);
                pst.setString(3,s4);
                pst.setString(4,s5);
                int rows=pst.executeUpdate();
                if (rows==1)
                {
                    out.print("Registeration successful");
                }
                else
                {
                    out.print("Registeration failed..try again");
                     %>
                <jsp:include page="Registration.html"></jsp:include>       
                <% 
                }
                }
                catch (Exception e)
                {
                    out.print("Exception="+e);
                }
            }
            
            else
            {
                out.print("Password mismatch....Register again");
                %>
                <jsp:include page="Registration.html"></jsp:include>       
                <%
            }
         %>
    </body>
</html>
