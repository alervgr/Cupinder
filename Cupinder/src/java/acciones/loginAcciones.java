
package acciones;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelos.Usuarios;
import persistencia.DAO_login;


public class loginAcciones extends ActionSupport {
    
    public String correo;
    public String password;
    public DAO_login dao;
    public Usuarios usuario;
    
    public loginAcciones() {
        dao = new DAO_login();
        usuario = new Usuarios();
    }
    
    public String execute() throws Exception {
        
        String u;
        
        u = this.dao.comprobarLogin(this.getCorreo(), this.getPassword());
        
        System.out.println(u);
        
        if (u == null) {
            return ERROR;
        } else {
            Map session = (Map) ActionContext.getContext().get("session");
            session.put("user", u);
        }
        
        return SUCCESS;
        
        
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public DAO_login getDao() {
        return dao;
    }

    public void setDao(DAO_login dao) {
        this.dao = dao;
    }

    public Usuarios getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuarios usuario) {
        this.usuario = usuario;
    }
    
}
