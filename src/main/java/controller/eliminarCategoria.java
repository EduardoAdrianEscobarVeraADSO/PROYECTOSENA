/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CategoriaDAO;

/**
 *
 * @author eduar
 */
@WebServlet("/eliminar")
public class eliminarCategoria extends HttpServlet {
      @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryId = request.getParameter("deleteId");

        if (categoryId != null && !categoryId.isEmpty()) {
            int id = Integer.parseInt(categoryId);
            CategoriaDAO categoriaDAO = new CategoriaDAO();
            categoriaDAO.eliminarCategoria(id);
        }

        response.sendRedirect("admin/administracion.jsp");

    }
}
