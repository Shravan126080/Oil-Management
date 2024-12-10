<!DOCTYPE html>
<%@page import="com.entity.oilentity"%>
<%@page import="com.entity.formentity"%>
<%@page import="com.modules.pro_modules"%>
<%@page import="com.mysql.cj.protocol.a.TracingPacketReader"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<html lang="en">
<%@ include file="Header.jsp" %>


<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Forms / Layouts - NiceAdmin Bootstrap Template</title>
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

  
  <main id="main" class="main mt-2">

   
    <section class="section">
       
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Vertical Form</h5>

              <!-- Vertical Form -->
              <form class="row g-3" action="profitservlet" method="post">
              
				
			
						
               
               
                <label for="validationDefault01" class="form-label">Row meterial</label>
                 <select class="form-select" name="nm" id="floatingSelect"  style="margin: 2px; padding: 2px;">
                 <option value="0">Select</option>
                 
                 <%
                   try{
                	   pro_modules p=new pro_modules(connection.getConnection());
                	   List<formentity>c=p.drop();
                	   for(formentity b:c){
                 %>
                 
                 <option value="<%=b.getId() %>"><%=b.getProduct()%></option>
                 
                 <%
                	   }
                	   
                   }
                    catch(Exception e){
                    	e.printStackTrace();
                    }
                 %>
                 
                </select>
                
                
                <label for="validationDefault01" class="form-label"> oil</label>
                 <select class="form-select" name="nm1" id="floatingSelect2" style="margin: 2px; padding: 2px;"  >
                 <option value="0">Select</option>
                 
                 <%
                   try{
                	   pro_modules p=new pro_modules(connection.getConnection());
                	   List<oilentity>d=p.dropoil();
                	   for(oilentity b:d) {
                 %>
                 
                 <option value="<%=b.getId() %>"><%=b.getName()%></option>
                 
                 <%
                	   }
                	   
                   }
                    catch(Exception e){
                    	e.printStackTrace();
                    }
                 %>
                 
                </select>
                
			               <div class="row mb-3">
			    <label for="inputText" class="col-sm-3 col-form-label">Row Price</label>
			    <div class="col-sm-9">
			        <input type="text" name="tt" class="form-control" id="tt1">
			    </div>
			</div>
			 <div class="row mb-3">
			    <label for="inputText" class="col-sm-3 col-form-label">Raw Quantity</label>
			    <div class="col-sm-9">
			        <input type="text" name="tt" class="form-control" id="tt3">
			    </div>
			</div>
			
			<div class="row mb-3">
			    <label for="inputText" class="col-sm-3 col-form-label">Oil Price</label>
			    <div class="col-sm-9">
			        <input type="text" name="tt" class="form-control" id="tt2">
			    </div>
			</div>
			
			<div class="row mb-3">
			    <label for="inputText" class="col-sm-3 col-form-label">Oil Quantity</label>
			    <div class="col-sm-9">
			        <input type="text" name="tt" class="form-control" id="tt4">
			    </div>
			</div>
			
			
			<div class="row mb-3">
			    <label for="inputText" class="col-sm-3 col-form-label">Profit</label>
			    <div class="col-sm-9">
			        <input type="text" name="pp" class="form-control" id="pp">
			    </div>
			</div>
			<div class="row mb-3">
			    <label for="inputText" class="col-sm-3 col-form-label">Stock</label>
			    <div class="col-sm-9">
			        <input type="text" name="pp1" class="form-control" id="pp2">
			    </div>
			</div>
			
			<div class="text-center">
          <button  class="btn btn-outline-primary" type="submit" >submit</button>
			    <button type="reset" class="btn btn-secondary">Reset</button>
			</div>
                
          
          
              </form><!-- Vertical Form -->
              
              
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
           <script type="text/javascript">
        $(document).ready(function() {
            let price1 = 0;
            let price2 = 0;

            $("#floatingSelect").change(function() {
                var id = $(this).val();
                $.get('storeservlet', { "id": id}, function(resp) {
                    price1 = parseFloat(resp) || 0;
                    $("#tt1").val(price1);
                    updateTotal();
                });
            });

            $("#floatingSelect2").change(function() {
                var id2 = $(this).val();
                $.get('store2servlet', { "id2": id2 }, function(resp) {
                    price2 = parseFloat(resp) || 0;
                    $("#tt2").val(price2);
                    updateTotal();
                });
            });

            function updateTotal() {
                let total = price2 - price1;
                $("#pp").val(total);
            }
        });$(document).ready(function() {
            let price1 = 0;
            let price2 = 0;

            $("#floatingSelect").change(function() {
                var id1 = $(this).val();
                $.get('stockservlet', { "id1": id1 }, function(resp) {
                    price1 = parseFloat(resp) || 0;
                    $("#tt3").val(price1);
                    updateTotal();
                });
            });

            $("#floatingSelect2").change(function() {
                var id2 = $(this).val();
                $.get('stockservlet2', { "id2": id2 }, function(resp) {
                    price2 = parseFloat(resp) || 0;
                    $("#tt4").val(price2);
                    updateTotal();
                });
            });

            function updateTotal() {
                let total = price1 - price2;
                $("#pp2").val(total);
            }
        });
    </script>
             
             

              
              
</div>
          </div>
</div>
         
    </section>

  </main><!-- End #main -->
     <%@include file="footer.jsp" %>

 
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