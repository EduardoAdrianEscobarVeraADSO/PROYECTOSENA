package model;

public class usuarioadminModel {
    private int id;
    private String nombre;
    private String correo;
    private String contraseña;
    private int id_rol_fk;

    public usuarioadminModel() {}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public int getId_rol_fk() {
        return id_rol_fk;
    }

    public void setId_rol_fk(int id_rol_fk) {
        this.id_rol_fk = id_rol_fk;
    }
}
