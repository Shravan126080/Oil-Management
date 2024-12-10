 <%@ include file="Header.jsp" %>


<main id="main" class="main mt-1">
<section class="section  md-5 ">
<div class="container " style="margin-left: 90px;">
      <div class="row">
        <div class="col-lg-8">

          <div class="card mt-0">
            <div class="card-body">
              <h5 class="card-title">Product Information</h5>

              <!-- General Form Elements -->
              <form action="formservlet" method="post">
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Name</label>
                  <div class="col-sm-10">
                    <input type="text" name="nm" class="form-control"id="nm">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Product</label>
                  <div class="col-sm-10">
                    <input type="Text" name="name" class="form-control"id="name">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Quantity</label>
                  <div class="col-sm-10">
                    <input type="text" name="qty" class="form-control"id="qty" >
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Price</label>
                  <div class="col-sm-10">
                    <input type="text" name="prc" class="form-control"id="prc" onkeyup="multi()">
                  </div>
                </div>
               
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Date</label>
                  <div class="col-sm-10">
                    <input type="Date" name="dt" class="form-control"id="dt">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Time</label>
                  <div class="col-sm-10">
                    <input type="time" name="tm" class="form-control"id="tm">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Total</label>
                  <div class="col-sm-10">
                    <input type="text" name="tt" class="form-control" id="tt" >
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-outline-warning">Submit Form</button>
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