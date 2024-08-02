package model;

public class carritocomprasModel {
    private int ID_carrito;
    private int ID_usuario;
    private int ID_prenda;
    private int cantidad;

    // Getters y Setters

    public int getID_carrito() {
        return ID_carrito;
    }

    public void setID_carrito(int ID_carrito) {
        this.ID_carrito = ID_carrito;
    }

    public int getID_usuario() {
        return ID_usuario;
    }

    public void setID_usuario(int ID_usuario) {
        this.ID_usuario = ID_usuario;
    }

    public int getID_prenda() {
        return ID_prenda;
    }

    public void setID_prenda(int ID_prenda) {
        this.ID_prenda = ID_prenda;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
}
