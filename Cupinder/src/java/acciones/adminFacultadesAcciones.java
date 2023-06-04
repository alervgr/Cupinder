
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import modelos.Facultades;
import modelos.Usuarios;
import org.apache.struts2.interceptor.validation.SkipValidation;
import persistencia.DAO_facultades;
import persistencia.DAO_usuario;


public class adminFacultadesAcciones extends ActionSupport {

    private final DAO_facultades dao_f;
    private final DAO_usuario dao_u;
    private String nombre;
    private List<Facultades> listaFacultades;
    private int idFacultades;

    public adminFacultadesAcciones() {
        this.dao_f = new DAO_facultades();
        this.dao_u = new DAO_usuario();
        this.listaFacultades = new ArrayList();
    }

    
    public String crearFacultad() {
        Facultades f = new Facultades(this.getNombre());
        this.dao_f.crearFacultad(f);
        this.setListaFacultades(this.dao_f.listadoObjFacultades());
        return SUCCESS;
    }
    
    

    @SkipValidation
    public String borrarFacultad() {

        Facultades f = this.dao_f.getFacultadPorId(this.getIdFacultades());

        System.out.println("Seleccionamos listado de usuarios con esa facutlad");
        List<Usuarios> usuariosFacultad = this.dao_f.listadoUsuariosFacultad(this.getIdFacultades());

        for (int i = 0; i < usuariosFacultad.size(); i++) {
            usuariosFacultad.get(i).setFacultades(null);
            this.dao_u.actualizarUsuario(usuariosFacultad.get(i));
        }

        this.dao_f.borrarFacultad(f);

        this.setListaFacultades(this.dao_f.listadoObjFacultades());
        return SUCCESS;
    }

    @SkipValidation
    public String execute() throws Exception {

        System.out.println("Cargando listado de facultades");
        this.setListaFacultades(this.dao_f.listadoObjFacultades());

        return SUCCESS;
    }

    @SkipValidation
    public String getNombre() {
        return nombre;
    }

    @SkipValidation
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @SkipValidation
    public List<Facultades> getListaFacultades() {
        return listaFacultades;
    }

    @SkipValidation
    public void setListaFacultades(List<Facultades> listaFacultades) {
        this.listaFacultades = listaFacultades;
    }

    @SkipValidation
    public int getIdFacultades() {
        return idFacultades;
    }
    
    @SkipValidation
    public void setIdFacultades(int idFacultades) {
        this.idFacultades = idFacultades;
    }

    public void validate() {
        if (this.getNombre().equals("")) {
            //Primero va el nombre de la variable que nos ha dado error y luego el mensaje de error que queremos mandar
            addFieldError("nombre", getText("facultades.relleno"));
        }
        if (exist(this.getNombre())) {
            addFieldError("nombre", getText("facultades.existente"));
        }

        this.setListaFacultades(this.dao_f.listadoObjFacultades());
    }

    @SkipValidation
    public boolean exist(String n) {
        List<String> listaIntereses = this.dao_f.listadoFacultades();
        return listaIntereses.contains(n);
    }

}
