<%-- 
    Document   : feed
    Created on : 15 Jun, 2018, 7:00:11 PM
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
            .iop
{
    border:solid 1px black;
    width:1000px;
    align-content:center;
    float:none;
    background-color:lightcyan;
    
}

.poi
{
    border:solid 1px black;
    width:1000px;
    align-content:center;
    float:none;
    background-color:lightseagreen;
    
}

.oip
{
    border:solid 1px black;
    width:1000px;
    align-content:center;
    float:none;
    background-color:lightgrey;
    
}

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

.dgray2
{
    border:solid 1px black;
    width:600px;
    align-content:center;
    float:none;
    background-color:lightcyan;
    font-weight:bold;
    margin:auto;
    height:80px;
   
}

.dgray1
{
    border:solid 1px black;
    width:640px;
    align-content:center;
    float:none;
    background-color:lightsteelblue;
    font-weight:bold;
    margin:auto;
    height:50px;
    
   
}

.dropbtn {
    background-color: #3498DB;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #2980B9;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #ddd}



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
					<div id="gtco-logo"><a href="index.html">ChatApp <em>.</em></a></div>
				</div>
				
			</div>
                        
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_2.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                                                    <%
                                                    String name=(String)session.getAttribute("name");
                    
                                                    %>
							<span class="intro-text-small">Hello</span>
							<h1><%=name%></h1>
						         
						</div>
						
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	
        <div class="dropdown">
            
                                     <button onclick="myFunction()" class="dropbtn"><a href="pagecontroller?type=11&&name=<%=name%>"><h3>Add your feed</h3></a></button>
                                     <button onclick="myFunction()" class="dropbtn"><a href="pagecontroller?type=12&&name=<%=name%>"><h3>View your feed</h3></a></button>
  
</div>
        
	
        <script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
	
	<div id="gtco-features" class="border-bottom">
		<div class="gtco-container">
			
			<div class="row">
                            <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box"><br/><br/>
                                <h1>Feeds</h1>
                            </div>
                        
			</div>
                    <div class="div1">
                        <%
                        ConnectionClass c=new ConnectionClass();
                        c.conClass();
                        PreparedStatement st=null;
                        ResultSet rs=null;
                        String qry="select Id,name,feed,color,date,time from v_userfeed where member1=?";
                        
                        st=c.con.prepareStatement(qry);
                        st.setString(1,name);
                        
                       rs=st.executeQuery();
                       
                       int cnt=0;
                       while(rs.next())
                       {
                       String name1=rs.getString("name");    
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
            <h3><%=name1%></h3>
            <%=date%>, <%=time%>
            <div class="dbrown">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></font</center>
                <br/><br/>
            </div>
                <div class="dgray2"><br/>
                    <form action="feedservlet?type=4&&feed=<%=feed%>" method="post">
                            <input type="hidden" value="<%=name%>" name="sender">
                            <input type="hidden" value="<%=name1%>" name="receiver">
                            
                            <input type="textarea" name="message" size="55">  <input type="submit" value="Send" name="Comment">
                           
                        </form>
                </div>
                            <br/>
        </div>
        <div class="dgray1"></div>
        <%
        }
        else if(color.equals("Blue"))
        {
        %>
        <div class="div2">
            <h3><%=name1%></h3>
            <%=date%>, <%=time%>
            <div class="dblue">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></center>
                <br/><br/>
            </div>
            <div class="dgray2">
                <br/>
                    <form action="feedservlet?type=4&&feed=<%=feed%>" method="post">
                            <input type="hidden" value="<%=name%>" name="sender">
                            <input type="hidden" value="<%=name1%>" name="receiver">
                            
                            <input type="textarea" name="message" size="55">  <input type="submit" value="Send" name="Comment">
                           
                        </form>
                </div><br/>
              
        </div>
                   <div class="dgray1"></div>
        
        <%
        }
        else if(color.equals("Red"))
        {
        %>
        <div class="div2">
            
            <h3><%=name1%></h3>
            
            <%=date%>, <%=time%>
            <div class="dred">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></center>
                <br/><br/>
            </div>
            
                <div class="dgray2"><br/>
                    <form action="feedservlet?type=4&&feed=<%=feed%>" method="post">
                            <input type="hidden" value="<%=name%>" name="sender">
                            <input type="hidden" value="<%=name1%>" name="receiver">
                            
                            <input type="textarea" name="message" size="55">  <input type="submit" value="Send" name="Comment">
                           
                        </form>
                </div><br/>
        </div>
        <div class="dgray1"></div>
        <%
        }
        else if(color.equals("Green"))
        {
        %>
        <div class="div2">
            <h3><%=name1%></h3>
          
            <%=date%>, <%=time%>
            <div class="dgreen">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></center>
                <br/><br/>
            </div>
            
            <div class="dgray2"><br/>
                    <form action="feedservlet?type=4&&feed=<%=feed%>" method="post">
                            <input type="hidden" value="<%=name%>" name="sender">
                            <input type="hidden" value="<%=name1%>" name="receiver">
                            
                            <input type="textarea" name="message" size="55">  <input type="submit" value="Send" name="Comment">
                           
                        </form>
                </div>    <br/>
        </div>
        <div class="dgray1"></div>
        <%
        }
        else if(color.equals("Yellow"))
        {
        %>
        <div class="div2">
            <h3><%=name1%></h3>
            <%=date%>, <%=time%>
            <div class="dyellow">
                <br/><br/>
                <center><h1 style="color:white;font-size:60px;"><%=feed%></h1></center>
                <br/><br/>
            </div>
            <div class="dgray2"><br/>
                    <form action="feedservlet?type=4&&feed=<%=feed%>" method="post">
                            <input type="hidden" value="<%=name%>" name="sender">
                            <input type="hidden" value="<%=name1%>" name="receiver">
                            
                            <input type="textarea" name="message" size="55">  <input type="submit" value="Send" name="Comment">
                           
                        </form>
                </div><br/>
        </div>
       <div class="dgray1"></div>
        <%
        }
                       }

                    if(cnt==0)
        {
       %>
        <div class="div2"><br/><div class="dgray"><br/><br/>
                <h1>You have not got any new feed.</h1>
            <br/><br/>
            </div>
        <br/></div>
             <%
        }
                        %>
                    </div>
                    
		</div>
	</div>

	<div id="gtco-subscribe">
		
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

