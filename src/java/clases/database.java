/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Cristobal
 */
public class database {
    
    String url;
    String user;
    String contra;
    String driver;

    public database() {
        this.url = "jdbc:mysql://mysql:3306/empresa";
        this.user = "root";
        this.contra = "";
        this.driver = "com.mysql.jdbc.Driver";
    }
    
    
    
}
