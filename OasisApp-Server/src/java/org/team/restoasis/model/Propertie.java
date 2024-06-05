/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.team.restoasis.model;

/**
 *
 * @author aj898
 */
public class Propertie {
     private int property_id;
    private String location;
    private float price;
    
    public Properties (){
        
    }

    public Properties(int property_id, String location, float price) {
        this.property_id = property_id;
        this.location = location;
        this.price = price;
    }

    public int getProperty_id() {
        return property_id;
    }

    public void setProperty_id(int property_id) {
        this.property_id = property_id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
}
