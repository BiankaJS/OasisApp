/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.team.restoasis.controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author aj898
 */
public class ControllerProperties {
     public List<Propertie> getAll() {
        List<Propertie> listProperties = null;
        String query = "SELECT * FROM PROPERTIES";
        try {
            ConnectionMysql connMysql = new ConnectionMysql();
            Connection conn = connMysql.open();
            PreparedStatement pstm = conn.prepareStatement(query);
            ResultSet rs = pstm.executeQuery();
            listProperties = new ArrayList<>();
            while (rs.next()) {
                listProperties.add(fillProperties(rs));
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
     
    private Propertie fillPropertie(ResultSet rs) throws SQLException {
        Usuario u = new Usuario();
        u.setIdUsuario(rs.getInt("idUsuario"));
        u.setUsername(rs.getString("username"));
        u.setPassword(rs.getString("password"));
        u.setToken(rs.getString("token"));
        u.setLastConnection(rs.getString("lastConnection"));
        return u;
    }
}
