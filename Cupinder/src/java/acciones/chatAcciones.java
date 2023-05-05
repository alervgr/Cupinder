package acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import modelos.Chats;
import modelos.Mensajes;
import modelos.Usuarios;
import org.apache.struts2.interceptor.validation.SkipValidation;
import persistencia.DAO_chat;

public class chatAcciones extends ActionSupport {

    private final DAO_chat dao;
    private List<Mensajes> mensajesChat;
    private List<Usuarios> usuariosConChat;
    private String mensajito;
    private int destinatarioId;
    private Usuarios usuarioDestinatario;

    public chatAcciones() {
        dao = new DAO_chat();
        mensajesChat = new ArrayList<>();
        usuariosConChat = new ArrayList<>();
    }

    @Override
    public String execute() throws Exception {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios usuario = (Usuarios) session.get("user");
        this.usuariosConChat = dao.listadoChatsUsuario(usuario.getId());

        return SUCCESS;

    }

    public String mostrarMensajesChat() {
        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios usuario = (Usuarios) session.get("user");
        this.setUsuarioDestinatario(this.dao.obtenerUsuario(this.getDestinatarioId()));
        session.put("destinatarioId", destinatarioId);
        this.destinatarioId = (int) session.get("destinatarioId");

        
        this.mensajesChat = dao.listaMensajes(usuario.getId(), destinatarioId);
        this.usuariosConChat = dao.listadoChatsUsuario(usuario.getId());

        return SUCCESS;
    }

    public String enviarMensaje() {
        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios usuario = (Usuarios) session.get("user");
        this.destinatarioId = (int) session.get("destinatarioId");

        this.setUsuarioDestinatario(this.dao.obtenerUsuario(this.getDestinatarioId()));

        Mensajes nuevoMensaje = new Mensajes(usuario, usuarioDestinatario, this.mensajito, new Date());

        this.dao.enviarMensaje(nuevoMensaje);

        this.usuariosConChat = dao.listadoChatsUsuario(usuario.getId());

        this.mensajesChat = dao.listaMensajes(usuario.getId(), this.getDestinatarioId());

        return SUCCESS;
    }

    public List<Usuarios> getUsuariosConChat() {
        return usuariosConChat;
    }

    public void setUsuariosConChat(List<Usuarios> usuariosConChat) {
        this.usuariosConChat = usuariosConChat;
    }

    public List<Mensajes> getMensajesChat() {
        return mensajesChat;
    }

    public void setMensajesChat(List<Mensajes> mensajesChat) {
        this.mensajesChat = mensajesChat;
    }

    public int getDestinatarioId() {
        return destinatarioId;
    }

    public void setDestinatarioId(int destinatarioId) {
        this.destinatarioId = destinatarioId;
    }

    public String getMensajito() {
        return mensajito;
    }

    public void setMensajito(String mensajito) {
        this.mensajito = mensajito;
    }

    public Usuarios getUsuarioDestinatario() {
        return usuarioDestinatario;
    }

    public void setUsuarioDestinatario(Usuarios usuarioDestinatario) {
        this.usuarioDestinatario = usuarioDestinatario;
    }

}
