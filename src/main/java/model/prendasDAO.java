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
                // excepción o manejo del error
            }
        }
         public boolean agregarPrenda(prendasModel prenda) {
            String sql = "INSERT INTO prendas (nombre_prenda, ID_categoria, precio, descripcion_prenda, stock, imagen, talla) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement ps = conexion.prepareStatement(sql)) {
                ps.setString(1, prenda.getNombre_prenda());
                ps.setInt(2, prenda.getID_categoria());
                ps.setDouble(3, prenda.getPrecio());
                ps.setString(4, prenda.getDescripcion_prenda());
                ps.setInt(5, prenda.getStock_prenda());
                ps.setString(6, prenda.getImagen());
                ps.setString(7, prenda.getTalla());

                int filasAfectadas = ps.executeUpdate();
                return filasAfectadas > 0;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }


        /**
        * Actualiza una prenda en la base de datos.
        * 
        * @param prenda Objeto prendasModel con la información de la prenda
        * @return true si la prenda se ha actualizado exitosamente, false en caso contrario
        */
        public boolean actualizarPrenda(prendasModel prenda) {
            String sql = "UPDATE prendas SET nombre_prenda = ?, ID_categoria = ?, precio = ?, descripcion_prenda = ?, stock = ?, imagen = ?, talla = ? WHERE ID_prenda = ?";
            try (PreparedStatement ps = conexion.prepareStatement(sql)) {
                ps.setString(1, prenda.getNombre_prenda());
                ps.setInt(2, prenda.getID_categoria());
                ps.setDouble(3, prenda.getPrecio());
                ps.setString(4, prenda.getDescripcion_prenda());
                ps.setInt(5, prenda.getStock_prenda());
                ps.setString(6, prenda.getImagen());
                ps.setString(7, prenda.getTalla());
                ps.setInt(8, prenda.getID_prenda());

                int filasAfectadas = ps.executeUpdate();
                return filasAfectadas > 0;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }

       public List<prendasModel> obtenerTodasLasPrendas() {
            String sql = "SELECT ID_prenda, nombre_prenda, ID_categoria, precio, descripcion_prenda, stock, imagen, talla FROM prendas";
            List<prendasModel> prendas = new ArrayList<>();

            try (PreparedStatement ps = conexion.prepareStatement(sql);
                 ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {
                    int idPrenda = rs.getInt("ID_prenda");
                    String nombrePrenda = rs.getString("nombre_prenda");
                    int idCategoria = rs.getInt("ID_categoria");
                    double precio = rs.getDouble("precio");
                    String descripcion = rs.getString("descripcion_prenda");
                    int stock = rs.getInt("stock");
                    String imagen = rs.getString("imagen");
                    String talla = rs.getString("talla");

                    prendasModel prenda = new prendasModel();
                    prenda.setID_prenda(idPrenda);
                    prenda.setNombre_prenda(nombrePrenda);
                    prenda.setID_categoria(idCategoria);
                    prenda.setPrecio((int) precio);
                    prenda.setDescripcion_prenda(descripcion);
                    prenda.setStock_prenda(stock);
                    prenda.setImagen(imagen);
                    prenda.setTalla(talla);
                    prendas.add(prenda);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            return prendas;
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
                        prenda.setStock_prenda(rs.getInt("stock"));
                        prenda.setDescripcion_prenda(rs.getString("descripcion_prenda"));
                        prenda.setTalla(rs.getString("talla"));
                        prendas.add(prenda);
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            return prendas;
        }
        /**
        * Elimina una prenda de la base de datos por su ID.
        * 
        * @param prendaId ID de la prenda a eliminar
        */
       public void eliminarPrenda(int prendaId) {
           String sql = "DELETE FROM prendas WHERE ID_prenda = ?";

           try (PreparedStatement stmt = conexion.prepareStatement(sql)) {
               stmt.setInt(1, prendaId);
               stmt.executeUpdate();
           } catch (SQLException e) {
               e.printStackTrace();
           }
       }
       public prendasModel obtenerPrendaPorID(int idPrenda) {
            String sql = "SELECT * FROM prendas WHERE ID_prenda = ?";
            prendasModel prenda = null;

            try (PreparedStatement ps = conexion.prepareStatement(sql)) {
                ps.setInt(1, idPrenda);
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        prenda = new prendasModel();
                        prenda.setID_prenda(rs.getInt("ID_prenda"));
                        prenda.setID_categoria(rs.getInt("ID_categoria"));
                        prenda.setNombre_prenda(rs.getString("nombre_prenda"));
                        prenda.setPrecio(rs.getInt("precio"));
                        prenda.setImagen(rs.getString("imagen"));
                        prenda.setDescripcion_prenda(rs.getString("descripcion"));
                        prenda.setStock_prenda(rs.getInt("stock"));
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            return prenda;
        }
       public boolean actualizarStock(int idPrenda, int cantidad) {
            String sql = "UPDATE prendas SET stock = stock - ? WHERE ID_prenda = ?";
            try (PreparedStatement ps = conexion.prepareStatement(sql)) {
                ps.setInt(1, cantidad);
                ps.setInt(2, idPrenda);

                int filasAfectadas = ps.executeUpdate();
                return filasAfectadas > 0;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }


    }


