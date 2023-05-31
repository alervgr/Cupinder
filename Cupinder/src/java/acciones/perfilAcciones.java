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
import persistencia.DAO_facultades;
import persistencia.DAO_tarjeta;
import persistencia.DAO_usuario;

public class perfilAcciones extends ActionSupport {
    
    private final DAO_facultades dao_f;
    private final DAO_tarjeta dao_t;
    private final DAO_usuario dao_u;
    private List<String> facultades;
    private List<TarjetasDeCredito> tarjetasUsuario;
    private String fac;
    
    public perfilAcciones() {
        dao_f = new DAO_facultades();
        dao_t = new DAO_tarjeta();
        dao_u = new DAO_usuario();
        facultades = new ArrayList();
        tarjetasUsuario = new ArrayList();
    }
    
    public String execute() throws Exception {
        
        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");
        System.out.println(user.getNombre());
        System.out.println(user.getId());
        
        
        
        this.setFac(dao_f.getFacultadId(user.getId()));
        
        this.setFacultades(this.dao_f.listadoFacultades());
        this.setTarjetasUsuario(this.dao_t.obtenerTarjetasDeCredito(user.getId()));
        
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
    
}
