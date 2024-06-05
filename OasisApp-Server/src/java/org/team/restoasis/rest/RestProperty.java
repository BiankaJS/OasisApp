/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.team.restoasis.rest;

import com.google.gson.Gson;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import java.util.List;
import org.team.restoasis.controller.ControllerProperty;
import org.team.restoasis.model.Property;

/**
 *
 * @author aj898
 */
@Path("Property")
public class RestProperty {
    
    @Path("getAll")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAll() {
        String out = "";
        Gson gson = new Gson();
        try {
            ControllerProperty cu = new ControllerProperty();
            List<Property> list = cu.getAll();
            out = gson.toJson(list);
        } catch (Exception e) {
            out = """
                  {"Error":"Error en la peticion"}
                  """;
        }
        return Response.ok(out).build();

    }
}
