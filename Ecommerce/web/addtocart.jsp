<%-- 
    Document   : addtocart
    Created on : Aug 11, 2022, 7:00:47 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%@page import="java.sql.*"%> 
    <body>
      <%
      
      
        String prdt_id = request.getParameter("product_id");
        int prdtid = Integer.parseInt(prdt_id);
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
       // out.print(prdtid);
       
       Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","");
        Statement st = con.createStatement();
         
        st.executeUpdate("insert into cart_items (product_id, name,price) values ('"+prdtid+"','"+name+"','"+price+"')");
        
        response.sendRedirect("cartprocess.jsp");

      %>
    </body>
</html>
