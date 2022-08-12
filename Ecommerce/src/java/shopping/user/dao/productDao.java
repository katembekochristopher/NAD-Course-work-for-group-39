 
package shopping.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import shopping.user.*;


public class productDao {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public productDao(Connection con) {
        this.con = con;
    }
    
    public List<product> getAllProducts() throws SQLException{
        List<product> prdt= new ArrayList<product>();
        try{
         query = "select * from prdt";
         pst = this.con.prepareStatement(query);
         rs = pst.executeQuery();
         while(rs.next()){
             product row= new product();
             row.setId(rs.getInt("poduct_id"));
             row.setName(rs.getString("name"));
             row.setCategory(rs.getString("category"));
             row.setPrice(rs.getString("price"));
             //row.setImage(rs.getString("image"));
             prdt.add(row);
         }
     
   
    }catch(Exception e){
    e.printStackTrace();
}
    return prdt;
    }
}
