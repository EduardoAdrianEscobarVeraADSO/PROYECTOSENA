package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.usuarioadminModel;
import model.usuarioadminDAO;

@WebServlet("/agregarUsuarios")
public class agregarUsuarioAdmin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("user-name");
        String correo = request.getParameter("user-email");
        String contraseña = request.getParameter("user-password");
        String idUsuarioString = request.getParameter("id");
        String action = request.getParameter("action");

        if (action.equals("agregar")) {
            // Agregar un nuevo usuario
     
            int idRolFk = Integer.parseInt(request.getParameter("rol-user"));

            usuarioadminModel usuario = new usuarioadminModel();
            usuario.setNombre(nombre);
            usuario.setCorreo(correo);
            usuario.setContraseña(contraseña);
            usuario.setId_rol_fk(idRolFk);

            usuarioadminDAO usuarioDAO = new usuarioadminDAO();
            boolean accionExitosa = usuarioDAO.agregarUsuario(usuario);

            // Redireccionar a una página de confirmación o mostrar un mensaje de error
            if (accionExitosa) {
                response.sendRedirect("Sadmin/administracion.jsp");
            } else {
                response.sendRedirect("../error.jsp");
            }
        } else if (action.equals("editar")) {
            // Editar un usuario existente
            int idUsuario = Integer.parseInt(idUsuarioString);

            usuarioadminModel usuario = new usuarioadminModel();
            usuario.setId(idUsuario);
            usuario.setNombre(nombre);
            usuario.setCorreo(correo);
            usuario.setContraseña(contraseña);
            usuario.setId_rol_fk(Integer.parseInt(request.getParameter("rol-user")));

            usuarioadminDAO usuarioDAO = new usuarioadminDAO();
            boolean accionExitosa = usuarioDAO.actualizarUsuario(usuario);

            // Redireccionar a una página de confirmación o mostrar un mensaje de error
            if (accionExitosa) {
                response.sendRedirect("Sadmin/administracion.jsp");
            } else {
                response.sendRedirect("../error.jsp");
            }
        }
    }
}

