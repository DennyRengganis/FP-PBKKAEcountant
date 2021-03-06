<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Dashboard</title>
 
  <!-- Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/nucleo/css/nucleo.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/@fortawesome/fontawesome-free/css/all.min.css">
  <!-- CSS -->
   <link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath}/resources/css/argon.css?v=1.0.1">
 
  
</head>

<body>
	<!-- Sidenav -->
  	<nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
    	<div class="container-fluid">
      		<!-- Toggler -->
      		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
        		<span class="navbar-toggler-icon"></span>
      		</button>
      		<!-- Brand -->
      		<a class="navbar-brand pt-0" href="home.html">
      		</a>
    
      		<!-- Collapse -->
      		<div class="collapse navbar-collapse" id="sidenav-collapse-main">
        		<!-- Collapse header -->
        		<div class="navbar-collapse-header d-md-none">
          			<div class="row">
            			<div class="col-6 collapse-brand">
              				<a href="#">
              				</a>
            			</div>
            			<div class="col-6 collapse-close">
              				<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                				<span></span>
                				<span></span>
              				</button>
            			</div>
          			</div>
				</div>
        	   
				<!-- Form -->
				<form class="mt-4 mb-3 d-md-none">
          			<div class="input-group input-group-rounded input-group-merge">
            			<input type="search" class="form-control form-control-rounded form-control-prepended" placeholder="Search" aria-label="Search">
            				<div class="input-group-prepend">
              					<div class="input-group-text">
                					<span class="fa fa-search"></span>
              					</div>
            				</div>
          			</div>
        		</form>
        		
				<!-- Navigation -->
				<ul class="navbar-nav">
          			<li class="nav-item">
            			<a class="nav-link" href="${pageContext.request.contextPath}/transaksi/pembukuan">
              				<i class="ni ni-tv-2 text-primary"></i> Bookeeping
            			</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link" href="${pageContext.request.contextPath}/transaksi/showFormForAdd">
              				<i class="ni ni-planet text-blue"></i> Add Transaction
            			</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link" href="${pageContext.request.contextPath}/transaksi/list">
              				<i class="ni ni-pin-3 text-orange"></i> Transaction history
            			</a>
					</li>
					<li class="nav-item">
            			<a class="nav-link" href="${pageContext.request.contextPath}/profile">
              				<i class="ni ni-single-02 text-yellow"></i> User profile
            			</a>
          			</li>
        		</ul>
        		
				<!-- Divider -->
        		<hr class="my-3">
      		</div>
		</div>
	</nav>
  
	<!-- Main content -->
	<div class="main-content">
		<!-- Top navbar -->
		<nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
		<div class="container-fluid">
			<!-- Brand -->
			<a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="#">E-COUNTANT</a>
			
        	<!-- User -->
			<ul class="navbar-nav align-items-center d-none d-md-flex">
				<li class="nav-item dropdown">
					<a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              		<div class="media align-items-center">
                		<span class="avatar avatar-sm rounded-circle">
                  			<img alt="Image placeholder" src="${pageContext.request.contextPath}/resources/img/theme/PBKKA.jpg">
                		</span>
                		<div class="media-body ml-2 d-none d-lg-block">
                  			<span class="mb-0 text-sm  font-weight-bold">PBKK A</span>
                		</div>
              		</div>
            		</a>
            		<div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              			<div class=" dropdown-header noti-title">
                			<h6 class="text-overflow m-0">Welcome!</h6>
              			</div>
              			<a href="${pageContext.request.contextPath}/profile" class="dropdown-item">
                			<i class="ni ni-single-02"></i>
               				<span>My profile</span>
              			</a>
              			<a href="#" class="dropdown-item">
                			<i class="ni ni-support-16"></i>
                			<span>Help</span>
              			</a>
              			<div class="dropdown-divider"></div>
              			<a href="${pageContext.request.contextPath}/" class="dropdown-item">
                			<i class="ni ni-user-run"></i>
                			<span>Logout</span>
              			</a>
            		</div>
          		</li>
			</ul>
		</div>
    	</nav>
    
	    <!-- Header -->
	    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
	      <div class="container-fluid d-flex align-items-center">
	        <div class="row">
	          <div class="col">
	          	<h1 class="display-2 text-white">Hello</h1>
            	<p class="text-white mt-0 mb-5">This is your profile page. You can see the progress you've made with your work and manage your projects or assigned tasks</p>
	            </div>
        	</div>
     		</div>
	    </div>
    
    
	    <!-- Page content -->
	    <div class="container-fluid mt--7">
	  		 <div class="row">
        <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
          <div class="card card-profile shadow">
            <div class="row justify-content-center">
              <div class="col-lg-3 order-lg-2">
                <div class="card-profile-image">
                  <a href="#">
                    <img src="<c:url value="/resources/img/theme/PBKKA.jpg"/>" class="rounded-circle">
                  </a>
                </div>
              </div>
            </div>
            <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
              <div class="d-flex justify-content-between">
              
              </div>
            </div>
            <div class="card-body pt-0 pt-md-4">
              <div class="row">
                <div class="col">
                  <div class="card-profile-stats d-flex justify-content-center mt-md-5">
                    <div>
                      <span class="heading">22</span>
                      <span class="description">Add Transaction</span>
                    </div>
                    <div>
                      <span class="heading">89</span>
                      <span class="description">Review</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="text-center">
                <h3>
                  PBKK A<span class="font-weight-light">, 27</span>
                </h3>
                <div class="h5 font-weight-300">
                  <i class="ni location_pin mr-2"></i>Surabaya,Indonesia.
                </div>
      
                <div>
                  <i class="ni education_hat mr-2"></i>Sepuluh Nopember Institute of Technology
                </div>
               
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">My account</h3>
                </div>
              </div>
            </div>
            <div class="card-body">
              <form>
                <h6 class="heading-small text-muted mb-4">User information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">Username</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Username" value="PBKKA">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address</label>
                        <input type="email" id="input-email" class="form-control form-control-alternative" placeholder="dkamurapi@gmail.com">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-first-name">First name</label>
                        <input type="text" id="input-first-name" class="form-control form-control-alternative" placeholder="First name" value="PBKK">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-last-name">Last name</label>
                        <input type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Last name" value="A">
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4" />
                
              </form>
            </div>
          </div>
        </div>
      </div>

      
			<!-- Footer -->
			<footer class="py-5">
				<div class="container">
					<div class="col-xl-6">
						<div class="copyright text-center text-xl-left text-muted">
							<a  class="font-weight-bold ml-1" target="_blank">  </a>
						</div>
					</div>
			  	</div>
			  	
			    <div class="container">
			    	<div class="row align-items-center justify-content-xl-between">
			        	<div class="col-xl-6">
			          		<div class="copyright text-center text-xl-left text-muted">
			           			 &copy; 2019 <a  class="font-weight-bold ml-1" target="_blank">Informatics-C20</a>
			          		</div>
			        	</div>
				        <div class="col-xl-6">
				          	<ul class="nav nav-footer justify-content-center justify-content-xl-end">
				            	<li class="nav-item">
				              		<a  class="nav-link" target="_blank">About Us</a>
				            	</li>
				            	<li class="nav-item">
				              		<a  class="nav-link" target="_blank">Blog</a>
				            	</li>
				          	</ul>
				        </div>
				 	</div>
			    </div>
			</footer>
			
			



			
			
			
		</div>
	</div>
  
  
  
	<!-- Scripts -->
	<!-- Core -->

  
  	<script src="${pageContext.request.contextPath}/resources/vendor/popper/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/headroom/headroom.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Optional JS -->
	<script src="${pageContext.request.contextPath}/resources/js/argon.js?v=1.0.1"></script>
</body>

</html>