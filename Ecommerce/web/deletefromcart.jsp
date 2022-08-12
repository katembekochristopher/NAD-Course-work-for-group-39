<%-- 
    Document   : deletefromcart
    Created on : Aug 11, 2022, 7:08:52 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%@page import="java.sql.*"%> 
 
       <%
      
      
        String prdt_id = request.getParameter("product_id");
        int prdtid = Integer.parseInt(prdt_id);
       
       
       Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","");
        Statement st = con.createStatement();
         
        st.executeUpdate("delete from cart_items where product_id='"+prdtid+"'");
        
      response.sendRedirect("cartprocess.jsp");

      %>
       

    </body>
</html>
