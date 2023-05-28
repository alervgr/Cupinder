/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import modelos.Intereses;
import org.apache.struts2.interceptor.validation.SkipValidation;
import persistencia.DAO_facultades;
import persistencia.DAO_intereses;

public class registroAcciones extends ActionSupport {

    private final DAO_intereses dao;
    private final DAO_facultades dao_f;
    private String nombre;
    private String apellidos;
    private String usuario;
    private String passwordConfirm;
    private String password;
    private String email;
    private String sexo;
    private String orientacion;
    private String facultad;
    private String ocupacion;
    private String idioma;
    private String bio;
    private String edad;
    private File image;
    private String imageContentType;
    private String imageFileName;
    private List<String> intereses;
    private List<String> facultades;

    public registroAcciones() {
        dao = new DAO_intereses();
        dao_f = new DAO_facultades();
        intereses = new ArrayList<>();
        facultades = new ArrayList<>();
    }

    public List<String> getFacultades() {
        return facultades;
    }

    public void setFacultades(List<String> facultades) {
        this.facultades = facultades;
    }

    public void validate() {

        if (0 == this.getNombre().length() || null == this.getNombre()) {
            addFieldError("nombre", getText("nombre.relleno"));
        }
        if (0 == this.getApellidos().length() || null == this.getApellidos()) {
            addFieldError("apellidos", getText("apellido.relleno"));
        }
        if (0 == this.getUsuario().length() || null == this.getUsuario()) {
            addFieldError("usuario", getText("usuario.relleno"));
        }
        if (0 == this.getSexo().length() || null == this.getSexo()) {
            addFieldError("sexo", getText("sexo.relleno"));
        }
        if (0 == this.getEmail().length() || null == this.getEmail()) {
            addFieldError("correo", getText("correo.relleno"));
        }
        if (0 == this.getPassword().length() || null == this.getPassword()) {
            addFieldError("password", getText("contrasenia.rellena"));
        } else if (0 == this.getPasswordConfirm().length() || null == this.getPasswordConfirm()) {
            addFieldError("passwordConfirm", getText("contrasenia.rellena"));
        } else if (!this.getPassword().equals(this.getPasswordConfirm())) {
            addFieldError("passwordConfirm", getText("contrasenia.diferente"));
        }
        if (0 == this.getOrientacion().length() || null == this.getOrientacion()) {
            addFieldError("orientacion", getText("orientacion.rellena"));
        }
        if (0 == this.getFacultad().length() || null == this.getFacultad()) {
            addFieldError("facultad", getText("facultad.rellena"));
        }
        if (0 == this.getOcupacion().length() || null == this.getOcupacion()) {
            addFieldError("ocupacion", getText("ocupacion.rellena"));
        }
        if (0 == this.getIdioma().length() || null == this.getIdioma()) {
            addFieldError("idioma", getText("idioma.relleno"));
        }
        if (0 == this.getEdad().length() || null == this.getEdad()) {
            addFieldError("edad", getText("edad.rellena"));
        }
        if (this.getImageFileName() == null || this.getImageFileName().equals("")) {
            addFieldError("image", "Debe seleccionar una imagen");
        } else {
            if (!this.getImageFileName().substring(this.getImageFileName().lastIndexOf(".")).equals(".jpeg")
                    && !this.getImageFileName().substring(this.getImageFileName().lastIndexOf(".")).equals(".png")
                    && !this.getImageFileName().substring(this.getImageFileName().lastIndexOf(".")).equals(".jpg")) {
                addFieldError("image", "Formato no válido, debe ser jpeg, jpg o png");
            }
        }

    }

    public String execute() throws Exception {

        this.intereses = this.dao.listadoIntereses();

        return SUCCESS;
    }
    
    @SkipValidation
    public String cargarFacultades(){
        this.setFacultades(this.dao_f.listadoFacultades());
        return SUCCESS;
    }
    
    public DAO_intereses getDao() {
        return dao;
    }

    public List<String> getIntereses() {
        return intereses;
    }

    public void setIntereses(List<String> intereses) {
        this.intereses = intereses;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getOrientacion() {
        return orientacion;
    }

    public void setOrientacion(String orientacion) {
        this.orientacion = orientacion;
    }

    public String getFacultad() {
        return facultad;
    }

    public void setFacultad(String facultad) {
        this.facultad = facultad;
    }

    public String getOcupacion() {
        return ocupacion;
    }

    public void setOcupacion(String ocupacion) {
        this.ocupacion = ocupacion;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public File getImage() {
        return image;
    }

    public void setImage(File image) {
        this.image = image;
    }

    public String getImageContentType() {
        return imageContentType;
    }

    public void setImageContentType(String imageContentType) {
        this.imageContentType = imageContentType;
    }

    public String getImageFileName() {
        return imageFileName;
    }

    public void setImageFileName(String imageFileName) {
        this.imageFileName = imageFileName;
    }

    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

}
