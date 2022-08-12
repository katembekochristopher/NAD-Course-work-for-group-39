<%-- 
    Document   : order
    Created on : Aug 4, 2022, 9:12:43 PM
    Author     : HP
--%>

<%@page import="shopping.connection.DBcon" %>
<%@page import="shopping.user.model" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--
    model auth = (model) request.getSession().getAttribute("auth");
    if(auth!= null ){
    request.setAttribute("auth", auth);
    }
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>orders page</title>
        <%@ include file="includes/header.jsp"%>
    </head>
    <body>
         <%@ include file="includes/narvar.jsp"%>
        <%@ include file="includes/footer.jsp"%>
        <%--<%out.print(DBcon.getConnection());%>--%>
    </body>
</html>
