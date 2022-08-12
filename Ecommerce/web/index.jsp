<%-- 
    Document   : index
    Created on : Aug 4, 2022, 9:10:47 PM
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
        <%@ include file="includes/narvar.jsp"%>

         <%

        
Connection con;
Statement stat;
   try{
        Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","");
         stat = con.createStatement();
      
        
        ResultSet r = stat.executeQuery("select * from prdt");
        
        while(r.next()){
        
          //out.print(goods.getString(1));
        
        
//            out.println("<script type=\"text/javascript\">");
//            out.println("window.alert('sorry, this username is already taken');");
//            out.println("location='index.jsp';");
//            out.println("</script>");
    %>
         <div class="card-header my-3">List of products</div>
            <div class="row">
                <%--
                    if(!prdt.isEmpty()){
                    for(product p:prdt){
                    out.println(p.getCategory());
                    }
                    }
                --%>
                <div class="col-md-3">
                    <div class="card w-100" style="width: 18rem;">
                       <img class="card-img-top" src="product-images/female-shoes.jpg" alt="Card image cap">
                       
                        <div class="card-body">
                            <h5 class="card-title">Product Name:<% out.print(r.getString("name"));%></h5>          
                            <h6 class = "Price">price:<% out.print(r.getDouble("price"));%></h6>
                            <h6 class ="Category">Category:<%out.print(r.getString("category"));%></h6>
                            <div class ="mt-3 d-flex justify-content-between">
                                
                                <form method="post" action="addtocart.jsp">
                                    <input type="hidden" name="name" value="<% out.print(r.getString("name"));%>">
                                    <input type="hidden" name="product_id" value="<% out.print(r.getString("product_id"));%>">
                                    <input type="hidden" name="price" value="<% out.print(r.getString("price"));%>">
                                    <input type="submit" class="btn btn-dark" value="Add to cart">
                                </form>
                                <a href="order.jsp" class="btn btn-primary">Buy now</a>
                                <a href="#" class="btn btn-primary">
                                    <form action="liking.jsp" method="post">
                                        <form action="" method="post">
                                        <input type="number" name="product_id" hidden id="" placeholder="product_id" value="<% out.print(r.getString("product_id"));%>"/>
                                       <br>
                                        <input type="submit" class="btn btn-primary" value="like">
                                        </form>
                                    </form>

                                </a> 
                            </div>

                        </div>
                    </div>

                                    
                </div>
            </div>
       
        <%
            }
            } catch(Exception e){
            
             out.println(e);
            }
 
        %>
       

    </body>
</html>
