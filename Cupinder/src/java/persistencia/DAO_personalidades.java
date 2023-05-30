/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import modelos.Facultades;
import modelos.HibernateUtil;
import modelos.Personalidades;
import modelos.UsuarioPersonalidades;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author alervgr
 */
public class DAO_personalidades {

    Session s1;

    public DAO_personalidades() {
    }

    public Personalidades getPersonalidadNombre(String personalidad) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Personalidades WHERE nombre = '" + personalidad + "'");
        Personalidades personalid = (Personalidades) q.uniqueResult();
        tx.commit();
        return personalid;
    }

    public void cargarPersonalidad(UsuarioPersonalidades userPer) {
        
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.save(userPer);
        tx.commit();
        
    }

}
