/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Stake;

/**
 *
 * @author DELL
 */
public class StakeDAO {
    protected Connection connection;
    public StakeDAO() throws SQLException {
        try {
            //define connection .....
            String user = "sa";
            String pass = "sa";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=HelloWorld";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
}       catch (ClassNotFoundException ex) {
            Logger.getLogger(StakeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Stake> all() {
        String sql ="Select * from Stake";
        ArrayList<Stake> stakes = new ArrayList<>();
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                Stake a = new Stake();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                
                stakes.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stakes;
    }
    public Stake get(int xId) {
         String sql ="Select * from Stake where id = ?";
        
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, xId);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                Stake a = new Stake();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
              return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
