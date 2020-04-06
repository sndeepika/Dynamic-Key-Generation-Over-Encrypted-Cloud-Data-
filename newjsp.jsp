<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            FileInputStream fis=new FileInputStream("d:\\f1.pdf");
            int ch;
            while((ch=fis.read())!=-1)
            {
               out.println((char)ch); 
            }
            %>
    </body>
</html>
