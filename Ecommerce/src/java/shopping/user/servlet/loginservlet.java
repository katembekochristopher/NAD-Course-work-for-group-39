
package shopping.user.servlet;


import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import shopping.connection.DBcon;
import shopping.user.dao.userdao;
import shopping.user.model;
//import static java.lang.System.out;

//@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;



    @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//       response.sendRedirect("login.jsp");
       
    }
 
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    try(PrintWriter out = response.getWriter()){
      String email = request.getParameter("login-email");
      String password = request.getParameter("login-password");
      
      try{
        userdao udao = new userdao(DBcon.getConnection());
                model user = udao.userLogin(email, password);
                
                if (user != null) {
                  //  request.getSession().setAttribute("auth", user);
                  //  response.sendRedirect("index.jsp");
                } else {
                    out.println("there is no user");
                }

}           catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(loginservlet.class.getName()).log(Level.SEVERE, null, ex);
            }
 
}
    }
}

/*
        Throwable var3 = null;
        Object var4 = null;
        try {
            PrintWriter out = response.getWriter();
            
            try {
                String email = request.getParameter("login-email");
                String password = request.getParameter("login-password");
                userdao udao = new userdao(DBcon.getConnection());
                model user = udao.userLogin(id);
                if (user != null) {
                    request.getSession().setAttribute("auth", user);
                    response.sendRedirect("index.jsp");
                } else {
                    out.println("there is no user");
                }
            } finally {
                if (out != null) {
                    out.close();
                }

            }
        } catch (Throwable var17) {
            if (var3 == null) {
                var3 = var17;
            } else if (var3 != var17) {
                var3.addSuppressed(var17);
            }
            
            try {
                throw var3;
            } catch (Throwable ex) {
                Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }
}*/

