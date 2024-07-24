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
import model.Categoriamodel;

/**
 *
 * @author eduar
 */
@WebServlet("/agregarCategorias/agregar")

    public class agregarCategorias extends HttpServlet {
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
           String nombreCategoria = request.getParameter("category-name");
           String idCategoriastring = request.getParameter("edit-category-id");
           if (idCategoriastring==null){ //agrega una nueva categoria
               int idCategoria = 0;
               Categoriamodel categoria = new Categoriamodel(idCategoria, nombreCategoria);

                CategoriaDAO categoriaDAO = new CategoriaDAO();
                boolean accionExitosa = categoriaDAO.agregarCategoria(categoria);

                // Redireccionar a una página de confirmación o mostrar un mensaje de error
                if (accionExitosa) {
                    response.sendRedirect("../admin/agregarCategorias.jsp");
                } else {
                     response.sendRedirect("../error.jsp");
                }
           }else{ //edita una categoria existente en base al id
                int idCategoria = Integer.parseInt(idCategoriastring);
                Categoriamodel categoria = new Categoriamodel(idCategoria, nombreCategoria);

                CategoriaDAO categoriaDAO = new CategoriaDAO();
                boolean accionExitosa = categoriaDAO.editarCategoria(categoria);

                // Redireccionar a una página de confirmación o mostrar un mensaje de error
                if (accionExitosa) {
                    response.sendRedirect("../admin/administracion.jsp");
                } else {
                     response.sendRedirect("../error.jsp");
                }
           }
           
        }
}
