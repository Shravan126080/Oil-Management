<%@page import="com.entity.storeentity"%>
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
              <h5 class="card-title">STOCK</h5>

              <!-- General Form Elements -->
              <form action="projstore" method="post">
              <% try{
            	  int id=Integer.parseInt(request.getParameter("id"));
            	  pro_modules p=new pro_modules(connection.getConnection());
            	  List<storeentity> n=p.updt4(id);
            	  for(storeentity m:n){
            		  %>
            		  
            	  
            	  
            	  
            	   <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-2 col-form-label">id</label>
                  <div class="col-sm-10">
                    <input type="text" name="id" value="<%=m.getId()%>"class="form-control">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">profit</label>
                  <div class="col-sm-10">
                    <input type="Text" name="prf"  value="<%=m.getProfit() %> " class="form-control">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">stock</label>
                  <div class="col-sm-10">
                    <input type="text" name="stk" value="<%=m.getStock() %>" class="form-control">
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

     
    </section>
    </main>
   <%@include file="footer.jsp" %>