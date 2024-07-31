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
public class CategoriaDAO {
    private final Connection conexion;

    public CategoriaDAO() {
        conexion = config.conexion.getConnection(); // Obtener la conexión a la base de datos
        if (conexion == null) {
            System.err.println("Error al conectar a la base de datos");
            // Aquí puedes lanzar una excepción o manejar el error de alguna otra manera
        }
    }

    public boolean agregarCategoria(Categoriamodel categoria){
        String sql = "INSERT INTO categorias (nombre_categoria) VALUES (?)";
        try (PreparedStatement ps = conexion.prepareStatement(sql)) {
            ps.setString(1, categoria.getNombre_categoria());
            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        
    }
    public List<Categoriamodel> todasLasCategorias() {
        String sql = "SELECT * FROM categorias WHERE ID_categoria <> 1";
        
        List<Categoriamodel> categorias = new ArrayList<>();

        try (PreparedStatement ps = conexion.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int idCategoria = rs.getInt("id_categoria");
                String nombreCategoria = rs.getString("nombre_categoria");

                Categoriamodel categoria = new Categoriamodel(idCategoria, nombreCategoria);
                categorias.add(categoria);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return categorias;
    }
    public void eliminarCategoria(int idCategoria) {
        String sql1 = "UPDATE prendas SET ID_categoria = 1 WHERE ID_categoria = ?";
        String sql2 = "DELETE FROM categorias WHERE ID_categoria = ?";
        
        

        try (Connection conn = conexion;
             PreparedStatement stmt = conn.prepareStatement(sql1);
                PreparedStatement stmt2 = conn.prepareStatement(sql2)) {
            stmt.setInt(1, idCategoria);
            stmt.executeUpdate();
            stmt2.setInt(1, idCategoria);
            stmt2.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public boolean editarCategoria(Categoriamodel categoria) {
        String sql = "UPDATE categorias SET nombre_categoria = ? WHERE ID_categoria = ?";

        try (Connection conn = conexion;
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             stmt.setString(1, categoria.getNombre_categoria());
             stmt.setInt(2, categoria.getID_categoria());
             int filasAfectadas = stmt.executeUpdate();
             return filasAfectadas > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}  