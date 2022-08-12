<%-- 
    Document   : login
    Created on : Aug 4, 2022, 9:11:35 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="shopping.user.model" %>
<%
    model auth = (model) request.getSession().getAttribute("auth");
    if(auth!= null ){
    response.sendRedirect("index.jsp");
    
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping cart login</title>
        <%@ include file="includes/header.jsp"%>
    </head>
    <body>
        <%@ include file="includes/narvar.jsp"%>
        <%@ include file="includes/footer.jsp"%>

        <div class="container">
            <div class="card w-50 mx-auto my-5">
                <div class="card-header text-center">User login</div><br>
                <div class="card-body">


                    <form action="loginservlet" method="post">

                        <div class="form-group">
                            <label>Email-address</label>
                            <input type="email" class="form-control" name="login-email" placeholder="enter your email" required>
                        </div><br>

                        <div class="form-group">
                            <label> Password</label>
                            <input type="password" class="form-control" name="login-password" placeholder="*******" required>
                        </div><br>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">login</button>
                        </div>

                    </form>
                </div>
            </div> 
        </div> 
    </body>
</html>
