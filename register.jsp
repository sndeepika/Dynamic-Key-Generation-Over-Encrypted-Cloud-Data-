

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
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
        <meta name="keyword" content="html, css, bootstrap, job-board">
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
         <!--   <div id="status"><h1>Privacy-Preserving And Dynamic Multi-Keyword Ranked Search Scheme over Encrypted Cloud Data</h1>
         
         -->
         
         </div>
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
            <!--  <a class="navbar-brand" href="#"><img src="img/final.jpg" width="125" height="125" alt=""></a> -->
            </div>
            <br>
            <br>
            <br>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <h1 align="center">Dynamic Key Generation Over Encrypted Data</h1>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <center>
                  <div class="button navbar-right">
                  <a href="index.html"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s">Home</button></a>
                  <a href="dataowner.jsp"><button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.6s">Data Owner</button></a>
                  
                   <a href="cloudserver.jsp"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s">Cloud Server</button></a>
                   
                    <a href="datauser.jsp"><button class="navbar-btn nav-button wow bounceInRight login" data-wow-delay="0.8s">Data User</button></a>
                  <a href="register.jsp"><button class="navbar-btn nav-button wow fadeInRight" data-wow-delay="0.6s">Register</button></a>
                  
                     
              </div>
                    </center>
                
              
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
                   
                    <br>
                   
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/wow.js"></script>
        <script src="js/main.js"></script>
   
                    <h3 align="center" style="color:white"> Admin Login Form</h3>
                
                
                    <center>
                                                                
                                    
                <% 
            
                Date curDate = new Date();
                String DateToStr = DateFormat.getInstance().format(curDate);
		System.out.println(DateToStr);
                
                
                int id=0;
                Connection con=DbConnector.getConnection();
                PreparedStatement pst=con.prepareStatement("select max(userid) from register");
                ResultSet rs=pst.executeQuery();
                if(rs.next())
                {
                    
                    id=rs.getInt(1);
                }
                
                id++;
                         
                
                
                
                
                
                
                %>                             
                        
        <form id="loginForm" name="loginForm" method="post" action="register1.jsp">
  
    
    
    <table border="2">
        
        <tr>
            <td>User Id:</td>
            <td> <input type="text" id="userid" name="userid" value="<%=id%>" class="text" size="20" readonly=""/></td>
        </tr>
        
        
        
        
        <tr>
            <td>Email:</td>
            <td><input type="email" id="email" name="email" value="" class="text" size="20" required=""/>
            </td>
        </tr>
        
        <tr>
            <td>Reg Date:</td>
            <td> <input type="text" id="regdate" name="regdate" value="<%=DateToStr%>" class="text" size="20" readonly=""/>
            </td>
        </tr>
        
        
        <tr>
            <td>City:</td>
            <td><input type="text" id="city" name="city" value="" class="text" size="20" required=""/>
            </td>
        </tr>
        
        
        <tr>
            <td>Name:</td>
            <td><input type="text" id="name" name="name" value="" class="text" size="20" required=""/>
            </td>
        </tr>
        
        
        
        <tr>
            <td>User Name:</td>
            <td><input type="text" id="username" name="username" value="" class="text" size="20" required=""/>
            </td>
        </tr>
        
        
        <tr>
            <td>Mobile:</td>
            <td><input type="text" id="mobile" name="mobile" value="" class="text" size="20" required=""/>
            </td>
        </tr>
        
        
        
        <tr>
            <td>Password:</td>
            <td> <input type="password" id="password" name="password" value="" class="text" size="20" required=""/>
            </td>
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
                    
        
        
    </body>
</html>
