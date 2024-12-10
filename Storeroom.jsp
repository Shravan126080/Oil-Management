<%@page import="com.entity.oilentity"%>
<%@page import="com.entity.formentity"%>
<%@page import="com.modules.pro_modules"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@ include file="Header.jsp" %>
<main id="main" class="main mt-1">
<section class="section  md-5 ">

<label for="validationDefault01" class="form-label"> product</label>
                 <select class="form-select" name="nm" id="floatingSelect" style="margin: 2px; padding: 2px;">
                 <option value="0">Select</option>
                 
                 <%
                   try{
                	   pro_modules p=new pro_modules(connection.getConnection());
                	   List<formentity>c=p.drop();
                	   for(formentity b:c){
                 %>
                 
                 <option value="<%=b.getId() %>"><%=b.getQuantity() %></option>
                 
                 <%
                	   }
                	   
                   }
                    catch(Exception e){
                    	e.printStackTrace();
                    }
                 %>
                 
                </select>
                
                
                <label for="validationDefault01" class="form-label"> oil</label>
                 <select class="form-select" name="nm" id="floatingSelect" style="margin: 2px; padding: 2px;">
                 <option value="0">Select</option>
                 
                 <%
                   try{
                	   pro_modules p=new pro_modules(connection.getConnection());
                	   List<oilentity>d=p.dropoil();
                	   for(oilentity b:d) {
                 %>
                 
                 <option value="<%=b.getId() %>"><%=b.getQuantity() %></option>
                 
                 <%
                	   }
                	   
                   }
                    catch(Exception e){
                    	e.printStackTrace();
                    }
                 %>
                 
                </select>
                </section>
    </main>