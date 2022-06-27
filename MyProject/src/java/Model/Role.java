/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author win
 */
public class Role {
    private int id;
    private String name;
    private ArrayList<Account> accounts = new ArrayList<>();
    private ArrayList<Feature> features = new ArrayList<>();

    public Role() {
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Feature{" + "id=" + id + ", name=" + name + ", accounts=" + accounts + ", features=" + features + '}';
    }

    
    
    
    
}
