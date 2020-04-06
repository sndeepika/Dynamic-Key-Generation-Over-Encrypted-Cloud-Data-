<%-- 
    Document   : status
    Created on : 11 Mar, 2018, 11:28:16 AM
    Author     : RAVI
--%>

<%@page import="com.util.SendMailSSL"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.RandomNumber"%>
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
        String id=request.getParameter("id");
        String username=request.getParameter("username");
        String filename=request.getParameter("filename");
        
      int number=  RandomNumber.getRandom();
      Connection con2=DbConnector.getConnection();
      
      
      PreparedStatement pp=con2.prepareStatement("select keyword1,keyword2 from uploadfile where filename=?");
      pp.setString(1, filename);
      ResultSet rss=pp.executeQuery();
      rss.next();
      String keyword1=rss.getString("keyword1");
       String keyword2=rss.getString("keyword2");

      
              PreparedStatement pst2=con2.prepareStatement("update uploadfile set gkey=? where filename=?");
              pst2.setString(1, String.valueOf(number));
              pst2.setString(2, filename);
              pst2.executeUpdate();
              
            
              
               
              
             PreparedStatement pst3=con2.prepareStatement("select email from register where  username=?");
             pst3.setString(1, username);
             ResultSet rs3=pst3.executeQuery();
             rs3.next();
             String email=rs3.getString("email");
             
             
             String data="Index1:"+keyword1+"\nIndex2:"+keyword2+"\nFileKey:"+String.valueOf(number);
             
             
             SendMailSSL.sendMail(data, email);
             
             
             
              
       
         Connection con=DbConnector.getConnection();
              PreparedStatement pst=con.prepareStatement("update request set gkey=?,accept='yes' where id=?");
              pst.setString(1, String.valueOf(number));
              pst.setString(2, id);
              
              int i=pst.executeUpdate();
              
               if(i>0)
              {
                  request.setAttribute("message", "Key Sended Success..");
                  request.getRequestDispatcher("viewrequest.jsp").forward(request, response);
              
              }
              
       
       
        %>
    </body>
</html>
