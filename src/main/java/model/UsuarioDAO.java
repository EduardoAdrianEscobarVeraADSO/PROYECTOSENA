/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Propietario
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
    private final Connection conexion;

    public UsuarioDAO() {
        conexion = config.conexion.getConnection(); // Obtener la conexión a la base de datos
        if (conexion == null) {
            System.err.println("Error al conectar a la base de datos");
            // Aquí puedes lanzar una excepción o manejar el error de alguna otra manera
        }
    }

    public boolean insertarUsuario(UsuarioModel empleadoModel) {
        String sql = "INSERT INTO usuarios (nombre, correo, contraseña, id_rol_fk) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = conexion.prepareStatement(sql)) {
            ps.setString(1, empleadoModel.getNombreUsuario());
            ps.setString(2, empleadoModel.getCorreoElectronico());
            ps.setString(3, empleadoModel.getContrasena());
            ps.setInt(4, empleadoModel.getAdmin());
            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public boolean validarUsuario(UsuarioModel usuariomodel){
        String sql = "SELECT COUNT(*) FROM usuarios WHERE correo = ?";
        boolean validarcorreo = false;
        try(PreparedStatement ps = conexion.prepareStatement(sql)){
            ps.setString(1, usuariomodel.getCorreoElectronico());
            try(ResultSet rs = ps.executeQuery()){
                if(rs.next() && rs.getInt(1) > 0){
                    validarcorreo = true;
                }     
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return validarcorreo;
    }
    /**
     *
     * @param usuariomodel
     * @return
     */
    public boolean Login(UsuarioModel usuariomodel) {
    
    String sql = "SELECT nombre, ID_usuario, id_rol_fk FROM usuarios WHERE correo = ? AND contraseña = ?";

    try (PreparedStatement ps = conexion.prepareStatement(sql)) {
        ps.setString(1, usuariomodel.getCorreoElectronico().trim());
        ps.setString(2, usuariomodel.getContrasena().trim());// Trim para eliminar espacios adicionales
        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
               usuariomodel.setAdmin(rs.getInt("id_rol_fk"));
               usuariomodel.setNombreUsuario(rs.getString("nombre"));
               usuariomodel.setId(rs.getInt("ID_usuario"));
               return true;
            }
        }
    } catch (SQLException e) {
        // Manejar cualquier excepción de SQL
        e.printStackTrace();
    }
    

    return false;
}
;
}