/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import java.util.*;
import modelos.Intereses;
import modelos.UsuarioIntereses;
import modelos.Usuarios;
import org.apache.struts2.interceptor.validation.SkipValidation;
import persistencia.DAO_intereses;

/**
 *
 * @author victo
 */
public class adminInteresesAcciones extends ActionSupport {

    private final DAO_intereses dao_i;
    private String nombre;
    private List<Intereses> listaIntereses;
    private int idInteres;

    public adminInteresesAcciones() {
        this.dao_i = new DAO_intereses();
        this.listaIntereses = new ArrayList();

    }
    
    @SkipValidation
    public String execute() throws Exception {

        this.setListaIntereses(this.dao_i.listadoObjetosIntereses());
        return SUCCESS;
    }
    
    /* Creamos un nuevo interés
    Creamos un nuevo interés a partir del nombre que nos llega escrito por el
    usuario.
    */    
    public String crearInteres() throws Exception {
        Intereses i = new Intereses(this.getNombre());
        this.dao_i.nuevoInteres(i);
        this.setListaIntereses(this.dao_i.listadoObjetosIntereses());
        return SUCCESS;
    }
    
    /* Borrar un Interés
    Obtenemos el interes que desemos eliminar gracias a su id.
    Luego necesitamos una lista con todos aquellos usuario que estén asociados
    a ese interés y eliminamos uno a uno para que no haya dependencias.
    */
    
    @SkipValidation
    public String borrarInteres() throws Exception {

        Intereses interes = this.dao_i.obtenerInteresId(this.getIdInteres());
        List<UsuarioIntereses> ui = this.dao_i.getDependencias(this.getIdInteres());

        for (int i = 0; i < ui.size(); i++) {
            this.dao_i.borrarDependencia(ui.get(i));
        }
        this.dao_i.borrarInteres(interes);
        this.setListaIntereses(this.dao_i.listadoObjetosIntereses());
        return SUCCESS;
    }
    @SkipValidation
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    @SkipValidation
    public List<Intereses> getListaIntereses() {
        return listaIntereses;
    }
    @SkipValidation
    public void setListaIntereses(List<Intereses> listaIntereses) {
        this.listaIntereses = listaIntereses;
    }
    @SkipValidation
    public int getIdInteres() {
        return idInteres;
    }
    @SkipValidation
    public void setIdInteres(int idInteres) {
        this.idInteres = idInteres;
    }

    public void validate() {
        if (this.getNombre().equals("")) {
            //Primero va el nombre de la variable que nos ha dado error y luego el mensaje de error que queremos mandar
            addFieldError("nombre", getText("interes.relleno"));
        }
        if(exist(this.getNombre())) {
            addFieldError("nombre", getText("interes.existente"));
        }
        
        this.setListaIntereses(this.dao_i.listadoObjetosIntereses());
    }
    
    //Método para comprobar si ya existe un objeto en nuestra base de datos
    @SkipValidation
    public boolean exist(String n){
        List<String> listaIntereses = this.dao_i.listadoIntereses();
        return listaIntereses.contains(n);
    }

}
