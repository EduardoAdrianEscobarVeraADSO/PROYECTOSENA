/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author eduar
 */
public class usuarioadminDAO {
    private final Connection conexion;

    public usuarioadminDAO() {
        conexion = config.conexion.getConnection(); // Obtener la conexión a la base de datos
        if (conexion == null) {
            System.err.println("Error al conectar a la base de datos");
            // excepción o manejo del error
        }
    }
    
   public List<usuarioadminModel> todosLosUsuarios() {
    String sql = "SELECT * FROM usuarios";
    List<usuarioadminModel> usuarios = new ArrayList<>();

    try (PreparedStatement ps = conexion.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        while (rs.next()) {
            int idUsuario = rs.getInt("ID_usuario");
            String nombre = rs.getString("nombre");
            String correo = rs.getString("correo");
            String contraseña = rs.getString("contraseña");
            int idRolFk = rs.getInt("id_rol_fk");

            usuarioadminModel usuario = new usuarioadminModel();
            usuario.setId(idUsuario);
            usuario.setNombre(nombre);
            usuario.setCorreo(correo);
            usuario.setContraseña(contraseña);
            usuario.setId_rol_fk(idRolFk);

            usuarios.add(usuario);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return usuarios;
} 

    public boolean agregarUsuario(usuarioadminModel usuario){
        String sql = "INSERT INTO usuarios (nombre, correo, contraseña, id_rol_fk) VALUES (?, ?, ?, ?)";
        try (PreparedStatement ps = conexion.prepareStatement(sql)) {
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getCorreo());
            ps.setString(3, usuario.getContraseña());
            ps.setInt(4, usuario.getId_rol_fk());
            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        
    }
   
    public void eliminarUsuario(int idUsuario) {
    String sql = "DELETE FROM usuarios WHERE ID_usuario = ?";

    try (Connection conn = conexion;
         PreparedStatement stmt = conn.prepareStatement(sql)) {
        stmt.setInt(1, idUsuario);
        stmt.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

   

public boolean actualizarUsuario(usuarioadminModel usuario) {
    String sql = "UPDATE usuarios SET nombre = ?, correo = ?, contraseña = ?, id_rol_fk = ? WHERE ID_usuario = ?";

    try (Connection conn = conexion;
         PreparedStatement stmt = conn.prepareStatement(sql)) {
        stmt.setString(1, usuario.getNombre());
        stmt.setString(2, usuario.getCorreo());
        stmt.setString(3, usuario.getContraseña());
        stmt.setInt(4, usuario.getId_rol_fk());
        stmt.setInt(5, usuario.getId());
        
        int filasAfectadas = stmt.executeUpdate();
        return filasAfectadas > 0;
    } catch (SQLException e) {
        e.printStackTrace();
        return false;
    }
}

}


    

  