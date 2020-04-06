<%-- 
    Document   : DeleteUser
    Created on : Mar 10, 2018, 4:17:04 AM
    Author     : w7
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <% 
      
      String userid=request.getParameter("userid");
     Connection con= DbConnector.getConnection();
      PreparedStatement pst=con.prepareStatement("delete from register where userid=?");
    pst.setString(1, userid);
    int i=pst.executeUpdate();
    if(i>0)
    {
        response.sendRedirect("userdetail.jsp");
    }
      
      %>
    </body>
</html>
