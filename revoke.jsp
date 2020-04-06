<%-- 
    Document   : revoke
    Created on : 10 Sep, 2016, 11:38:49 AM
    Author     : RAVI
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
      String autoid=request.getParameter("autoid");
     Connection con= DbConnector.getConnection();
     
PreparedStatement pst=con.prepareStatement("delete from hacker where autoid=?");
pst.setString(1, autoid);

int i=pst.executeUpdate();

if(i>0)
{
    
    response.sendRedirect("filehacker.jsp");
    
}



      
      
      
      %>
    </body>
</html>
