/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.util.List;
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
@WebServlet("/listarCategoriasSelect")
public class agregarPrendasSelect extends HttpServlet {
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    CategoriaDAO categoriaDAO = new CategoriaDAO();
    List<Categoriamodel> categorias = categoriaDAO.todasLasCategorias();

        request.setAttribute("categorias", categorias);
        request.getRequestDispatcher("admin/agregarPrendas.jsp").forward(request, response);
    }
}

