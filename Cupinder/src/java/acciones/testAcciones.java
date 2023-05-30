/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import modelos.Intereses;
import modelos.UsuarioIntereses;
import modelos.Usuarios;
import persistencia.DAO_intereses;
import persistencia.DAO_usuario;

/**
 *
 * @author victo
 */


public class testAcciones extends ActionSupport {

    private final DAO_usuario dao_u;
    private final DAO_intereses dao_i;
    private String color;
    private String animal;
    private String lugar;
    private String reflejo;
    private String cita;
    private List<String> interesesSeleccionados;

    public testAcciones() {
        dao_u = new DAO_usuario();
        dao_i = new DAO_intereses();
        interesesSeleccionados = new ArrayList();
    }

    public String execute() throws Exception {

        UsuarioIntereses userInt;
        
        
        Map session = (Map) ActionContext.getContext().get("session");
        String correo = (String)session.get("UsuarioRegistrado");
        
        Usuarios user = this.dao_u.obtenerUsuario(correo);                
        
        for (int i = 0; i < this.getInteresesSeleccionados().size(); i++) {
            userInt = new UsuarioIntereses(this.dao_i.obtenerInteres(this.getInteresesSeleccionados().get(i)), user);
            System.out.println(userInt.getIntereses().getNombre());
            System.out.println(userInt.getUsuarios().getNombre());
            this.dao_i.crearInteres(userInt);            
        }                
        
        this.dao_u.actualizarUsuario(user);        
        
        return SUCCESS;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getAnimal() {
        return animal;
    }

    public void setAnimal(String animal) {
        this.animal = animal;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public String getReflejo() {
        return reflejo;
    }

    public void setReflejo(String reflejo) {
        this.reflejo = reflejo;
    }

    public String getCita() {
        return cita;
    }

    public void setCita(String cita) {
        this.cita = cita;
    }

    public List<String> getInteresesSeleccionados() {
        return interesesSeleccionados;
    }

    public void setInteresesSeleccionados(List<String> interesesSeleccionados) {
        this.interesesSeleccionados = interesesSeleccionados;
    }
    
    

}
