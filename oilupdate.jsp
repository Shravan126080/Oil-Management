<%@page import="com.entity.oilentity"%>
<%@page import="com.modules.pro_modules"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@page import="java.sql.Connection"%>
<%@ include file="Header.jsp" %>
<main id="main " class="main">
<section class="section ">
<div class="container" style="margin-left: 400px;">
      <div class="row">
        <div class="col-lg-5">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">General Form Elements</h5>

              <!-- General Form Elements -->
              <form action="upservlet" method="post">
              <% try{
            	  int id=Integer.parseInt(request.getParameter("id"));
            	  pro_modules p=new pro_modules(connection.getConnection());
            	  List<oilentity> n=p.updtoil(id);
            	  for(oilentity m:n){
            		  %>
            		  <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-3 col-form-label">Id</label>
                  <div class="col-sm-9">
                    <input type="number" name="id" value="<%=m.getId() %>" class="form-control">
                  </div>
                </div>
            	   
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">quantity</label>
                  <div class="col-sm-9">
                    <input type="text" name="qty" value="<%=m.getQuantity() %>" class="form-control" id="qty">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">price</label>
                  <div class="col-sm-9">
                    <input type="text" name="prc" value="<%=m.getPrice() %>" class="form-control" id="prc" onkeyup="multi()">
                  </div>
                </div>
               
               
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-3 col-form-label">total</label>
                  <div class="col-sm-9">
                    <input type="text" name="tt" value="<%=m.getTotal() %> "class="form-control"id="tt" >
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Submit </button>
                  </div>
                </div>
                 <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">reset </button>
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

        <% 
            	  }
            	  	
              }catch(Exception e){
            	  e.printStackTrace();
            	  
              }
              %>
            </div>
          </div>

        
    </section>
    </main>
   <%@include file="footer.jsp" %>