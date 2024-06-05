/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.team.restoasis.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.team.restoasis.model.Property;

/**
 *
 * @author aj898
 */
public class ControllerProperty {
     public List<Property> getAll() {
        List<Property> listProperties = null;
        String query = "SELECT * FROM Properties";
        try {
            ConnectionMysql connMysql = new ConnectionMysql();
            Connection conn = connMysql.open();
            PreparedStatement pstm = conn.prepareStatement(query);
            ResultSet rs = pstm.executeQuery();
            listProperties = new ArrayList<>();
            while (rs.next()) {
                listProperties.add(fillProperty(rs));
            }
            rs.close();
            pstm.close();
            connMysql.close();
            return listProperties;
        } catch (Exception e) {
            listProperties = new ArrayList<>();
            e.printStackTrace();
            return listProperties;
        }
    }

    private Property fillProperty(ResultSet rs) throws SQLException {
        Property property = new Property();
        property.setProperty_id(rs.getInt("Property_id")); 
        property.setLocation(rs.getString("Location"));
        property.setPrice(rs.getFloat("Price"));
        return property;
    }
}
