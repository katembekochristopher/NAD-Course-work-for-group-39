
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import shopping.connection.DatabaseConnection;

@WebServlet("/AddToCart")
public class Addtocart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = 0;

        //Getting all the parameters from the user
        int productId = Integer.parseInt(request.getParameter("product_id"));
        String price = request.getParameter("price");
        //String mrp_price = request.getParameter("mrp_price");
        HttpSession hs = request.getSession();
        try {
            //If user session is null user have to re-login
            if ((String) hs.getAttribute("name") == null) {
                response.sendRedirect("login.jsp");
                //Inserting cart details to the database
            } else {
                int customer_id = (int) hs.getAttribute("id");
                //Querying to the database.
                int addToCart = DatabaseConnection.insertUpdateFromSqlQuery("insert into cart values('" + price + "','" + customer_id + "','" + productId + "')");
                if (addToCart > 0) {
                    response.sendRedirect("index.jsp");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
