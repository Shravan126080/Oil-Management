<%@page import="com.entity.formentity"%>
<%@page import="com.modules.pro_modules"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@ include file="Header.jsp" %>


<main id="main" class="main mt-1">
<section class="section  md-5 ">
<div class="container " style="margin-left: 90px;">
      <div class="row">
        <div class="col-lg-6">

          <div class="card mt-0">
            <div class="card-body">
              <h5 class="card-title">oil Details</h5>
			   
              <!-- General Form Elements -->
            <form action="oilservlet" method="post">
                
            
               
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">name</label>
                  <div class="col-sm-9">
                    <input type="text" name="name" class="form-control"id="name"  >
                  </div>
                </div>
               
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">Quantity</label>
                  <div class="col-sm-9">
                    <input type="text" name="qty" class="form-control"id="qty" >
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">Price</label>
                  <div class="col-sm-9">
                    <input type="text" name="prc" class="form-control"id="prc" onkeyup="multi()">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">Date</label>
                  <div class="col-sm-9">
                    <input type="Date" name="date" class="form-control"id="date">
                  </div>
                </div>
               
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">total</label>
                  <div class="col-sm-9">
                    <input type="text" name="tt" class="form-control" id="tt" >
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Submit Form</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->
            
              <script type="text/javascript">
              function multi() {
            	  var prc=document.getElementById("prc").value;
				 var qty=document.getElementById("qty").value;

            	  var total=qty*prc;
            	  document.getElementById("tt").value=total;

            	  
				
			}
              </script>

            </div>
          </div>

        </div>

        
            </div>
          </div>

       
    </section>
    </main>
   <%@include file="footer.jsp" %>