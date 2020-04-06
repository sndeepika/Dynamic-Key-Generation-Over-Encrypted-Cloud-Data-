<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
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
          <!-- <a class="navbar-brand" href="#"><img src="img/final.jpeg" width="150" height="90" alt=""></a> -->
            </div>
      

            <!-- Collect the nav links, forms, and other content for toggling -->
           
            <h2 align="center">Dynamic Key Generation Over Encrypted Data </h2>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              
                <center>
                <div class="button navbar-right">
                  <a href="index.html"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s">Home</button></a>
                  <!--<a href="searchfile.jsp"><button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.6s">Search File</button></a>-->
                  
                   <a href="filerequest.jsp"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s">File Request</button></a>
                   
                    <a href="downloadfiles.jsp"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s">Download Files</button></a>
                    <a href="datauser.jsp"><button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.6s">Sign Out</button></a>
                  
                     
              </div>
                    </center>
                    
                <!--
                
              <ul class="main-nav nav navbar-nav navbar-right">
                <li class="wow fadeInDown" data-wow-delay="0s"><a class="active" href="index.html">Home</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.2s"><a href="alumni.jsp">Admin</a></li>
                <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="contact.html">User Login</a></li>
              </ul>
                -->
                
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
                
           
            
            <center>
                
                <form action="downloadfiles1.jsp" method="post">
                
<% 

String username=(String)session.getAttribute("username");
if(username!=null)
{

String filename=null;


Connection con1=DbConnector.getConnection();
PreparedStatement pst1=con1.prepareStatement("select max(datetime) from request");
ResultSet rs1=pst1.executeQuery();
rs1.next();

String datetime=rs1.getString(1);

System.out.println("datetime is "+datetime);
con1.close();
 



Connection con2=DbConnector.getConnection();
PreparedStatement pst2=con2.prepareStatement("select max(id) from request");
ResultSet rs2=pst2.executeQuery();
rs2.next();

String id=rs2.getString(1);

System.out.println("The id is "+id);
con2.close();









Connection con=DbConnector.getConnection();
PreparedStatement pst=con.prepareStatement("select filename from request where username=? and id=?");

pst.setString(1, username);
pst.setString(2, id);

ResultSet rs=pst.executeQuery();

if(rs.next())
{
    filename=rs.getString("filename");
    
}


/*
PreparedStatement pst3=con.prepareStatement("select u.keyword1,u.keyword2 from uploadfile u,request r where u.filename=r.filename and u.gkey=r.gkey and r.username=? and u.filename=?");

pst3.setString(1, username);
pst3.setString(2, filename);
ResultSet rs3=pst3.executeQuery();
rs3.next();
String keyword1=rs3.getString(1);
String keyword2=rs3.getString(2);

*/


%>

<table border="2">
    
    
    <tr>
        <td>Name:</td>
        <td>
            <input type="text" name="name" value="<%=username%>" readonly=""/>
        </td>
    </tr>
    
    <tr>
        <td>File Name:</td>
        <td>
            <input type="text" name="filename" value="<%=filename%>" readonly=""/>
        </td>
    </tr>
    
    <tr>
        <td>Secret Key:</td>
        <td>
            <input type="text" name="key"/>
        </td>
    </tr>
    
    <tr>
        <td>Enter Index1:</td>
        <td>
            <input type="text" name="cindex"/>
        </td>
    </tr>
    
    
    <tr>
        <td>Enter Index2:</td>
        <td>
            <input type="text" name="lindex"/>
        </td>
    </tr>
    
    
</table>
        
        <br><br>
        
        
        <table border="2">
            
            
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Download" style="color: #00A2DE"/>
                    <input type="reset" value="Clear" style="color: #00A2DE"/>
                </td>
            </tr>
            
            
            
        </table>
               

                </form>
        
        
        
        <a href="filedetails.jsp"><h4 style="color: red">File Details</h4></a>

            </center>
        
        
        <% 
        
}
        %>
            
            </div>
        </div>
    </body>
   
</html>
