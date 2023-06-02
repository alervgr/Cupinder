/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import modelos.Facultades;
import modelos.TarjetasDeCredito;
import modelos.Usuarios;
import org.apache.struts2.interceptor.validation.SkipValidation;
import persistencia.DAO_facultades;
import persistencia.DAO_tarjeta;
import persistencia.DAO_usuario;

public class perfilAcciones extends ActionSupport {

    private final DAO_facultades dao_f;
    private final DAO_tarjeta dao_t;
    private final DAO_usuario dao_u;

    private String passwordConfirm;
    private String password;
    private String email;
    private String dni;
    private String orientacion;
    private String facultad;
    private String ocupacion;
    private String idioma;
    private String bio;
    private String edad;
    
    private Usuarios u;
    private int usuarioId;
    
    private List<String> facultades;
    private List<TarjetasDeCredito> tarjetasUsuario;
    private String fac;

    public perfilAcciones() {
        dao_f = new DAO_facultades();
        dao_t = new DAO_tarjeta();
        dao_u = new DAO_usuario();
        facultades = new ArrayList();
        tarjetasUsuario = new ArrayList();
        u = new Usuarios();
    }

    public void validate() {

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

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");
        this.setFac(dao_f.getFacultadId(user.getId()));

        this.setFacultades(this.dao_f.listadoFacultades());
        this.setTarjetasUsuario(this.dao_t.obtenerTarjetasDeCredito(user.getId()));

    }

    @SkipValidation
    public String execute() throws Exception {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");

        this.setFac(dao_f.getFacultadId(user.getId()));

        this.setFacultades(this.dao_f.listadoFacultades());
        this.setTarjetasUsuario(this.dao_t.obtenerTarjetasDeCredito(user.getId()));

        return SUCCESS;
    }

    public String actualizar() {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");
        Facultades facultad = this.dao_f.getFacultadNombre(this.getFacultad());

        user.setCorreo(this.getEmail());
        
        
        if(this.getDni().equals("")){
            user.setDni(null);
        }else{
            user.setDni(this.getDni());
        }
        
        
        user.setEdad(Integer.parseInt(this.getEdad()));
        user.setFacultades(facultad);
        user.setIdioma(this.getIdioma());
        user.setOcupacion(this.getOcupacion());
        user.setOrientacion(this.getOrientacion());
        user.setBiografia(this.getBio());
        user.setPassword(this.getPassword());

        this.dao_u.actualizarUsuario(user);

        session.replace("user", user);

        return SUCCESS;
    }
    
    @SkipValidation
    public String cargarPerfil(){
        
        this.setU(this.dao_u.obtenerUsuarioId(this.getUsuarioId()));
        
        this.setFac(dao_f.getFacultadId(this.getUsuarioId()));
        
        return SUCCESS;
    }

    public List<String> getFacultades() {
        return facultades;
    }

    public void setFacultades(List<String> facultades) {
        this.facultades = facultades;
    }

    public List<TarjetasDeCredito> getTarjetasUsuario() {
        return tarjetasUsuario;
    }

    public void setTarjetasUsuario(List<TarjetasDeCredito> tarjetasUsuario) {
        this.tarjetasUsuario = tarjetasUsuario;
    }

    public String getFac() {
        return fac;
    }

    public void setFac(String fac) {
        this.fac = fac;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
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

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public Usuarios getU() {
        return u;
    }

    public void setU(Usuarios u) {
        this.u = u;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

}
