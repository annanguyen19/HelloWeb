package DAL;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DELL
 */
public class AccountDAO {
    private Connection connection;
    public AccountDAO()
    {
        try {
            String user = "sa";
            String password = "sa";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=HelloWorld";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Account get(String email, String pass) throws SQLException {
        String sql = "SELECT * from Account where email =? and password = ? ";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, pass);
        ResultSet rs = statement.executeQuery();
        while(rs.next()) {
            Account a = new Account();
            a.setId(rs.getInt("id"));
            a.setEmail(email);
            a.setPass(pass);
            return a;
        }
        return null;
    }
    public Account get(int xId) throws SQLException {
        String sql = "SELECT * from Account where id=? ";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, xId);
       
        ResultSet rs = statement.executeQuery();
        while(rs.next()) {
            Account a = new Account();
            a.setId(rs.getInt("id"));
            a.setEmail(rs.getString("email"));
            a.setPass(rs.getString("password"));
            return a;
        }
        return null;
    }
    public ArrayList<Account> all() {
        String sql ="Select * from Account";
        ArrayList<Account> accounts = new ArrayList<>();
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt("id"));
                a.setEmail(rs.getString("email"));
                a.setPass(rs.getString("password"));
                accounts.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return accounts;
        
    }
    public void insert(Account model){
        String sql ="insert into Account VALUES (?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, model.getEmail());
            statement.setString(2, model.getPass());
            statement.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public void insertFriend(int xID) {
        try {
            String sql = "INsert into Friend values (?,?)" ;
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, xID);
            int yID =xID;
            while(yID>0){
                yID--;
                statement.setInt(2, yID);
                statement.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Account> getFriendList(int xId) {
        ArrayList<Account> friends =new ArrayList<>();
        String sql = "SELECT f.Friendid as fid,a.email as fmail,a.password as fpass from Account as a, Friend as f where a.id=f.Friendid and f.id=?";
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, xId);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt("fid"));
                a.setEmail(rs.getString("fmail"));
                a.setPass(rs.getString("fpass"));
                friends.add(a);
            }
            if(friends.isEmpty()) friends.add(get(xId));
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return friends;
    }
}
