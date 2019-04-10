/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class Account {
    private String email;
    private String pass;
    private ArrayList<Account> friends;
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public ArrayList<Account> getFriends() {
        return friends;
    }

    public void setFriends(ArrayList<Account> friends) {
        this.friends = friends;
    }

    public Account(String email, String pass, int id) {
        this.email = email;
        this.pass = pass;
        this.id = id;
    }
    public Account () {}
    public Account(String email, String pass) {
        this.email = email;
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
}
