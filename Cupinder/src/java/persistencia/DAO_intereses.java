package persistencia;

import java.util.List;
import modelos.HibernateUtil;
import modelos.Intereses;
import modelos.UsuarioIntereses;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class DAO_intereses {

    Session s1;

    public DAO_intereses() {
    }

    public List<String> listadoIntereses() {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("SELECT i.nombre FROM Intereses i");
        List lista = (List<String>) q.list();
        tx.commit();
        System.out.println(lista);
        return lista;
    }

    public void crearInteres(UsuarioIntereses interes) {
        
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.save(interes);
        tx.commit();
    }

    public Intereses obtenerInteres(String interes) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Intereses WHERE nombre = '" + interes + "'");
        Intereses i = (Intereses) q.uniqueResult();
        tx.commit();
        return i;
    }

}
