/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author eduar
 */
public class prendasDAO {
    private final Connection conexion;
    
    public prendasDAO() {
        conexion = config.conexion.getConnection(); // Obtener la conexión a la base de datos
        if (conexion == null) {
            System.err.println("Error al conectar a la base de datos");
            // Aquí puedes lanzar una excepción o manejar el error de alguna otra manera
        }
    }
    public void agregarPrenda(prendasModel prendasmodel){
        
        String sql = "INSERT INTO prendas (nombre_prenda, ID_categoria, precio, imagen) values (?, ?, ?, ?)";
        try(PreparedStatement ps = conexion.prepareStatement(sql)){
            ps.setString(1, prendasmodel.getNombre_prenda());
            ps.setInt(2, prendasmodel.getID_categoria());
            ps.setInt(3, prendasmodel.getPrecio());
            ps.setString(4, prendasmodel.getImagen());
            ps.executeUpdate();
            
         
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
