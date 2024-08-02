package controller;

import model.carritocomprasModel;
import model.carritoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/CarritoServlet")
public class CarritoServlet extends HttpServlet {

    private final carritoDAO carritoDAO;

    public CarritoServlet() {
        this.carritoDAO = new carritoDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("agregar".equals(action)) {
            int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
            int idPrenda = Integer.parseInt(request.getParameter("idPrenda"));
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));

            // Obtener o crear un carrito para el usuario
            int idCarrito = obtenerOCrearCarrito(idUsuario);

            if (idCarrito != -1) {
                boolean agregado = carritoDAO.agregarAlCarrito(idCarrito, idPrenda, cantidad);
                if (agregado) {
                    response.sendRedirect("Like-Cart/cart.jsp");
                } else {
                    request.setAttribute("mensajeError", "No se pudo agregar el producto al carrito.");
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("mensajeError", "No se pudo crear el carrito.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } else if ("remover".equals(action)) {
            int idCarrito = Integer.parseInt(request.getParameter("idCarrito"));
            int idPrenda = Integer.parseInt(request.getParameter("idPrenda"));

            // Eliminar la prenda del carrito
            boolean eliminado = carritoDAO.eliminarDelCarrito(idCarrito, idPrenda);
            if (eliminado) {
                response.sendRedirect("Like-Cart/cart.jsp");
            } else {
                request.setAttribute("mensajeError", "No se pudo eliminar el producto del carrito.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        }
    }

    private int obtenerOCrearCarrito(int idUsuario) {
        List<carritocomprasModel> carritos = carritoDAO.obtenerCarritoPorUsuario(idUsuario);
        if (carritos.isEmpty()) {
            // Crear un nuevo carrito
            return carritoDAO.crearCarrito(idUsuario);
        } else {
            // Retornar el ID del primer carrito encontrado
            return carritos.get(0).getID_carrito();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

