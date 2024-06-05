/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.team.restoasis.rest;

import jakarta.ws.rs.FormParam;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.team.restoasis.controller.ControllerAuth;
import org.team.restoasis.model.User;

/**
 *
 * @author aj898
 */
@Path("user")
public class RestAuth {
    
    @POST
@Produces(MediaType.APPLICATION_JSON)
@Path("login")
public Response login(@FormParam("username") String username,
                      @FormParam("password") String password) {
    String out = "";
    try {
        ControllerAuth cu = new ControllerAuth();
        User user = cu.getByUsernameAndPassword(username, password);
        if (user != null) {
            System.out.println(username);
            out = """
                 {"user_id": "%d"}
                 """.formatted(user.getUser_id());
        } else {
            out = """
                 {"user_id":"0"}
                 """;
        }
    } catch (Exception e) {
        out = """
             {"error":"%s"}
             """;
        out = String.format(out, e.getMessage());
    }
    return Response.ok(out).build();
}
    
    
    
}
