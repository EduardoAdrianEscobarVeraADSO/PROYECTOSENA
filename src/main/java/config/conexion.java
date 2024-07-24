package config;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Propietario
 */
public class conexion {
     // Variables para la conexión a la base de datos
    private static  final String url = "jdbc:mysql://localhost:3306/proyect";
    private static  final String usuario = "root";
    private static  final String contraseña = "";

    // Declarar una conexión
    public static Connection getConnection(){
        Connection conn = null;
    
    try {
        // Cargar el controlador JDBC
        Class.forName("com.mysql.jdbc.Driver");
        
        // Establecer la conexión
        conn = DriverManager.getConnection(url, usuario, contraseña);
        
        // Si la conexión se establece correctamente
        if (conn != null) {
            out.println("Conexión exitosa a la base de datos.");
        } else {
            out.println("Error al conectar con la base de datos.");
        }
    } catch (Exception e) {
        out.println("Error al conectar con la base de datos: " + e.getMessage());
    } 
        return conn;
    }
}


    
            