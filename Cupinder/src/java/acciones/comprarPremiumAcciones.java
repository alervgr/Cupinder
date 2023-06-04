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
import modelos.TarjetasDeCredito;
import modelos.Usuarios;
import org.apache.struts2.interceptor.validation.SkipValidation;
import persistencia.DAO_tarjeta;
import persistencia.DAO_usuario;

/**
 *
 * @author victo
 */

public class comprarPremiumAcciones extends ActionSupport {

    private final DAO_tarjeta dao_t;
    private final DAO_usuario dao_u;
    private String card;
    private List<TarjetasDeCredito> listaTarjetas;

    
    public comprarPremiumAcciones() {
        this.dao_t = new DAO_tarjeta();
        this.dao_u = new DAO_usuario();
        this.listaTarjetas = new ArrayList();
    }
    
    /*
    Cargamos el listado de tarjetas de nuestro usuario activo
    y enviamos error si no tiene tarjetas para redireccionar.
    */
    public String execute() throws Exception {
        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");
        this.setListaTarjetas(this.dao_t.obtenerTarjetasDeCredito(user.getId()));
        
        if(this.listaTarjetas.isEmpty()){
            return ERROR;
        }
        
        return SUCCESS;
    }
    
    //Una vez comprado actualizamos el usuario con el rol Premium
    public String comprado() throws Exception {
        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");

        user.setRol("Premium");

        this.dao_u.actualizarUsuario(user);

        return SUCCESS;
    }

    @SkipValidation
    public List<TarjetasDeCredito> getListaTarjetas() {
        return listaTarjetas;
    }

    @SkipValidation
    public void setListaTarjetas(List<TarjetasDeCredito> listaTarjetas) {
        this.listaTarjetas = listaTarjetas;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

}
