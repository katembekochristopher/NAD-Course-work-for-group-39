

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%@page import="java.sql.*"%>   
        
        <%
        String username=request.getParameter("username");
        String pwd =request.getParameter("password");
        String em =request.getParameter("email");
        String mob =request.getParameter("mobile");
        String add =request.getParameter("address");
        String pin =request.getParameter("pincode");
        

   try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","");
        Statement st = con.createStatement();
         
        
        ResultSet usercheck = st.executeQuery("select * from users where username='"+username+"'");
        if(usercheck.next()){
            out.println("<script type=\"text/javascript\">");
            out.println("window.alert('sorry, this username is already taken');");
            out.println("location='index.jsp';");
            out.println("</script>");
            }
        
            else{
             st.executeUpdate("insert into users (username, password,email,mobile,address,pincode) values('" + username + "','" + pwd + "','" + em + "','" + mob + "','" + add + "','" + pin + "')");
            out.println("<script type=\"text/javascript\">");
            out.println("window.alert('you have been registered successfully!');");
            out.println("location='login.jsp';");
            out.println("</script>");
            
            }
        
    
            } catch(Exception e){
            
              out.println(e);
            }
 
        %>
        
