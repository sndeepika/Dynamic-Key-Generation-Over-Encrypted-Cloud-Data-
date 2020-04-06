<%-- 
    Document   : deletefile
    Created on : Apr 20, 2016, 4:17:13 PM
    Author     : RAVI
--%>

<%@page import="com.util.Delete"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <% 
              
             String filename= request.getParameter("filename");
          String fileid=request.getParameter("fileid");
          System.out.println("filename is:"+filename);
           
          Delete d=new Delete();
          d.delete(filename+".txt");
          
          
          
          Connection con=DbConnector.getConnection();
          PreparedStatement pst=con.prepareStatement("delete from uploadfile where fileid=?");
          pst.setString(1, fileid);
          
          int i=pst.executeUpdate();
          
          if(i>0)
          {
              response.sendRedirect("Uploadfile.jsp");
          }
          
          
          %>
    </body>
</html>
