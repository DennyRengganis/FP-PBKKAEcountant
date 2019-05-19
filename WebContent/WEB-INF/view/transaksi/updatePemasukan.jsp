<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
            			<a class="nav-link" href="#">
              				<i class="ni ni-tv-2 text-primary"></i> Dashboard
            			</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link" href="#">
              				<i class="ni ni-planet text-blue"></i> Add Transaction
            			</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link" href="#">
              				<i class="ni ni-pin-3 text-orange"></i> Transaction history
            			</a>
					</li>
					<li class="nav-item">
            			<a class="nav-link" href="/E-COUNTANT/userprofile">
              				<i class="ni ni-single-02 text-yellow"></i> User profile
            			</a>
          			</li>
					<li class="nav-item">
						<a class="nav-link" href="#">
              				<i class="ni ni-bullet-list-67 text-red"></i> Bookeeping
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
                  			<img alt="Image placeholder" src="<c:url value="/resources/img/theme/PBKKA.jpg"/>">
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
              			<a href="#" class="dropdown-item">
                			<i class="ni ni-single-02"></i>
               				<span>My profile</span>
              			</a>
              			<a href="#" class="dropdown-item">
                			<i class="ni ni-settings-gear-65"></i>
                			<span>Settings</span>
              			</a>
              			<a href="#" class="dropdown-item">
                			<i class="ni ni-calendar-grid-58"></i>
                			<span>Activity</span>
              			</a>
              			<a href="#" class="dropdown-item">
                			<i class="ni ni-support-16"></i>
                			<span>Help</span>
              			</a>
              			<div class="dropdown-divider"></div>
              			<a href="" class="dropdown-item">
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
	            <h1 class="display-2 text-white">Add Transaction</h1>
	            <p class="text-white mt-0 mb-5">This is input data page. You can add income and outcome for your company</p>
	          </div>
        	</div>
     		</div>
	    </div>
    
    
	    <!-- Page content -->
	    <div class="container-fluid mt--7">
	  		 <div class="row">
		        <div class="col">
		         
		            <div class="nav-wrapper">
					    <ul class="nav nav-pills nav-fill flex-column flex-md-row" id="tabs-icons-text" role="tablist">
					        <li class="nav-item">
					            <a class="nav-link mb-sm-3 mb-md-0 active" id="tabs-icons-text-1-tab" data-toggle="tab" href="#tabs-icons-text-1" role="tab" aria-controls="tabs-icons-text-1" aria-selected="true"><i class="ni ni-cloud-upload-96 mr-2"></i>Income</a>
					        </li>
					        <li class="nav-item">
					            <a class="nav-link mb-sm-3 mb-md-0" id="tabs-icons-text-2-tab" href="showFormForAddNota" role="tab"  aria-selected="false"><i class="ni ni-bell-55 mr-2"></i>Outcome</a>
					        </li>
					       
					    </ul>
					</div>
					<div class="card shadow">
						<div class="card-body">
					    	<div class="tab-content" id="myTabContent">
					        	<div class="tab-pane fade show active" id="tabs-icons-text-1" role="tabpanel" aria-labelledby="tabs-icons-text-1-tab">
					           		
					           		<form:form action="updatePemasukan" modelAttribute="pemasukan" method="POST">
					           		<form:hidden path="id"/>
										<div class="form-group">
											<div class="input-group input-group-alternative mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text"><i class="ni ni-hat-3"></i></span>
												</div>
						                    	<form:input class="form-control" placeholder="Tanggal pemasukan" path="tanggal" />
						                  	</div>
						                </div>
						                <div class="form-group">
											<div class="input-group input-group-alternative mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text"><i class="ni ni-email-83"></i></span>
												</div>
						                    	<form:input class="form-control" placeholder="Total pengeluaran" path="total" />
						                  	</div>
						                </div>
						                <div class="form-group">
						                	<div class="input-group input-group-alternative">
						                    	<div class="input-group-prepend">
						                      		<span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
						                    	</div>
						                    	<form:input class="form-control" placeholder="Sumber Pemasukan" path="dari" />
						                  	</div>
						                </div>
						                <div class="form-group">
						                  	<div class="input-group input-group-alternative">
						                    	<div class="input-group-prepend">
						                      		<span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
						                    	</div>
						                    	<form:input class="form-control" placeholder="Keterangan Pemasukan" path="catatan" />
						                  	</div>
						               	</div>
						               
						                <div class="text-center">
						                  	<button type="submit" class="btn btn-primary mt-4" value="Save">Submit</button>
						                </div>
						          </form:form>
					           
					                
								</div>
					            
					        </div>
					    </div>
					</div>
		        </div>
			</div>

      
			<!-- Footer -->
			<footer class="py-5">
				<div class="container">
					<div class="col-xl-6">
						<div class="copyright text-center text-xl-left text-muted">
							<a href="#" class="font-weight-bold ml-1" target="_blank">  </a>
						</div>
					</div>
			  	</div>
			  	
			    <div class="container">
			    	<div class="row align-items-center justify-content-xl-between">
			        	<div class="col-xl-6">
			          		<div class="copyright text-center text-xl-left text-muted">
			           			 &copy; 2019 <a href="#" class="font-weight-bold ml-1" target="_blank">Informatics-C20</a>
			          		</div>
			        	</div>
				        <div class="col-xl-6">
				          	<ul class="nav nav-footer justify-content-center justify-content-xl-end">
				            	<li class="nav-item">
				              		<a href="#" class="nav-link" target="_blank">About Us</a>
				            	</li>
				            	<li class="nav-item">
				              		<a href="#" class="nav-link" target="_blank">Blog</a>
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

</body>

</html>










