
<%@page import="controller.ConnectionClass"%>
<%@page import="java.sql.*"%>
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

	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo">ChatApp<em>.</em></div>
				</div>
				
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(images/img_1.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					

					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">Update your profile,</span>
                                                        <h1>
                                                            <%
                                                            String name=request.getParameter("name");
            %>
             <%=name%>
            <br/>
                                                        </h1>	
						</div>
						
					</div>
							
					
				</div>
			</div>
		</div>
	</header>
	
	
	
	
			
			

	<div class="gtco-section border-bottom">
		<div class="gtco-container">
			

			<div class="row">
                            
				<div class="col-md-6 mt-sm">
				
					
                        <%
                ConnectionClass c=new ConnectionClass();
                c.conClass();
                PreparedStatement st=null;
                ResultSet rs=null;
                
                String qry="select status,city,state,education,interest,hobby,view from profile where name=?";
                st=c.con.prepareStatement(qry);
                
                st.setString(1,name);
                
                rs=st.executeQuery();
                
                if(rs.next())
                {
               
                   
                %>
                <form method="post" action="ProfileServlet?type=1&&name=<%=name%>">
                    					                                        <div class="row form-group">
													<div class="col-md-12">
														<h3><label for="name">Status :</label></h3>
														<input type="text" class="form-control" id="status" name="staus" value="<%=rs.getString("status")%>">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<h3><label for="city"> City :</label></h3>
														<input type="text" class="form-control" id="city" name="city" value="<%=rs.getString("city")%>">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<h3><label for="state">State :</label></h3>
														<input type="text" class="form-control" id="state" name="state" value="<%=rs.getString("state")%>">
													</div>
												</div>
												
												<div class="row form-group">
													<div class="col-md-12">
														<h3><label for="education">Educaton :</label></h3>
														<input type="text" class="form-control" id="education" name="education" value="<%=rs.getString("education")%>">
													</div>
												</div>
                                                                                                        
                                                                                                <div class="row form-group">
													<div class="col-md-12">
                                                                                      
                                                                                                                 <h3><label for="interest">Interest :</label></h3>
														<input type="text" class="form-control" id="interest" name="interest" value="<%=rs.getString("interest")%>">
													</div>
												</div> 
                                                                                                
                                                                                                <div class="row form-group">
													<div class="col-md-12">
														<h3><label for="hobby">Hobbies : </label></h3>
														<input type="text" class="form-control" id="hobby" name="hobby" value="<%=rs.getString("hobby")%>">
													</div>
												</div> 
                                                                                                
                                                                                                <div class="row form-group">
													<div class="col-md-12">
														<h3><label for="view">Views : </label></h3>
														<input type="text" class="form-control" id="interest" name="view" value="<%=rs.getString("view")%>">
													</div>
												</div>



												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" value="Update">
													</div>
												</div>
                </form>
                <%
                }
                
                else
                {
                %>
                <form method="post" action="ProfileServlet?type=2&&name=<%=name%>">
                    
                                                                                        
                    
                    					                                         
                                                                                                     
                                                                                                       <div class="row form-group">
													<div class="col-md-12">
														<h3><label for="name">Status :</label></h3>
														<input type="text" class="form-control" id="status" name="staus" length="80">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<h3><label for="city"> City :</label></h3>
														<input type="text" class="form-control" id="city" name="city" length="80">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<h3><label for="state">State :</label></h3>
														<input type="text" class="form-control" id="state" name="state" length="80">
													</div>
												</div>
												
												<div class="row form-group">
													<div class="col-md-12">
														<h3><label for="education">Educaton :</label></h3>
														<input type="text" class="form-control" id="education" name="education" length="80">">
													</div>
												</div>
                                                                                                        
                                                                                                <div class="row form-group">
													<div class="col-md-12">
														<h3><label for="interest">Interests : </label></h3>
														<input type="text" class="form-control" id="interest" name="interest" length="80">
													</div>
												</div> 
                                                                                                
                                                                                                <div class="row form-group">
													<div class="col-md-12">
														<h3><label for="hobby">Hobbies : </label></h3>
														<input type="text" class="form-control" id="hobby" name="hobby" length="80">
													</div>
												</div> 
                                                                                                
                                                                                                <div class="row form-group">
													<div class="col-md-12">
														<h3><label for="view">Views : </label></h3>
														<input type="text" class="form-control" id="interest" name="view" lenghth="80">
													</div>
												</div>
                                                                                                     
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary" value="Update">
													</div>
												</div>
                    
                </form>
                <%
                }
                
                

                %>
                            </div>        
				
			</div>
		</div>
	</div>

	

	<div id="gtco-subscribe">
		<div class="gtco-container">
			
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
					
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