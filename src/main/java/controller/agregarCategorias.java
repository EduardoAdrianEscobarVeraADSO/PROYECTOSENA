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

@WebServlet("/agregarCategorias/agregar")
public class agregarCategorias extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombreCategoria = request.getParameter("category-name");
        String idCategoriastring = request.getParameter("edit-category-id");
        CategoriaDAO categoriaDAO = new CategoriaDAO();

        if (idCategoriastring == null) { // Agrega una nueva categoría
            int idCategoria = 0;
            Categoriamodel categoria = new Categoriamodel(idCategoria, nombreCategoria);

            boolean accionExitosa = categoriaDAO.agregarCategoria(categoria);

            if (accionExitosa) {
                // Actualiza la lista de categorías en la sesión
                actualizarCategoriasEnSesion(request, categoriaDAO);

                // Redirecciona a la página de agregar categorías
                response.sendRedirect("../admin/agregarCategorias.jsp");
            } else {
                response.sendRedirect("../error.jsp");
            }
        } else { // Edita una categoría existente en base al id
            int idCategoria = Integer.parseInt(idCategoriastring);
            Categoriamodel categoria = new Categoriamodel(idCategoria, nombreCategoria);

            boolean accionExitosa = categoriaDAO.editarCategoria(categoria);

            if (accionExitosa) {
                // Actualiza la lista de categorías en la sesión
                actualizarCategoriasEnSesion(request, categoriaDAO);

                // Redirecciona a la página de administración
                response.sendRedirect("../admin/administracion.jsp");
            } else {
                response.sendRedirect("../error.jsp");
            }
        }
    }

    // Método auxiliar para actualizar las categorías en la sesión
    private void actualizarCategoriasEnSesion(HttpServletRequest request, CategoriaDAO categoriaDAO) {
        List<Categoriamodel> categoriasActualizadas = categoriaDAO.todasLasCategorias();
        request.getSession().setAttribute("listarcategorias", categoriasActualizadas);
    }
}
