/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.util.List;
import modelos.HibernateUtil;
import modelos.TarjetasDeCredito;
import modelos.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author alervgr
 */
public class DAO_tarjeta {
    
    Session s1;

    public DAO_tarjeta() {
    }

    public void aniadirTarjeta(TarjetasDeCredito tarjeta) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.save(tarjeta);
        tx.commit();
    }

    public List<TarjetasDeCredito> obtenerTarjetasDeCredito(Integer id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        String sql = "From TarjetasDeCredito WHERE usuario_id='"+ id +"'";
        Query query = s1.createQuery(sql);
        List<TarjetasDeCredito> tarjetas = (List<TarjetasDeCredito>) query.list();
        tx.commit();
        return tarjetas;
    }

    public void borrarTarjeta(TarjetasDeCredito tarjeta) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.delete(tarjeta);
        tx.commit();
    }
    
    public void actualizarTarjeta(TarjetasDeCredito tarjeta) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.update(tarjeta);
        tx.commit();
    }
    
    
    public TarjetasDeCredito obtenerTarjeta(Integer id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        String sql = "From TarjetasDeCredito WHERE id_tarjeta='"+ id +"'";
        Query query = s1.createQuery(sql);
        TarjetasDeCredito tarjeta = (TarjetasDeCredito) query.uniqueResult();
        tx.commit();
        return tarjeta;
    }
    
    
    
    
}
