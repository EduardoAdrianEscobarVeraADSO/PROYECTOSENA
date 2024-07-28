/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author eduar
 */
public class prendasModel {
    private int ID_prenda;
    private int ID_categoria;
    private String nombre_prenda;
    private String descripcion_prenda;
    private int stock_prenda;
    private int precio;
    private String imagen;

    public String getDescripcion_prenda() {
        return descripcion_prenda;
    }

    public void setDescripcion_prenda(String descripcion_prenda) {
        this.descripcion_prenda = descripcion_prenda;
    }

    public int getStock_prenda() {
        return stock_prenda;
    }

    public void setStock_prenda(int stock_prenda) {
        this.stock_prenda = stock_prenda;
    }
    
    
    public int getID_prenda() {
        return ID_prenda;
    }

    public void setID_prenda(int ID_prenda) {
        this.ID_prenda = ID_prenda;
    }

    public int getID_categoria() {
        return ID_categoria;
    }

    public void setID_categoria(int ID_categoria) {
        this.ID_categoria = ID_categoria;
    }

    public String getNombre_prenda() {
        return nombre_prenda;
    }

    public void setNombre_prenda(String nombre_prenda) {
        this.nombre_prenda = nombre_prenda;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
            		  
    
}
