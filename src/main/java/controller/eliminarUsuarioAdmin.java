/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.usuarioadminDAO;

/**
 *
 * @author eduar
 */
@WebServlet("/eliminarUsuario")
public class eliminarUsuarioAdmin extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("deleteId");

        if (userId != null && !userId.isEmpty()) {
            int id = Integer.parseInt(userId);
            usuarioadminDAO usuarioDAO = new usuarioadminDAO();
            usuarioDAO.eliminarUsuario(id);
        }

        response.sendRedirect("listarUsuarioAdmin");
    }
}
