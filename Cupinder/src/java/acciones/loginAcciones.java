package acciones;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelos.Usuarios;
import org.apache.struts2.interceptor.validation.SkipValidation;
import persistencia.DAO_login;

public class loginAcciones extends ActionSupport {

    private String correo;
    private String password;
    private final DAO_login dao;
    private Usuarios usuario;

    public loginAcciones() {
        this.dao = new DAO_login();
    }

    @Override
    public void validate() {

        if (0 == this.getCorreo().length() || null == this.getCorreo()) {
            addFieldError("correo", getText("correo.relleno"));
        }
        if (0 == this.getPassword().length() || null == this.getPassword()) {
            addFieldError("password", getText("contrasenia.rellena"));
        }

    }

    public String execute() throws Exception {
        this.usuario = new Usuarios();
        this.usuario = this.dao.comprobarLogin(this.getCorreo(), this.getPassword());

        if (this.usuario == null) {
            return ERROR;
        } else {
            Map session = (Map) ActionContext.getContext().get("session");
            session.put("user", this.usuario);
        }

        return SUCCESS;

    }

    @SkipValidation
    public String logout() {
        Map session = (Map) ActionContext.getContext().get("session");
        session.remove("user");

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

    public Usuarios getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuarios usuario) {
        this.usuario = usuario;
    }

}
