package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.prendasDAO;
import model.prendasModel;

/**
 * Servlet para listar las prendas.
 */
@WebServlet("/listarPrendas")
public class ListarPrendas extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        prendasDAO prendaDAO = new prendasDAO();
        List<prendasModel> prendas = prendaDAO.obtenerTodasLasPrendas();

        request.setAttribute("prendas", prendas);
        request.getRequestDispatcher("/admin/administracionPrendas.jsp").forward(request, response);
    }
}
