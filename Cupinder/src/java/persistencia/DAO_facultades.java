
package persistencia;

import java.util.List;
import modelos.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class DAO_facultades {
    Session s1;

    public DAO_facultades() {
    }

    public List<String> listadoFacultades(){
        s1=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=s1.beginTransaction();
        Query q=s1.createQuery("SELECT nombre FROM Facultades");
        List lista=(List<String>)q.list();
        tx.commit();
        System.out.println(lista);
        return lista;
    }

}