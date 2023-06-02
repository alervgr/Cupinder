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
import modelos.Chats;
import modelos.Coincidencias;
import modelos.Usuarios;
import persistencia.DAO_chat;
import persistencia.DAO_coincidencias;
import persistencia.DAO_usuario;

/**
 *
 * @author alervgr
 */
public class parejasAcciones extends ActionSupport {

    private final DAO_coincidencias dao_c;
    private final DAO_usuario dao_u;
    private List<Usuarios> listaUsuariosC;
    private List<Usuarios> listaUsuariosM;
    private boolean matchPareja = false;

    public parejasAcciones() {
        dao_c = new DAO_coincidencias();
        dao_u = new DAO_usuario();
        listaUsuariosC = new ArrayList<>();
        listaUsuariosM = new ArrayList<>();
    }

    @Override
    public String execute() throws Exception {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");
        Usuarios aux;

        user = this.dao_u.obtenerUsuarioId(user.getId());

        List<Coincidencias> coincidenciasU = this.dao_c.buscarCoincidenciasOrd(user.getId());

        for (Coincidencias coincidencias : coincidenciasU) {

            if (user.getId() == coincidencias.getUsuariosByUsuario1Id().getId()) {

                if (!coincidencias.isLikeUsuario1()) {
                    aux = this.dao_u.obtenerUsuarioId(coincidencias.getUsuariosByUsuario2Id().getId());

                    if (user.getOrientacion().equals("Bisexual")) {
                        this.listaUsuariosC.add(aux);
                    } else if (user.getOrientacion().equals("Heterosexual") && !aux.getGenero().equals(user.getGenero())) {
                        this.listaUsuariosC.add(aux);
                    } else if (user.getOrientacion().equals("Homosexual") && aux.getGenero().equals(user.getGenero())) {
                        this.listaUsuariosC.add(aux);
                    }

                }

            } else {

                if (!coincidencias.isLikeUsuario2()) {
                    aux = this.dao_u.obtenerUsuarioId(coincidencias.getUsuariosByUsuario1Id().getId());
                    if (user.getOrientacion().equals("Bisexual")) {
                        this.listaUsuariosC.add(aux);
                    } else if (user.getOrientacion().equals("Heterosexual") && !aux.getGenero().equals(user.getGenero())) {
                        this.listaUsuariosC.add(aux);
                    } else if (user.getOrientacion().equals("Homosexual") && aux.getGenero().equals(user.getGenero())) {
                        this.listaUsuariosC.add(aux);
                    }
                }

            }

        }

        return SUCCESS;
    }

    public String match() throws Exception {

        this.setMatchPareja(true);
        execute();

        return SUCCESS;
    }

    public String verMatches() {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");
        Usuarios aux;

        user = this.dao_u.obtenerUsuarioId(user.getId());

        List<Coincidencias> coincidenciasU = this.dao_c.buscarCoincidenciasOrd(user.getId());

        for (Coincidencias coincidencias : coincidenciasU) {

            if (coincidencias.isLikeUsuario1() && coincidencias.isLikeUsuario2()) {

                if (user.getId() == coincidencias.getUsuariosByUsuario1Id().getId()) {
                    aux = this.dao_u.obtenerUsuarioId(coincidencias.getUsuariosByUsuario2Id().getId());
                    this.listaUsuariosM.add(aux);
                } else {
                    aux = this.dao_u.obtenerUsuarioId(coincidencias.getUsuariosByUsuario1Id().getId());
                    this.listaUsuariosM.add(aux);
                }
            }
        }

        return SUCCESS;
    }

    public List<Usuarios> getListaUsuariosC() {
        return listaUsuariosC;
    }

    public void setListaUsuariosC(List<Usuarios> listaUsuariosC) {
        this.listaUsuariosC = listaUsuariosC;
    }

    public boolean isMatchPareja() {
        return matchPareja;
    }

    public void setMatchPareja(boolean matchPareja) {
        this.matchPareja = matchPareja;
    }

    public List<Usuarios> getListaUsuariosM() {
        return listaUsuariosM;
    }

    public void setListaUsuariosM(List<Usuarios> listaUsuariosM) {
        this.listaUsuariosM = listaUsuariosM;
    }

}
