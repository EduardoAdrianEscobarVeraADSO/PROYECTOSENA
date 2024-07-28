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
public class prendasDAO {
    private final Connection conexion;
    
    public prendasDAO() {
        conexion = config.conexion.getConnection(); // Obtener la conexión a la base de datos
        if (conexion == null) {
            System.err.println("Error al conectar a la base de datos");
        }
    }
    public void agregarPrenda(prendasModel prendasmodel){
        
        String sql = "INSERT INTO prendas (nombre_prenda, ID_categoria, precio, imagen, descripcion, stock) values (?, ?, ?, ?, ?, ?)";
        try(PreparedStatement ps = conexion.prepareStatement(sql)){
            ps.setString(1, prendasmodel.getNombre_prenda());
            ps.setInt(2, prendasmodel.getID_categoria());
            ps.setInt(3, prendasmodel.getPrecio());
            ps.setString(4, prendasmodel.getImagen());
            ps.setString(5, prendasmodel.getDescripcion_prenda());
            ps.setInt(6, prendasmodel.getStock_prenda());
            ps.executeUpdate();
            
         
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    public List<prendasModel> obtenerPrendasPorCategoria(int idCategoria) {
        String sql = "SELECT * FROM prendas WHERE ID_categoria = ?";
        List<prendasModel> prendas = new ArrayList<>();

        try (PreparedStatement ps = conexion.prepareStatement(sql)) {
            ps.setInt(1, idCategoria);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    prendasModel prenda = new prendasModel();
                    prenda.setID_prenda(rs.getInt("ID_prenda"));
                    prenda.setID_categoria(rs.getInt("ID_categoria"));
                    prenda.setNombre_prenda(rs.getString("nombre_prenda"));
                    prenda.setPrecio(rs.getInt("precio"));
                    prenda.setImagen(rs.getString("imagen"));
                    prendas.add(prenda);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return prendas;
    }
}

    
