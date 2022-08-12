<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
Integer pdt_id = Integer.parseInt(request.getParameter("product_id"));

try{

    Class.forName("com.mysql.jdbc.Driver");// Driver to establish connection to the database
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root",""); //Create connection using your ID and Password
    
    Statement st=con.createStatement();
    
    String sql ="select * from prdt WHERE product_id = '"+pdt_id+"'";
    ResultSet resultSet = st.executeQuery(sql);
    while (resultSet.next()) {
        Statement st1=con.createStatement();
        Integer updatelikes = resultSet.getInt(5)+1;
        String UpdateQuery = "update prdt SET likes='"+updatelikes+"' WHERE product_id ="+pdt_id+"  ;";
        st1.executeUpdate(UpdateQuery);
        response.sendRedirect("index.jsp");
    }
    
    }


    
    

   
   

catch(Exception error){
    out.println(error);}
 %>
