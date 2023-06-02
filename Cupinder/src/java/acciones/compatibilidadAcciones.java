/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import modelos.Chats;
import modelos.Coincidencias;
import modelos.Usuarios;
import org.apache.struts2.interceptor.validation.SkipValidation;
import persistencia.DAO_chat;
import persistencia.DAO_coincidencias;
import persistencia.DAO_intereses;
import persistencia.DAO_personalidades;
import persistencia.DAO_usuario;

/**
 *
 * @author 34647
 */
public class compatibilidadAcciones extends ActionSupport {

    private final DAO_intereses dao_i;
    private final DAO_personalidades dao_p;
    private final DAO_usuario dao_u;
    private final DAO_coincidencias dao_c;
    private final DAO_chat dao_chat;

    private String usuarioId;

    private List<String> lista_i1;
    private List<String> lista_i2;
    private List<String> lista_p1;
    private List<String> lista_p2;
    private List<Usuarios> lista_u;

    public compatibilidadAcciones() {
        dao_i = new DAO_intereses();
        dao_p = new DAO_personalidades();
        dao_u = new DAO_usuario();
        dao_c = new DAO_coincidencias();
        dao_chat = new DAO_chat();

        lista_i1 = new ArrayList();
        lista_i2 = new ArrayList();
        lista_p1 = new ArrayList();
        lista_p2 = new ArrayList();
        lista_u = new ArrayList();
    }

    public String execute() throws Exception {

        Map session = (Map) ActionContext.getContext().get("session");
        String email = (String) session.get("UsuarioRegistrado");

        Usuarios user = this.dao_u.obtenerUsuario(email);

        Coincidencias c;
        Boolean b = false;
        double numero_magico;

        lista_i1 = this.dao_i.interesesDelUsuario(user.getId());
        lista_p1 = this.dao_p.personalidadesDelUsuario(user.getId());
        lista_u = this.dao_u.listaUsuarios();
        lista_u.remove(lista_u.size() - 1);

        for (Usuarios user2 : lista_u) {

            lista_i2 = this.dao_i.interesesDelUsuario(user2.getId());
            lista_p2 = this.dao_p.personalidadesDelUsuario(user2.getId());
            numero_magico = calcularCompatibilidad(lista_i1, lista_i2, lista_p1, lista_p2);

            c = new Coincidencias(user, user2, numero_magico, new Date(), b, b);
            this.dao_c.crearCoincidencia(c);
        }

        return SUCCESS;
    }

    public String updateCoincidencias() {
        double numero_magico;

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");
        List<Coincidencias> lista = this.dao_c.buscarCoincidencias(user.getId());

        for (Coincidencias c : lista) {
            lista_i1 = this.dao_i.interesesDelUsuario(c.getUsuariosByUsuario1Id().getId());
            lista_p1 = this.dao_p.personalidadesDelUsuario(c.getUsuariosByUsuario1Id().getId());
            lista_i2 = this.dao_i.interesesDelUsuario(c.getUsuariosByUsuario2Id().getId());
            lista_p2 = this.dao_p.personalidadesDelUsuario(c.getUsuariosByUsuario2Id().getId());
            numero_magico = calcularCompatibilidad(lista_i1, lista_i2, lista_p1, lista_p2);
            c.setCompatibilidad(numero_magico);
            this.dao_c.updateCoincidencia(c);
        }

        return SUCCESS;
    }

    @SkipValidation
    public String darLike() {
        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");

        Coincidencias c = this.dao_c.buscarCoincidencia(Integer.parseInt(usuarioId), user.getId());

        if (c.getUsuariosByUsuario1Id().getId() == user.getId()) {
            c.setLikeUsuario1(true);
        } else {
            c.setLikeUsuario2(true);
        }
        
        this.dao_c.updateCoincidencia(c);

        boolean match = hayMatch(c);
        
        if (match) {

            Chats chat = new Chats(user, this.dao_u.obtenerUsuarioId(Integer.parseInt(usuarioId)));
            Chats chat2 = new Chats(this.dao_u.obtenerUsuarioId(Integer.parseInt(usuarioId)), user);

            this.dao_chat.crearChat(chat);
            this.dao_chat.crearChat(chat2);
            
            return "Match";
        }
        return "noMatch";
    }

    public boolean hayMatch(Coincidencias c) {

        boolean match = false;

        if (c.isLikeUsuario1() && c.isLikeUsuario2()) {
            match = true;
        }

        return match;
    }

    public List<String> getLista_i1() {
        return lista_i1;
    }

    public void setLista_i1(List<String> lista_i1) {
        this.lista_i1 = lista_i1;
    }

    public List<String> getLista_i2() {
        return lista_i2;
    }

    public void setLista_i2(List<String> lista_i2) {
        this.lista_i2 = lista_i2;
    }

    public List<String> getLista_p1() {
        return lista_p1;
    }

    public void setLista_p1(List<String> lista_p1) {
        this.lista_p1 = lista_p1;
    }

    public List<String> getLista_p2() {
        return lista_p2;
    }

    public void setLista_p2(List<String> lista_p2) {
        this.lista_p2 = lista_p2;
    }

    public List<Usuarios> getLista_u() {
        return lista_u;
    }

    public void setLista_u(List<Usuarios> lista_u) {
        this.lista_u = lista_u;
    }

    public String getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(String usuarioId) {
        this.usuarioId = usuarioId;
    }

    private static double calcularCompatibilidad(java.util.List<java.lang.String> listaInteresesU1, java.util.List<java.lang.String> listaInteresesU2, java.util.List<java.lang.String> listaPersonalidadesU1, java.util.List<java.lang.String> listaPersonalidadesU2) {
        Cliente.CalculadorCompatibilidad_Service service = new Cliente.CalculadorCompatibilidad_Service();
        Cliente.CalculadorCompatibilidad port = service.getCalculadorCompatibilidadPort();
        return port.calcularCompatibilidad(listaInteresesU1, listaInteresesU2, listaPersonalidadesU1, listaPersonalidadesU2);
    }

}
