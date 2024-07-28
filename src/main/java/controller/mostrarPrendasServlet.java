package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.prendasModel;
import model.prendasDAO;
import java.util.List;

@WebServlet("/mostrarPrendas")
public class mostrarPrendasServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el ID de la categoría de los parámetros de la solicitud
        String idCategoriaString = request.getParameter("id");
        int idCategoria = Integer.parseInt(idCategoriaString);

        // Obtener las prendas asociadas a la categoría
        prendasDAO prendaDAO = new prendasDAO();
        List<prendasModel> prendas = prendaDAO.obtenerPrendasPorCategoria(idCategoria);

        // Enviar las prendas como atributo de la solicitud y reenviar al JSP
        request.setAttribute("prendas", prendas);
        request.getRequestDispatcher("/sections/buzos.jsp").forward(request, response);
    }
}
