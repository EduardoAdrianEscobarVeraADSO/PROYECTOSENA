package config;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */


import java.sql.Connection;
import java.sql.SQLException;
/**
 *
 * @author Propietario
 */
public class Pruebaconexion {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            Connection conn = conexion.getConnection();
            if (conn != null) {
                System.out.println("conexion exitosa");
                conn.close();
            }
            else{
                System.out.println("conexion fallida");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}
