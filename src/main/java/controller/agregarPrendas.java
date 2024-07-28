/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.prendasDAO;
import model.prendasModel;

/**
 *
 * @author eduar
 */
@WebServlet("/agregarPrendas")
@MultipartConfig
public class agregarPrendas extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombrePrenda = request.getParameter("nombrePrenda");
        String descripcionPrenda = request.getParameter("descripcionPrenda");
        
        // Obtener la imagen del formulario
        Part filePart = request.getPart("URLimagen");
        String fileName = filePart.getSubmittedFileName();
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();
        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);
        int nombre_categoria = Integer.parseInt(request.getParameter("nombre_categoria"));
        int precioPrenda = Integer.parseInt(request.getParameter("precioPrenda"));
        int stockPrenda = Integer.parseInt(request.getParameter("stockPrenda"));
        prendasModel prendasmodel = new prendasModel();
        prendasmodel.setID_categoria(nombre_categoria);
        prendasmodel.setNombre_prenda(nombrePrenda);
        prendasmodel.setImagen(fileName);
        prendasmodel.setPrecio(precioPrenda);
        prendasmodel.setDescripcion_prenda(descripcionPrenda);
        prendasmodel.setStock_prenda(stockPrenda);
        
        prendasDAO prendasdao = new prendasDAO();
        prendasdao.agregarPrenda(prendasmodel);
        response.sendRedirect("admin/agregarPrendas.jsp");
      
    }

}
