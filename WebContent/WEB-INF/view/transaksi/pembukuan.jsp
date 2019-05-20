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
        	   
			
        		
				<!-- Navigation -->
				<ul class="navbar-nav">
          			<li class="nav-item">
            			<a class="nav-link" href="#">
              				<i class="ni ni-tv-2 text-primary"></i> Dashboard
            			</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link" href="${pageContext.request.contextPath}/transaksi/showFormForAdd">
              				<i class="ni ni-planet text-blue"></i> Add Transaction
            			</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link" href="#">
              				<i class="ni ni-pin-3 text-orange"></i> Transaction history
            			</a>
					</li>
					<li class="nav-item">
            			<a class="nav-link" href="${pageContext.request.contextPath}/profile">
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
      <div class="container-fluid">
        <div class="header-body">
          
          <!-- Card stats -->
          
          <div class="row">
            <div class="col-xl-4 col-lg-8">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Income Value</h5>
                      <span class="h2 font-weight-bold mb-0">Rp ${jumlah}</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                        <i class="fas fa-chart-bar"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>0%</span>
                    <span class="text-nowrap">Since last year</span>
                  </p>
                </div>
              </div>
            </div>
            
            <div class="col-xl-4 col-lg-8">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Expense Value</h5>
                      <span class="h2 font-weight-bold mb-0">Rp ${jumlah2}</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                        <i class="fas fa-chart-pie"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fas fa-arrow-up"></i>0%</span>
                    <span class="text-nowrap">Since last year</span>
                  </p>
                </div>
              </div>
            </div>
            
            <div class="col-xl-4 col-lg-8">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Profit output</h5>
                      <span class="h2 font-weight-bold mb-0">Rp ${jumlah3}</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                        <i class="fas fa-users"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                    <span class="text-success mr-2"><i class="fas fa-arrow-up"></i>0%</span>
                    <span class="text-nowrap">Since last year</span>
                  </p>
                </div>
              </div>
            </div>
            
            
          </div>
        </div>
      </div>
    </div>
    
    
    <!-- Page content -->
    <div class="container-fluid mt--7">
      <div class="row">
      
      
  		<!-- Pemasukan -->    
        <div class="col-xl-6 mb-5 mb-xl-0">
          <div class="card shadow">
            <div class="card-header border-0">
              <div class="row align-items-center">
                <div class="col">
                  <h3 class="mb-0">Income Transaction</h3>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <!-- Projects table -->
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">id</th>
                    <th scope="col">tanggal</th>
                    <th scope="col">total</th>
                    <th scope="col">sumber</th>
                    <th scope="col">catatan</th>
                  </tr>
                </thead>
                <c:forEach var="pemasukan" items="${pemasukans}">
                <tbody>
                  <tr>
                    <th scope="row">${pemasukan.id} </th>
                    <td>${pemasukan.tanggal}</td>
                    <td>Rp ${pemasukan.total}</td>
                    <td>${pemasukan.dari}</td>
                    <td>${pemasukan.catatan}</td>
                  </tr>
                </tbody>
                </c:forEach>
              </table>
            </div>
          </div>
        </div>
        
        <!-- Pengeluaran -->  
        <div class="col-xl-6 mb-5 mb-xl-0">
          <div class="card shadow">
            <div class="card-header border-0">
              <div class="row align-items-center">
                <div class="col">
                  <h3 class="mb-0">Expense Transaction</h3>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <!-- Projects table -->
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                  	<th scope="col">Id</th>
                    <th scope="col">Tanggal</th>
                    <th scope="col">Keperluan</th>
                    <th scope="col">nama</th>
                    <th scope="col">harga</th>
                    <th scope="col">catatan</th>
                  </tr>
                </thead>
                <c:forEach var="nota" items="${notas}">
                <tbody>
                  <tr>
                    <th scope="row">${nota.nid} </th>
                    <td>${nota.ntanggal}</td>
                    <td>${nota.nkeperluan}</td>
                    <td>${nota.nnama}</td>
                    <td>Rp ${nota.nharga}</td>
                    <td>${nota.ncatatan}</td>
                  </tr>
                </tbody>
                </c:forEach>
              </table>
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
  <!-- Argon Scripts -->
   
  	<script src="${pageContext.request.contextPath}/resources/vendor/popper/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/headroom/headroom.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Optional JS -->
	<script src="${pageContext.request.contextPath}/resources/js/argon.js?v=1.0.1"></script>
</body>

</html>