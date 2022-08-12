<%-- 
    Document   : cartprocess
    Created on : Aug 11, 2022, 3:42:59 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="includes/header.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart</title>
    </head>
    <body>
        <%@ include file="includes/narvar.jsp"%>
        <%@page import="java.sql.*"%> 

        <%

   try{

        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","");
        Statement st = con.createStatement();

        ResultSet goods= st.executeQuery("select * from cart_items");
        
        
        out.print(" <div class ='container'> ");
        out.print(" <div class ='d-flex py-3'><h3>Total price: shs.80000</h3><a class ='mx-3 btn btn-primary' href='#'>checkout</a></div>");
        out.print("</div>");
        out.print("<table class='table table-light'>");
        
        
            out.print("<tr>"); 
            out.print("<th scope='col'>product id</th>");
            out.print ("<th scope='col'>Name</th>");
            out.print("<th scope='col'>Price</th>");
             out.print("<th scope='col'>quantity</th>");
             out.print("<th scope='col'>Cancel</th>");
             out.print("</tr>"); 
   
        
        while(goods.next()){
        %>
  
                <tr>
                    <td><% out.print(goods.getInt("product_id"));%></td>
                    <td><% out.print(goods.getString("name"));%></td>
                    <td> <% out.print(goods.getInt("price"));%></td>
                   
                    <td>
                        <form action="" method="post" class="form-inline">
                            <input type="hidden" name="product_id" value="<% out.print(goods.getInt("product_id"));%>" class="form-input">
                            
                            <div class ="form-group d-flex justify-content-between">
                                <a class="btn btn-sm btn-incre" href=""><i class="fas fa-plus-square"></i></a>
                                
                                <input type="text" name="quantity" class="form-control" value="1" readonly>
                                
                                <a class="btn btn-sm btn-decre" href=""><i class="fas fa-minus-square"></i></a>
                            </div>

                        </form>
                            
                    </td>
                    <td>
                        <form method="post" action="deletefromcart.jsp">
                       <input type="hidden" name="product_id" value="<% out.print(goods.getInt("product_id"));%>" class="form-input">
                        <input type="submit" class="btn btn-sm btn-danger" value="Remove">
                    </td>
                </form>
                </tr>

       
            
            
            <%}
        
            out.print("</table>");
        
    
            } catch(Exception e){
            
              out.println(e);
            }
 
        %>
        
 
    </body>
</html>
