<%@page import="com.entity.formentity"%>
<%@page import="com.modules.pro_modules"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@page import="java.sql.Connection"%>
<%@ include file="Header.jsp" %>
<main id="main" class="main">
<section class="section">
<div class="container" style="margin-left: 70px;">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">General Form Elements</h5>

              <!-- General Form Elements -->
              <form action="updatetable" method="post">
              <% try{
            	  int id=Integer.parseInt(request.getParameter("id"));
            	  pro_modules p=new pro_modules(connection.getConnection());
            	  List<formentity> n=p.updt(id);
            	  for(formentity m:n){
            		  %>
            		  <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-2 col-form-label">Id</label>
                  <div class="col-sm-10">
                    <input type="number" name="id" value="<%=m.getId() %>" class="form-control">
                  </div>
                </div>
            	   <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Name</label>
                  <div class="col-sm-10">
                    <input type="text" name="nm"value="<%=m.getName() %>" class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Product</label>
                  <div class="col-sm-10">
                    <input type="Text" name="name" value="<%=m.getProduct() %>" class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Quantity</label>
                  <div class="col-sm-10">
                    <input type="text" name="qty" value="<%=m.getQuantity() %>" class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Price</label>
                  <div class="col-sm-10">
                    <input type="text" name="prc" value="<%=m.getPrice() %>" class="form-control">
                  </div>
                </div>
               
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Date</label>
                  <div class="col-sm-10">
                    <input type="Date" name="dt"value="<%=m.getDate() %>"  class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Time</label>
                  <div class="col-sm-10">
                    <input type="time" name="tm" value="<%=m.getTime() %> "class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Total</label>
                  <div class="col-sm-10">
                    <input type="text" name="tt" value="<%=m.getTotal() %> "class="form-control">
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

        </div>
      </div>
      </div>
    </section>
    </main>
   <%@include file="footer.jsp" %>