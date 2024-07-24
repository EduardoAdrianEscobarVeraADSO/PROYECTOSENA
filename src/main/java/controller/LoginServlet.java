/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CategoriaDAO;
import model.Categoriamodel;
import model.UsuarioDAO;
import model.UsuarioModel;

/**
 *
 * @author Propietario
 */

@WebServlet("/login/loginSV")
public class LoginServlet extends HttpServlet {
    // Métodos doPost, doGet, u otros según sea necesario
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");

    // Obtener los parámetros del formulario de inicio de sesión
    String CorreoElectronico = request.getParameter("userEmail");
    String contraseña = request.getParameter("userPassword");
    
    UsuarioModel usuariomodel = new UsuarioModel();
    usuariomodel.setCorreoElectronico(CorreoElectronico);
    usuariomodel.setContrasena(contraseña);
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    boolean validacionlogin = usuarioDAO.Login(usuariomodel);
   if (validacionlogin) {
    CategoriaDAO categorias = new CategoriaDAO();
    List<Categoriamodel> listarcategorias = categorias.todasLasCategorias();

    // Establecer el atributo de la solicitud

    HttpSession session = request.getSession();
    session.setAttribute("listarcategorias", listarcategorias);
    session.setAttribute("login", usuariomodel);

    switch (usuariomodel.getAdmin()) {
                case 1:
                    response.sendRedirect("../index.jsp");
                    break;
                case 2:
                    response.sendRedirect("../admin/admin.jsp");
                    break;
                case 3:
                    response.sendRedirect("../Sadmin/Sadministracion.jsp");
                default:
                    // Handle other cases if needed
                    break;
            }
} else {
    // Establecer el atributo de error
    request.setAttribute("error", "Correo o contraseña no válidos");

    // Redirigir a la página de inicio de sesión
    request.getRequestDispatcher("login/inicio_sesion.jsp").forward(request, response);
}

}
}
