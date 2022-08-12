/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shopping.user.dao;
import java.sql.*;
import shopping.user.*;

public class userdao {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

	public userdao(Connection con) {
		this.con = con;
	}
	
	public model userLogin(String email, String password) {
		model user = null;
        try {
            query = "select * from users where email=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if(rs.next()){
            	user = new model();
            	user.setId(rs.getInt("id"));
            	user.setname(rs.getString("name"));
            	user.setemail(rs.getString("email"));
            }
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return user;
    }
}



    

