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
import modelos.Personalidades;
import modelos.UsuarioIntereses;
import modelos.UsuarioPersonalidades;
import modelos.Usuarios;
import persistencia.DAO_intereses;
import persistencia.DAO_personalidades;
import persistencia.DAO_usuario;

/**
 *
 * @author victo
 */
public class testAcciones extends ActionSupport {

    private final DAO_usuario dao_u;
    private final DAO_intereses dao_i;
    private final DAO_personalidades dao_p;
    private String color;
    private String animal;
    private String lugar;
    private String reflejo;
    private String cita;
    private List<String> interesesSeleccionados;
    private List<String> intereses;

    public testAcciones() {
        dao_u = new DAO_usuario();
        dao_i = new DAO_intereses();
        dao_p = new DAO_personalidades();
        interesesSeleccionados = new ArrayList();
    }
    
    /* Creamos las asociaciones entre el usuario y el interés
    Obtenemos el usuario a partir de su correo.
    Asociamos un interés a usuario a partir de los que haya seleccionado
    en el formulario.
    Por último actualizamos el usuario.
    */
    public String execute() throws Exception {

        UsuarioIntereses userInt;

        Map session = (Map) ActionContext.getContext().get("session");
        String correo = (String) session.get("UsuarioRegistrado");

        Usuarios user = this.dao_u.obtenerUsuario(correo);

        for (int i = 0; i < this.getInteresesSeleccionados().size(); i++) {
            userInt = new UsuarioIntereses(this.dao_i.obtenerInteres(this.getInteresesSeleccionados().get(i)), user);
            this.dao_i.crearInteres(userInt);
        }

        cargarPersonalidad(user);

        this.dao_u.actualizarUsuario(user);

        return SUCCESS;
    }

    public String cargarTest(){
        
        this.intereses = this.dao_i.listadoIntereses();
        
        return SUCCESS;
    }
    
    /*
    Obtenemos los intereses del usuario activo mediante la id,al igual
    que las persoanlidades.
    Eliminamos uno a uno los intereses y las personalidades para luego 
    tener en cuenta los cambios en el formulario.
    Actualizamos el usuario con las nuevas respuestas ya guardadas.
    */
    public String updateTest(){
        
        UsuarioIntereses userInt;

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");

        List<UsuarioIntereses> listaUI = this.dao_i.obtenerUsuarioIntereses(user.getId());
        List<UsuarioPersonalidades> listaUP = this.dao_p.obtenerUsuarioPersonalidades(user.getId());
        
        for (int i = listaUI.size() - 1; i >= 0; i--) {
            this.dao_i.borrarUsuarioInteres(listaUI.get(i));
        }
        
        for (int i = listaUP.size() - 1; i >= 0; i--) {
            this.dao_p.borrarUsuarioPersonalidades(listaUP.get(i));
        }
        
        for (int i = 0; i < this.getInteresesSeleccionados().size(); i++) {
            userInt = new UsuarioIntereses(this.dao_i.obtenerInteres(this.getInteresesSeleccionados().get(i)), user);
            this.dao_i.crearInteres(userInt);
        }

        cargarPersonalidad(user);

        this.dao_u.actualizarUsuario(user);
        
        return SUCCESS;
    }
    
    /*Interpretar las respuestas del usuario
    Damos significados a las respuestas del usuario y las vamos registrando en la 
    base de datos. Creando las asociaciones entre las personalidades y los usuarios.
    */
    public void cargarPersonalidad(Usuarios user) {

        UsuarioPersonalidades userPer;
        Personalidades person = null;

        if (this.getColor().equals("Rojo") || this.getColor().equals("Amarillo")) {

            person = this.dao_p.getPersonalidadNombre("Alegre");

        } else {
            person = this.dao_p.getPersonalidadNombre("Serio");
        }
        userPer = new UsuarioPersonalidades(person, user);

        this.dao_p.cargarPersonalidad(userPer);

        if (this.getAnimal().equals("Elefante") || this.getAnimal().equals("Perro")) {
            person = this.dao_p.getPersonalidadNombre("Sumiso");
        } else {
            person = this.dao_p.getPersonalidadNombre("Dominante");
        }
        userPer = new UsuarioPersonalidades(person, user);

        this.dao_p.cargarPersonalidad(userPer);

        if (this.getCita().equals("¡Salir de fiesta!") || this.getCita().equals("Escape Room / Salón de recreativos")) {
            person = this.dao_p.getPersonalidadNombre("Creativo");
        } else {
            person = this.dao_p.getPersonalidadNombre("Responsable");
        }
        userPer = new UsuarioPersonalidades(person, user);

        this.dao_p.cargarPersonalidad(userPer);

        if (this.getLugar().equals("Playa") || this.getLugar().equals("Ciudad")) {
            person = this.dao_p.getPersonalidadNombre("Extrovertido");
        } else {
            person = this.dao_p.getPersonalidadNombre("Introvertido");
        }
        userPer = new UsuarioPersonalidades(person, user);

        this.dao_p.cargarPersonalidad(userPer);

        if (this.getReflejo().equals("Me miro") || this.getReflejo().equals("Me peino")) {
            person = this.dao_p.getPersonalidadNombre("Dubitativo");
        } else {
            person = this.dao_p.getPersonalidadNombre("Seguro");
        }
        userPer = new UsuarioPersonalidades(person, user);

        this.dao_p.cargarPersonalidad(userPer);

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

    public List<String> getIntereses() {
        return intereses;
    }

    public void setIntereses(List<String> intereses) {
        this.intereses = intereses;
    }

}
