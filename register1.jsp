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
           
            <h2 align="center">Dynamic Key Generation Over Encrypted Data </h2>
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
                
           
           
            <br/>
            <center>
                      <% 
                      
                      
                      String userid=request.getParameter("userid");
                      
                      
                      
                      String email=request.getParameter("email");
                      
                      
                      System.out.println("email is "+email);
                      String regdate=request.getParameter("regdate");
                      
                      
                      String city=request.getParameter("city");
                      
                      System.out.println("city is "+city);
                      String name=request.getParameter("name");
                      String username=request.getParameter("username");
                      String mobile=request.getParameter("mobile");
                      String password=request.getParameter("password");
                      
                      
             if((email.isEmpty()) && (city.isEmpty()) && (name.isEmpty()) && (username.isEmpty()) && (mobile.isEmpty()) && (password.isEmpty()))
                 
             {
                 
                 response.sendRedirect("register.jsp");
             }   
             else
             {
                      
                      
                      
                      
                      
                      Connection con=DbConnector.getConnection();
                      PreparedStatement pst=con.prepareStatement("insert into register (userid,email,regdate,city,name,username,mobile,password) values(?,?,?,?,?,?,?,?)");
                      pst.setString(1, userid);
                      pst.setString(2, email);
                      pst.setString(3, regdate);
                      pst.setString(4, city);
                      pst.setString(5, name);
                      pst.setString(6, username);
                      pst.setString(7, mobile);
                      pst.setString(8, password);
                      
                      int i=pst.executeUpdate();
                      
                      if(i>0)
                      {
                          %>
                          <h2 align="center">Registration Success....</h2>
                          <%
                      }
                     
                      
                      
                      
                      
}             
                      %>                                          
                                    
                    </center>
            
            
            
            
            
                
                
                
            </div>
        </div>
    </body>
   
</html>
