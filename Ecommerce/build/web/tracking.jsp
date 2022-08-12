<%-- 
    Document   : tracking
    Created on : Aug 10, 2022, 6:58:26 PM
    Author     : HP
--%>

<%@page import="java.util.List" %>
<%@page import="shopping.user.dao.productDao" %>
<%@page import="shopping.connection.DBcon" %>
<%@page import="shopping.user.model" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.*"%>
<%--
    model auth = (model) request.getSession().getAttribute("auth");
    if(auth!= null ){
    request.setAttribute("auth", auth);
    }
    --%>
    <%--
productDao pd = new productDao(DBcon.getConnection());
List<product> prdt = pd.getAllProducts();
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to shopping cart</title>
        <%@ include file="includes/header.jsp"%>

    </head>
    <body>
        <h1>TOTAL CUSTOMERS</h1>
        <%@ include file="includes/narvar.jsp"%>

         <%

        
Connection con;
Statement stat;
   try{
        Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","");
         stat = con.createStatement();
      
        
        ResultSet r = stat.executeQuery("select * from customers");
        
        while(r.next()){
        

    %>
    <%--<div class="card-header my-3">List of customers</div>--%>
            <div class="row">

                <div class="col-md-3">
                    <div class="card w-100" style="width: 18rem;">
                        <%--<img class="card-img-top" src="product-images/female-shoes.jpg" alt="Card image cap">--%>
                       
                        <div class="card-body">
                            <h5 class="username">username:<% out.print(r.getString("username"));%></h5>          
                            <h6 class = "preference">preference:<% out.print(r.getString("preference"));%></h6>
                            <h6 class ="location">location:<%out.print(r.getString("location"));%></h6>
                            <div class ="mt-3 d-flex justify-content-between">
                      
                            </div>

                        </div>
                    </div>

                </div>
            </div>
       
        <%
            }



ResultSet retr = stat.executeQuery("select * from prdt");
   
out.print("<br><br><h2>product table and likes</h2><br><br>");


 out.print("<table>"); 

 out.print("<tr>"); 
            out.print("<th scope='col'>product name</th>");
            out.print ("<th scope='col'>price</th>");
            out.print("<th scope='col'>likes</th>");
             out.print("</tr>"); 
        while(retr.next()){
        

    %>
  
     <tr>
                    <td><% out.print(retr.getString("name"));%></td>
                    <td><% out.print(retr.getInt("price"));%></td>
                    <td> <% out.print(retr.getInt("likes"));%></td>
    
     </tr>
    
    
    
       
        <%
            }

    out.print("</table>");
            } catch(Exception e){
            
             out.println(e);
            }























 
        %>
       

    </body>
</html>
