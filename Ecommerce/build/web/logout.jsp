<%-- 
    Document   : logout
    Created on : Aug 10, 2022, 12:02:27 PM
    Author     : HP
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    //Invalidating the session and sending response back to the customer index page
    session.invalidate();
    response.sendRedirect("login.jsp");
%>