/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author DELL
 */
public class Goal {
    private int id;
    private String title;
    private String description;
    private String goalType;
    private Date StartDate;
    private Category category;
    private int lengthOfGoal;
    private float moneyToPaid;
    private Account GoalOwner;
    private Account referee;
    private Stake stake;
    public Account getReferee() {
        return referee;
    }

    public void setReferee(Account referee) {
        this.referee = referee;
    }
    public Goal() {
    }
    public Date getEndTime() {
        int noOfDay = lengthOfGoal*7;
        Calendar cal = Calendar.getInstance();
        cal.setTime(StartDate);
        cal.add(Calendar.DAY_OF_YEAR,noOfDay );
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date d =Date.valueOf(df.format(cal.getTime()));
        return d;
    }
    
    public Goal(int id, String title, String description, String goalType, Date StartDate, Category category, Stake stake,int lengthOfGoal, float moneyToPaid, Account GoalOwner) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.goalType = goalType;
        this.StartDate = StartDate;
        this.category = category;
        this.lengthOfGoal = lengthOfGoal;
        this.moneyToPaid = moneyToPaid;
        this.GoalOwner = GoalOwner;
        this.stake =stake;
    }

    public Stake getStake() {
        return stake;
    }

    public void setStake(Stake stake) {
        this.stake = stake;
    }

    public Account getGoalOwner() {
        return GoalOwner;
    }

    public void setGoalOwner(Account GoalOwner) {
        this.GoalOwner = GoalOwner;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGoalType() {
        return goalType;
    }

    public void setGoalType(String goalType) {
        this.goalType = goalType;
    }

    public Date getStartDate() {
        return StartDate;
    }

    public void setStartDate(Date StartDate) {
        this.StartDate = StartDate;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getLengthOfGoal() {
        return lengthOfGoal;
    }

    public void setLengthOfGoal(int lengthOfGoal) {
        this.lengthOfGoal = lengthOfGoal;
    }

    public float getMoneyToPaid() {
        return moneyToPaid;
    }

    public void setMoneyToPaid(float moneyToPaid) {
        this.moneyToPaid = moneyToPaid;
    }
    
}
