

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
    padding:5px;
    margin:auto;
}

.poi
{
    border:solid 1px black;
    width:1000px;
    align-content:center;
    float:none;
    background-color:lightseagreen;
    padding:5px;margin:auto;
    
}

.oip
{
    border:solid 1px black;
    width:1000px;
    align-content:center;
    float:none;
    background-color:lightgrey;
    padding:5px;
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
	
	
	<div id="gtco-features" class="border-bottom">
		<div class="gtco-container">
			
			<div class="row">
				

			
                        <%
                        ConnectionClass cn=new ConnectionClass();
                        cn.conClass();
                        PreparedStatement st1=null;
                        ResultSet rs1=null;
                        String qry="select Id,sender,content,date,time,kind,value from notification where receiver=? order by Id desc";
                        st1=cn.con.prepareStatement(qry);
                        
                        st1.setString(1,name);
                        
                        rs1=st1.executeQuery();
                        
                        int cnt=0;
                        int cun=0;
                        
                        while(rs1.next())
                        {
                        int val=rs1.getInt("value");
                        cnt++;
                        
                        if(val==1)
                        {
                        cun++;
                        int kind=rs1.getInt("kind");
                        String sender=rs1.getString("sender");
                        String content=rs1.getString("content");
                        String date=rs1.getString("date");
                        String time=rs1.getString("time");
                        int Id=rs1.getInt("Id");
                        
                        if(kind==1)
                        {
                        %>
                        <a href="pagecontroller?type=5&&name=<%=name%>"><div class="iop">
                            <h5>Sender :- <%=sender%></h5>
                            <p><%=content%></p>
                            <table>
                            <tr>
                            <td><p><%=date%> , <p></td>   <td><p><%=time%></p></td></tr>
                            <tr><td><a href="notificationservlet?Id=<%=Id%>&&receiver=<%=name%>">Mark as read</a></td><td></td>
                            </tr>
                            </table>
                            </div></a>
                        <%
                        }
                        else
                        {
                        %>
                        <a href="pagecontroller?type=6&&name=<%=name%>">
                            <div class="poi">
                            <h5>Sender :- <%=sender%></h5>
                            <p><%=content%></p>
                            <table><tr>
                                    
                            <td><p><%=date%> , </p></td>   <td><p><%=time%></p></td></tr>
                            <tr><td><a href="notificationservlet?Id=<%=Id%>&&receiver=<%=name%>">Mark as read</a></td><td></td>
                            </tr></table>
                            </div>
                        </a>
                        <%
                        }
                        
                        }
                        else
                        {
                        int kind=rs1.getInt("kind");
                        String sender=rs1.getString("sender");
                        String content=rs1.getString("content");
                        String date=rs1.getString("date");
                        String time=rs1.getString("time");
                        int Id=rs1.getInt("Id");
                        if(kind==1)
                        {
                         %>
                         <a href="pagecontroller?type=5&&name=<%=name%>">
                             <div class="oip">
                            <h5>Sender :- <%=sender%></h5>
                            <p><%=content%></p>
                            <table>
                                <tr>
                            <td><p><%=date%> , </p></td>   <td><p><%=time%></p></td>
                           </tr></table>
                            </div>
                         </a>
                         <%
                        }
                        else
                        {
                          %>
                          <a href="pagecontroller?type=6&&name=<%=name%>">
                              <div class="oip">
                            <h5>Sender :- <%=sender%></h5>
                            <p><%=content%></p>
                            <table>
                                <tr>
                           <td><p><%=date%> , <p></td>    <td></p><%=time%></p></td>
                            </tr></table>
                         
                            </div>
                          </a>
                          <%
                         }
                        }

                        }

                        if(cnt==0)
                        {
                         %>
                         <h1>There is no notification to show.</h1>
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

