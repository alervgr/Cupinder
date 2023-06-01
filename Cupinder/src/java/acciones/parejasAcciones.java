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
import modelos.Coincidencias;
import modelos.Usuarios;
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

    public parejasAcciones() {
        dao_c = new DAO_coincidencias();
        dao_u = new DAO_usuario();
        listaUsuariosC = new ArrayList<>();
    }

    @Override
    public String execute() throws Exception {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");
        Usuarios aux;

        user = this.dao_u.obtenerUsuarioId(user.getId());

        System.out.println(user.getOrientacion());

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

    public List<Usuarios> getListaUsuariosC() {
        return listaUsuariosC;
    }

    public void setListaUsuariosC(List<Usuarios> listaUsuariosC) {
        this.listaUsuariosC = listaUsuariosC;
    }

}
