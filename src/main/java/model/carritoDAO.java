package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class carritoDAO {

    private final Connection conexion;

    public carritoDAO() {
        this.conexion = config.conexion.getConnection();
    }

    // Método para crear un nuevo carrito
    public int crearCarrito(int idUsuario) {
        String sql = "INSERT INTO carritocompras (ID_usuario) VALUES (?)";
        try (PreparedStatement ps = conexion.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
            ps.setInt(1, idUsuario);

            int filasAfectadas = ps.executeUpdate();
            if (filasAfectadas > 0) {
                try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        return generatedKeys.getInt(1); // Retorna el ID del carrito creado
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1; // Indica que la creación falló
    }

    // Método para agregar artículos al carrito
    public boolean agregarAlCarrito(int idCarrito, int idPrenda, int cantidad) {
        String sql = "INSERT INTO carrito_prendas (ID_carrito, ID_prenda, cantidad) VALUES (?, ?, ?)";
        try (PreparedStatement ps = conexion.prepareStatement(sql)) {
            ps.setInt(1, idCarrito);
            ps.setInt(2, idPrenda);
            ps.setInt(3, cantidad);

            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Método para obtener el carrito y sus productos por usuario
    public List<carritocomprasModel> obtenerCarritoPorUsuario(int idUsuario) {
        String sql = "SELECT c.ID_carrito, c.ID_usuario, p.ID_prenda, cp.cantidad " +
                     "FROM carritocompras c " +
                     "JOIN carrito_prendas cp ON c.ID_carrito = cp.ID_carrito " +
                     "JOIN prendas p ON cp.ID_prenda = p.ID_prenda " +
                     "WHERE c.ID_usuario = ?";
        List<carritocomprasModel> itemsCarrito = new ArrayList<>();

        try (PreparedStatement ps = conexion.prepareStatement(sql)) {
            ps.setInt(1, idUsuario);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    carritocomprasModel item = new carritocomprasModel();
                    item.setID_carrito(rs.getInt("ID_carrito"));
                    item.setID_usuario(rs.getInt("ID_usuario"));
                    item.setID_prenda(rs.getInt("ID_prenda"));
                    item.setCantidad(rs.getInt("cantidad"));
                    itemsCarrito.add(item);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return itemsCarrito;
    }
    // Método para eliminar un artículo del carrito
    public boolean eliminarDelCarrito(int idCarrito, int idPrenda) {
        String sql = "DELETE FROM carrito_prendas WHERE ID_carrito = ? AND ID_prenda = ?";
        try (PreparedStatement ps = conexion.prepareStatement(sql)) {
            ps.setInt(1, idCarrito);
            ps.setInt(2, idPrenda);
            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }


}
