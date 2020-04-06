<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnector"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        
        <meta name="description" content="company is a free job board template">
        <meta name="author" content="">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/fontello.css">
        <link rel="stylesheet" href="css/animate.css">        
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="responsive.css">
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
    </head>
    <body>

        <div id="preloader">
            <div id="status"><h1></h1></div>
        </div>
        <!-- Body content -->
		
        <div class="header-connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8 col-xs-8">
                        <div class="header-half header-call">
                            
                        </div>
                    </div>
                   

        <nav class="navbar navbar-default">
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
           <a></a> 
            </div>
        

            <!-- Collect the nav links, forms, and other content for toggling -->
           
            <h2 align="center"> Dynamic Key Generation Over Encrypted Data </h2>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              
                <center>
                <div class="button navbar-right">
                  <a href="index.html"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s">Home</button></a>
                  <a href="Uploadfile.jsp"><button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.6s">Upload File</button></a>
                  
                   <a href="viewrequest.jsp"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s">View Request</button></a>
                   
                    <a href="AssignkeytoUser.jsp"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s">Assign key to User</button></a>
                  <a href="dataowner.jsp"><button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.6s">Sign Out</button></a>
                  
                     
              </div>
                    </center>

                
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>

     
        </div>

        <div class="content-area">
            <hr>

            
            <div class="row how-it-work text-center">
                     
            <hr>

            	
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/wow.js"></script>
        <script src="js/main.js"></script>
                    </div>
            </div>
        </div>
                
           
            
            <% 
                int fileid=0;
                
            Connection con=DbConnector.getConnection();
            PreparedStatement pst=con.prepareStatement("select max(fileid) from uploadfile");
            ResultSet rs=pst.executeQuery();
            
            if(rs.next())
            {
                fileid=rs.getInt(1);
                
            }
            
            fileid++;
             
            String message=(String)request.getAttribute("message");
            if(message!=null)
            {
                %>
               <center>
                <h2 align="center"><%=message%></h2>
            </center> 
                
                <%
            }
            else
            {
                %>
             <center>
                <h2 align="center">Redundency Occured.......</h2>
            </center>   
                
                <%
            }
            %>
         
            
         
             
            
            <br><br><br>
            
            <center>
                 <form method="post" name="LoginForm" action="uploadServlet" enctype="multipart/form-data">
            
          <table>
   
        <tr>
            <td>File Id:<br><br></td>
            <td><input type="text" id="fileid" name="fileid" value="<%=fileid%>" class="text" size="20"  readonly=""/>
                <br><br> </td>
        </tr>
        
      
        
        
        <tr>
            <td>File Name:<br><br></td>
            <td><input type="text" id="filename" name="filename" value="" class="text" size="20" />
            <br><br></td>
        </tr>
        
        
        <tr>
            <td>Keyword1:<br><br></td>
            <td><input type="text" id="keyword1" name="keyword1" value="" class="text" size="20" />
           <br><br> </td>
        </tr>
        
        
        
        <tr>
            <td>Keyword2:<br><br></td>
            <td><input type="text" id="keyword2" name="keyword2" value="" class="text" size="20" />
           <br><br> </td>
        </tr>
        
        
        <tr>
            <td>File:<br><br></td>
            <td><input type="file" id="file" name="file" value="" class="text" size="20" />
           <br><br> </td>
        </tr>
        
        
        
      
        <tr>
            <td></td>
            <td>
                <input type="submit" value="Submit"/>
                <input type="reset" value="Reset"/>
            </td>
        </tr>
        
        
        
        
        
        
    </table>
           
           
                 </form> 
                
            </center>
 
                <br><br><br><br>
                <center>
                    
                       <h3 style="color: blue">File Information</h3>
                    
                    <table border="2">
                        
                        <tr>
                            <th style="color: red">Delete File&nbsp;&nbsp;</th>
                            <th style="color: red">File Id&nbsp;&nbsp;</th>
                            <th style="color: red">File Name&nbsp;&nbsp;</th>
                            <th style="color: red">Cluster Index&nbsp;&nbsp;</th>
                            <th style="color: red">Leaf Index&nbsp;&nbsp;</th>
                            <th style="color: red">Date</th>
                         </tr>
                        
                        <% 
                        Connection con1=DbConnector.getConnection();
                        PreparedStatement pst1=con1.prepareStatement("select * from uploadfile");
                        ResultSet rs1=pst1.executeQuery();
                        
                        while(rs1.next())
                        {
                            %>
                            
                            <tr>
                                <td> <a href="deletefile.jsp?fileid=<%=rs1.getString("fileid")%>">Delete</a></td>
                                <td style="color: #3e8f3e"><%=rs1.getString("fileid")%></td>
                                 <td style="color: #3e8f3e"><%=rs1.getString("filename")%></td>
                                  <td style="color: #3e8f3e"><%=rs1.getString("keyword1")%></td>
                                  <td style="color: #3e8f3e"><%=rs1.getString("keyword2")%></td>
                                
                                <td style="color: #3e8f3e"><%=rs1.getString("datetime")%></td>
                                
                            </tr>
                            
                            
                            <%
                        }
                        
                        %>
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    </table>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                </center>
                
                
                
            
                
            </div>
        </div>
    </body>
   
</html>
