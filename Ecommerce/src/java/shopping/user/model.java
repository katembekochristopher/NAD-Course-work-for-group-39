/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package shopping.user;

/**
 *
 * @author HP
 */
public class model {
    private int id;
    private String name;
    private String email;
    private String password;
    
    public model(){
       
    }
    
    public model( int id,String name,String email,String password){
       this.id = id;
       this.name = name;
        this.email = email;
         this.name = password;
    }
    
    public int getid(){
        return id;
    }
    public void setid(){
        this.id= id;
    }
    
        public String getname(){
        return name;
    }
    public void setname(){
        this.name= name;
    }
    
            public String getemail(){
        return email;
    }
    public void email(){
        this.email= email;
    }
    
            public String getpassword(){
        return password;
    }
    public void setpassword(){
        this.password= password;
    }

   public void setId(int Int) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void setemail(String string) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
        public void setname(String string) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
        
            public void setpassword(String string) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    @Override
    public String toString(){
        return "model[id=" +id +",name=" +name +",email=" +email +",password=" +password +"]";
    }

}
