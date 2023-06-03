/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import modelos.Facultades;
import persistencia.DAO_facultades;

/**
 *
 * @author victo
 */
public class adminFacultadesAcciones extends ActionSupport {

    private final DAO_facultades dao_f;
    private String nombre;
    private List<Facultades> listaFacultades;
    private int idFacultades;

    public adminFacultadesAcciones() {
        this.dao_f = new DAO_facultades();
        this.listaFacultades = new ArrayList();
    }

    public String crearFacultad() {
        Facultades f = new Facultades(this.getNombre());
        this.dao_f.crearFacultad(f);
        this.setListaFacultades(this.dao_f.listadoObjFacultades());
        return SUCCESS;
    }

    public String borrarFacultad() {
        
        this.setListaFacultades(this.dao_f.listadoObjFacultades());
        return SUCCESS;
    }

    public String execute() throws Exception {

        this.setListaFacultades(this.dao_f.listadoObjFacultades());

        return SUCCESS;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public List<Facultades> getListaFacultades() {
        return listaFacultades;
    }

    public void setListaFacultades(List<Facultades> listaFacultades) {
        this.listaFacultades = listaFacultades;
    }

    public int getIdFacultades() {
        return idFacultades;
    }

    public void setIdFacultades(int idFacultades) {
        this.idFacultades = idFacultades;
    }

}
