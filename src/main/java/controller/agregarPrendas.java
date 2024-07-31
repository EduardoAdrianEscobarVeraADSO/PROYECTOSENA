package controller;

import model.prendasDAO;
import model.prendasModel;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@WebServlet("/agregarPrendas")
@MultipartConfig
public class agregarPrendas extends HttpServlet {
    private static final String UPLOAD_DIR = "uploads";

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombrePrenda = request.getParameter("nombrePrenda");
        String descripcionPrenda = request.getParameter("descripcionPrenda");
        String precioPrenda = request.getParameter("precioPrenda");
        String stockPrenda = request.getParameter("stockPrenda");
        String idCategoria = request.getParameter("idCategoria"); 
        String talla = request.getParameter("tallaPrenda"); 
        String action = request.getParameter("action");

        if (action.equals("agregar")) {
            // Agregar una nueva prenda
            prendasModel prenda = new prendasModel();
            prenda.setNombre_prenda(nombrePrenda);
            prenda.setDescripcion_prenda(descripcionPrenda);
            prenda.setPrecio((int) Double.parseDouble(precioPrenda));
            prenda.setStock_prenda(Integer.parseInt(stockPrenda));
            prenda.setID_categoria(Integer.parseInt(idCategoria));
            prenda.setTalla(talla);

            // Manejar la imagen
            String contextPath = getServletContext().getRealPath("/");
            String uploadFilePath = contextPath + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadFilePath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }
            Part filePart = request.getPart("URLimagen");
            String fileName = filePart.getSubmittedFileName();
            String filePath = uploadFilePath + File.separator + fileName;
            filePart.write(filePath);
            prenda.setImagen(fileName);

            prendasDAO prendaDAO = new prendasDAO();
            boolean accionExitosa = prendaDAO.agregarPrenda(prenda);

            if (accionExitosa) {
                response.sendRedirect("admin/administracionPrendas.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } else if (action.equals("editar")) {
            // Editar una prenda existente
            String idPrendaString = request.getParameter("idPrenda");
            int idPrenda = Integer.parseInt(idPrendaString);

            prendasModel prenda = new prendasModel();
            prenda.setID_prenda(idPrenda);
            prenda.setNombre_prenda(nombrePrenda);
            prenda.setDescripcion_prenda(descripcionPrenda);
            prenda.setPrecio((int) Double.parseDouble(precioPrenda));
            prenda.setStock_prenda(Integer.parseInt(stockPrenda));
            prenda.setID_categoria(Integer.parseInt(idCategoria));
            prenda.setTalla(talla);

            // Manejar la imagen
            String contextPath = getServletContext().getRealPath("/");
            String uploadFilePath = contextPath + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadFilePath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }
            Part filePart = request.getPart("URLimagen");
            String fileName = filePart.getSubmittedFileName();
            String filePath = uploadFilePath + File.separator + fileName;
            filePart.write(filePath);
            prenda.setImagen(fileName);

            prendasDAO prendaDAO = new prendasDAO();
            boolean accionExitosa = prendaDAO.actualizarPrenda(prenda);

            if (accionExitosa) {
                response.sendRedirect("admin/administracionPrendas.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        }
    }

}
