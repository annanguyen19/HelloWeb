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
import model.Goal;
import model.Stake;

/**
 *
 * @author DELL
 */
public class GoalDAO {

    protected Connection connection;

    public GoalDAO() throws SQLException {
        try {
            //define connection .....
            String user = "sa";
            String pass = "sa";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=HelloWorld";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GoalDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Goal get(int xId) throws SQLException {
        
        String sql = "Select g.id as gid,title, description,goalType,StartDate,c.id as cid, c.name as cname, s.id as sid, s.name as sname, lengthOfGoal,paidMoneyPerWeek,goalOwner,Referee from goal as g, Category as c, Stake as s where g.CategoryID=c.id and g.StakeID =s.id and g.id=?";
        
        AccountDAO accDB = new AccountDAO();
        PreparedStatement statement;
        try {
           
            statement = connection.prepareStatement(sql);
            statement.setInt(1,xId);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Goal a = new Goal();
                a.setId(rs.getInt("gid"));
                a.setTitle(rs.getString("title"));
                a.setDescription(rs.getString("description"));
                a.setGoalType(rs.getString("goalType"));
                a.setStartDate(rs.getDate("StartDate"));
                a.setCategory(new Category(rs.getInt("cid"), rs.getString("cname")));
                a.setStake(new Stake(rs.getInt("sid"), rs.getString("sname")));
                a.setLengthOfGoal(rs.getInt("lengthOfGoal"));
                a.setMoneyToPaid(rs.getFloat("paidMoneyPerWeek"));
                a.setGoalOwner(accDB.get(rs.getInt("goalOwner")));
                a.setReferee(accDB.get(rs.getInt("Referee")));
                return a;
            }

        } catch (SQLException ex) {
            Logger.getLogger(GoalDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insert(Goal model) {
        String sql ="INSERT INTO goal VALUES(?,?,?,?,?,?,?,?,?,?)";
        try {
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1,model.getTitle());
        statement.setString(2, model.getDescription());
        statement.setString(3, model.getGoalType());
        statement.setDate(4,model.getStartDate());
        statement.setInt(5,model.getCategory().getId());
        statement.setInt(6,model.getStake().getId());
        statement.setInt(7, model.getLengthOfGoal());
        statement.setFloat(8, model.getMoneyToPaid());
        statement.setInt(9, model.getGoalOwner().getId());
        statement.setInt(10,model.getReferee().getId());
        statement.executeUpdate();
        }
        catch (SQLException e) {
            
        }
    }

    public ArrayList<Goal> getGoalListbyUser(int xUserID) throws SQLException {
        
        String sql = "Select g.id as gid,title, description,goalType,StartDate,c.id as cid, c.name as cname, s.id as sid, s.name as sname, lengthOfGoal,paidMoneyPerWeek,goalOwner,Referee from goal as g, Category as c, Stake as s where g.CategoryID=c.id and g.StakeID =s.id and goalOwner=?";
        ArrayList<Goal> goals = new ArrayList<>();
        AccountDAO accDB = new AccountDAO();
        PreparedStatement statement;
        try {
           
            statement = connection.prepareStatement(sql);
            statement.setInt(1,xUserID);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Goal a = new Goal();
                a.setId(rs.getInt("gid"));
                a.setTitle(rs.getString("title"));
                a.setDescription(rs.getString("description"));
                a.setGoalType(rs.getString("goalType"));
                a.setStartDate(rs.getDate("StartDate"));
                a.setCategory(new Category(rs.getInt("cid"), rs.getString("cname")));
                a.setStake(new Stake(rs.getInt("sid"), rs.getString("sname")));
                a.setLengthOfGoal(rs.getInt("lengthOfGoal"));
                a.setMoneyToPaid(rs.getFloat("paidMoneyPerWeek"));
                a.setGoalOwner(accDB.get(xUserID));
                a.setReferee(accDB.get(rs.getInt("Referee")));
                goals.add(a);
            }

        } catch (SQLException ex) {
            Logger.getLogger(GoalDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return goals;
    }

    public ArrayList<Goal> all() throws SQLException {

        String sql = "Select g.id as gid,title, description,goalType,StartDate,c.id as cid, c.name as cname, s.id as sid, s.name as sname, lengthOfGoal,paidMoneyPerWeek,goalOwner,Referee from goal as g, Category as c, Stake as s where g.CategoryID=c.id and g.StakeID =s.id";
        ArrayList<Goal> goals = new ArrayList<>();
        AccountDAO accDB = new AccountDAO();
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Goal a = new Goal();
                a.setId(rs.getInt("gid"));
                a.setTitle(rs.getString("title"));
                a.setDescription(rs.getString("description"));
                a.setGoalType(rs.getString("goalType"));
                a.setStartDate(rs.getDate("StartDate"));
                a.setCategory(new Category(rs.getInt("cid"), rs.getString("cname")));
                a.setStake(new Stake(rs.getInt("sid"), rs.getString("sname")));
                a.setLengthOfGoal(rs.getInt("lengthOfGoal"));
                a.setMoneyToPaid(rs.getFloat("paidMoneyPerWeek"));
                a.setGoalOwner(accDB.get(rs.getInt("goalOwner")));
                a.setReferee(accDB.get(rs.getInt("Referee")));
                goals.add(a);
            }

        } catch (SQLException ex) {
            Logger.getLogger(GoalDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return goals;
    }

}

        
    
