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

@WebServlet("/listarAdmin")
public class listarCategorias extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoriaDAO categoriaDAO = new CategoriaDAO();
        List<Categoriamodel> categorias = categoriaDAO.todasLasCategorias();

        // Establece la lista de categorías en la sesión para el header
        request.getSession().setAttribute("listarcategorias", categorias);

        // Establece la lista de categorías en la solicitud para la página de administración
        request.setAttribute("categorias", categorias);

        // Redirige a la página de administración
        request.getRequestDispatcher("admin/administracion.jsp").forward(request, response);
    }
}
