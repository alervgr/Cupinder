/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.util.List;
import modelos.HibernateUtil;
import modelos.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author victo
 */
public class DAO_usuario {

    Session s1;

    public DAO_usuario() {
    }

    public void registrarUsuario(Usuarios user) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.save(user);
        tx.commit();
    }

    public Usuarios obtenerUsuario(String correo) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();        
        String sql = "From Usuarios WHERE correo= '" + correo +"'";
        Query query = s1.createQuery(sql);
        Usuarios usuario = (Usuarios) query.uniqueResult();
        tx.commit();
        return usuario;
    }
    
    public void actualizarUsuario(Usuarios user) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.update(user);
        tx.commit();
    }
    
    
    
    

}
