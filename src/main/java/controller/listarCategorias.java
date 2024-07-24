/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/listarAdmin")
public class listarCategorias extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    /**
     *
     
@param request
@param response
@throws ServletException
@throws IOException
*/
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    CategoriaDAO categoriaDAO = new CategoriaDAO();
    List<Categoriamodel> categorias = categoriaDAO.todasLasCategorias();

        request.setAttribute("categorias", categorias);
        request.getRequestDispatcher("admin/administracion.jsp").forward(request, response);
    }
    }



