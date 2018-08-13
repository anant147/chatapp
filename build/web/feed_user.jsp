<%-- 
    Document   : feed_user
    Created on : 18 Jun, 2018, 6:02:40 PM
    Author     : MY ACER
--%>

<%-- 
    Document   : feedform
    Created on : 18 Jun, 2018, 5:55:25 PM
    Author     : MY ACER
--%>


<%@page import="java.sql.*"%>
<%@page import="controller.ConnectionClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>ChatApp</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />
	
	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

     <style>
         .div1 {
             text-align:center;
             border:solid 1px black;
             width:650px;
             padding-bottom:20px;
             padding-top:20px;
             margin:auto;
             
         }
         
 .div2
{
    border:solid 1px black;
    width:640px;
    align-content:center;
    float:none;
    margin:auto;
   
   
}
.dbrown
{
    border:solid 1px black;
    width:600px;
    align-content:center;
    float:none;
    background-color:brown;
    font-weight:bold;
   color:white;
  
   margin:auto;
   
}
.dgreen
{
    border:solid 1px black;
    width:600px;
    align-content:center;
    float:none;
    background-color:limegreen;
    font-weight:bold;
   color:white;
   margin:auto;
}
  
.dblue
{
    border:solid 1px black;
    width:600px;
    align-content:center;
    float:none;
    background-color:lightseagreen;
    font-weight:bold;
   color:white;
  margin:auto;
}
  
.dyellow
{
    border:solid 1px black;
    width:600px;
    align-content:center;
    float:none;
    background-color:yellow;
    font-weight:bold;
    color:white;
    margin:auto;
}
  
.dred
{
    border:solid 1px black;
    width:600px;
    margin:auto;
    align-content:center;
    float:none;
    background-color:red;
    font-weight:bold;
    color:white;
}
  
.dgray
{
    border:solid 1px black;
    width:600px;
    align-content:center;
    float:none;
    background-color:lightsteelblue;
    font-weight:bold;
    margin:auto;
    
   
}
           
         
</style>
	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo">ChatApp <em>.</em></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_6.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">Hello,</span>
                                                        <%
                                                        String name=(String)session.getAttribute("name");
                                                        %>
							<h1><%=name%></h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
                                                
                                                <div class="row">
                                                    <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                                                        <br/><br/><h1>Your feeds:-</h1>
                                                    </div>
                                                </div>
         <div class="div1">                                       
       <%
       ConnectionClass c=new ConnectionClass();
       c.conClass();
       PreparedStatement st=null;
       ResultSet rs=null;
       String qry="select Id,date,time,feed,color from feed where name=? order by Id desc";
       st=c.con.prepareStatement(qry);
       st.setString(1,name);
       rs=st.executeQuery();
       
       
        int cnt=0;
        
        while(rs.next())
        {
        String color=rs.getString("color");
        String feed=rs.getString("feed");
        String date=rs.getString("date");
        String time=rs.getString("time");
        int Id=rs.getInt("Id");
        cnt++;
        
        if(color.equals("Brown"))
        {
        %>
        <div class="div2">
            <%=date%>, <%=time%>
            <div class="dbrown">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></font</center>
                <br/><br/>
            </div>
            <center>
                <a href="feed_edit.jsp?Id=<%=Id%>&&name=<%=name%>&&color=<%=color%>&&feed=<%=feed%>">Edit</a>
                    &ensp;
                    <a href="feedservlet?type=2&&Id=<%=Id%>&&name=<%=name%>">Delete</a>
                   </center>
        </div>
        
        <%
        }
        else if(color.equals("Blue"))
        {
        %>
        <div class="div2">
            <%=date%>, <%=time%>
            <div class="dblue">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></center>
                <br/><br/>
            </div>
            <center>
                    <a href="feed_edit.jsp?Id=<%=Id%>&&name=<%=name%>&&color=<%=color%>&&feed=<%=feed%>">Edit</a>
                    &ensp;
                   <a href="feedservlet?type=2&&Id=<%=Id%>&&name=<%=name%>">Delete</a>
                   </center>
              
        </div>
        
        <%
        }
        else if(color.equals("Red"))
        {
        %>
        <div class="div2">
            <%=date%>, <%=time%>
            <div class="dred">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></center>
                <br/><br/>
            </div>
            
                <center>
                   <a href="feed_edit.jsp?Id=<%=Id%>&&name=<%=name%>&&color=<%=color%>&&feed=<%=feed%>">Edit</a>
                    &ensp;
                   <a href="feedservlet?type=2&&Id=<%=Id%>&&name=<%=name%>">Delete</a>
                   </center>
        </div>
        
        <%
        }
        else if(color.equals("Green"))
        {
        %>
        <div class="div2">
            <%=date%>, <%=time%>
            <div class="dgreen">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></center>
                <br/><br/>
            </div>
            
                <center>
                    <a href="feed_edit.jsp?Id=<%=Id%>&&name=<%=name%>&&color=<%=color%>&&feed=<%=feed%>">Edit</a>
                    &ensp;
                   <a href="feedservlet?type=2&&Id=<%=Id%>&&name=<%=name%>">Delete</a>
                   </center>
        </div>
        
        <%
        }
        else if(color.equals("Yellow"))
        {
        %>
        <div class="div2">
            <%=date%>, <%=time%>
            <div class="dyellow">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></center>
                <br/><br/>
            </div>
            <center>
                <a href="feed_edit.jsp?Id=<%=Id%>&&name=<%=name%>&&color=<%=color%>&&feed=<%=feed%>">Edit</a>
                    &ensp;
                   <a href="feedservlet?type=2&&Id=<%=Id%>&&name=<%=name%>">Delete</a>
                   </center>
        </div>
       
        <%
        }
        
        }

        if(cnt==0)
        {
       %>
        <div class="div2"><div class="dgray"><br/><br/>
                You have not posted any feed.
            <br/><br/>
            </div></div>
             <%
        }
       %>
	</div>
	<br/><br/>
        <br/><br/>

	
	<div id="gtco-subscribe">
		<div class="gtco-container">
			
			
		</div>
	</div>

	
	</div>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>


