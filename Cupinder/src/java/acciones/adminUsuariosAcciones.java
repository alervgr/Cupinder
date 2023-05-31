/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import modelos.Usuarios;
import persistencia.DAO_usuario;

/**
 *
 * @author victo
 */
public class adminUsuariosAcciones extends ActionSupport {
    
    private final DAO_usuario dao_u;
    private List<Usuarios> listaUsuarios;
    
    public adminUsuariosAcciones() {
        listaUsuarios = new ArrayList();
        dao_u = new DAO_usuario();
    }
    
    public String execute() throws Exception {
        
        this.setListaUsuarios(this.dao_u.listaUsuarios());
        
        return SUCCESS;
    }

    public List<Usuarios> getListaUsuarios() {
        return listaUsuarios;
    }

    public void setListaUsuarios(List<Usuarios> listaUsuarios) {
        this.listaUsuarios = listaUsuarios;
    }
    
}
