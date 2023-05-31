package persistencia;

import java.util.List;
import modelos.Facultades;
import modelos.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class DAO_facultades {

    Session s1;

    public DAO_facultades() {
    }

    public List<String> listadoFacultades() {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("SELECT nombre FROM Facultades");
        List lista = (List<String>) q.list();
        tx.commit();
        System.out.println(lista);
        return lista;
    }

    public Facultades getFacultadNombre(String f) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Facultades WHERE nombre = '" + f +"'");
        Facultades facultad = (Facultades) q.uniqueResult();
        tx.commit();
        return facultad;
    }


    public String getFacultadId(int id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        
        String hql = "SELECT f.nombre FROM Usuarios u JOIN u.facultades f WHERE u.id = "+id;

        Query q = s1.createQuery(hql);
        String facultad = (String) q.uniqueResult();
        tx.commit();
        return facultad;
    }
}
