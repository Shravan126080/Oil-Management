<!DOCTYPE html>
<%@page import="com.entity.formentity"%>
<%@page import="com.modules.pro_modules"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@page import="java.sql.Connection"%>
<html lang="en">
<%@ include file="Header.jsp" %>


<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tables / Data - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="Dashboard.jsp">Home</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Data</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-17">

          <div class="card">
             <div class="card-body">
              <h5 class="card-title">Product Information</h5>

              <!-- Table with stripped rows -->
              <table class="table datatable" style="width:65px">
                <thead>
                  <tr>
                 <th>id
                    </th>
                    <th>
                      <b>Name</b>
                    </th>
                    <th>Product</th>
                    <th>Quantity</th>
                     <th>Price</th>
                    <th data-type="date" data-format="YYYY/DD/MM">Date</th>
                    <th data-type="time" data-format="Am/Pm">Time
                    </th>
                     <th>Total</th>
                    <th>button
                    </th>
                  </tr>
                </thead>
                <%
                try{
                	pro_modules p=new pro_modules(connection.getConnection());
                	List<formentity> u=p.allRecord();
                	for(formentity h:u){
                		%>
                	<tr>
                	                	 					
                	
                	                    <td><%=h.getId() %></td>
                	 					<td><%=h.getName() %></td>
                	                	<td><%=h.getProduct() %></td>
                	                	<td><%=h.getQuantity()%></td>
                	                	<td><%=h.getPrice() %></td>
                	                	<td><%=h.getDate() %></td>
                	                	<td><%=h.getTime()%></td>
                	                	<td><%=h.getTotal()%></td>
                	                	
                	                	<td style="display: flex;">
                	                	
          <button  class="btn btn-outline-primary" type="submit" value="update"  ><a href="update.jsp?id=<%=h.getId()%>">update</a></button>
          <button class="btn btn-outline-warning"type="delete" value="delete"><a href="deletetable?id=<%=h.getId()%>">delete</a></button>
                	                	
                	                	
                	                	</td>
                	                	
                	
                	</tr>
                	<% 
                	}
                } catch(Exception e){
                	e.printStackTrace();
                }
                
                	%>
                
                
                <tbody>
                  
      </div>   
 </section>

  </main><!-- End #main -->

  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  
</body>

</html>