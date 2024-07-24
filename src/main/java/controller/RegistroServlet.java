package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UsuarioModel;
import model.UsuarioDAO;

@WebServlet("/login/registro")
public class RegistroServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        // Obtener los datos del formulario
        String nombreUsuario = request.getParameter("userName");
        String correoElectronico = request.getParameter("userEmail");
        String contrasena = request.getParameter("userPassword");
        int admin = 1;
        System.out.println(nombreUsuario);
        System.out.println(correoElectronico);
        System.out.println(contrasena);
       
        // Crear un objeto Usuario con los datos del formulario
        UsuarioModel usuariomodel = new UsuarioModel();
        usuariomodel.setCorreoElectronico(correoElectronico);
       
       
        // Insertar el usuario en la base de datos cuando no exista el correo
        UsuarioDAO usuariodao = new UsuarioDAO();
        if(usuariodao.validarUsuario(usuariomodel)){
            request.setAttribute("correo", usuariomodel);
            request.getRequestDispatcher("inicio_sesion.jsp").forward(request, response);
            
        }else{
            
            UsuarioModel usuarioModel = new UsuarioModel();
            usuarioModel.setNombreUsuario(nombreUsuario);
            usuarioModel.setCorreoElectronico(correoElectronico);
            usuarioModel.setContrasena(contrasena);
            UsuarioDAO usuarioDAO = new UsuarioDAO();
             boolean registroExitoso = usuarioDAO.insertarUsuario(usuarioModel);
       
            // Redireccionar a una página de confirmación o mostrar un mensaje de error
            if (registroExitoso) {
                HttpSession session = request.getSession();
                session.setAttribute("login", usuarioModel);
                response.sendRedirect("../index.jsp");
                
            } else {
                response.sendRedirect("inicio_sesion.jsp");
            }
        }
       
    }
}