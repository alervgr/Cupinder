/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.util.List;
import modelos.Coincidencias;
import modelos.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author 34647
 */
public class DAO_coincidencias {

    Session s1;

    public DAO_coincidencias() {
    }

    public List<Coincidencias> buscarCoincidencias(int id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Coincidencias WHERE usuariosByUsuario1Id = " + id + " OR usuariosByUsuario2Id = " + id);
        List<Coincidencias> lista = (List<Coincidencias>) q.list();
        tx.commit();
        return lista;
    }

    public List<Coincidencias> buscarCoincidenciasOrd(int id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Coincidencias WHERE usuariosByUsuario1Id = " + id + " OR usuariosByUsuario2Id = " + id + " ORDER BY compatibilidad DESC");
        List<Coincidencias> lista = (List<Coincidencias>) q.list();
        tx.commit();
        return lista;
    }

    public Coincidencias buscarCoincidencia(int id, int idu) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        
        Query q = s1.createQuery("FROM Coincidencias WHERE (usuariosByUsuario1Id = " + idu + " AND usuariosByUsuario2Id = " + id + ") OR (usuariosByUsuario1Id = " + id + " AND usuariosByUsuario2Id = " + idu + ")");
        Coincidencias coincidencia = (Coincidencias) q.uniqueResult();
        tx.commit();
        return coincidencia;
    }

    public void updateCoincidencia(Coincidencias c) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.update(c);
        tx.commit();
    }

    public void crearCoincidencia(Coincidencias c) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.save(c);
        tx.commit();
    }

}
