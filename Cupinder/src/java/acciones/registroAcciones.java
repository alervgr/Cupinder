/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import modelos.Intereses;
import persistencia.DAO_intereses;

/**
 *
 * @author 34647
 */
public class registroAcciones extends ActionSupport {
    
    private final DAO_intereses dao;
    private List<String> intereses;
    
    public registroAcciones() {
        dao = new DAO_intereses();
        intereses = new ArrayList<>();
    }
    
    public String execute() throws Exception {
        
        this.intereses = this.dao.listadoIntereses();
        
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
    
}
