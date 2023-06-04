package persistencia;

import java.util.List;
import modelos.Facultades;
import modelos.HibernateUtil;
import modelos.Usuarios;
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

    public Facultades getFacultadPorId(int id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Facultades WHERE id = '" + id + "'");
        Facultades facultad = (Facultades) q.uniqueResult();
        tx.commit();
        return facultad;
    }

    public List<Usuarios> listadoUsuariosFacultad(int idFacultad) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Usuarios WHERE facultad_id = '" + idFacultad + "'");
        List<Usuarios> lista = (List<Usuarios>) q.list();
        tx.commit();
        System.out.println("Tamaño lista usuarios faucltad: " + lista.size());
        return lista;
    }

    public Facultades getFacultadNombre(String f) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Facultades WHERE nombre = '" + f + "'");
        Facultades facultad = (Facultades) q.uniqueResult();
        tx.commit();
        return facultad;
    }

    public String getFacultadId(int id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();

        String hql = "SELECT f.nombre FROM Usuarios u JOIN u.facultades f WHERE u.id = " + id;

        Query q = s1.createQuery(hql);
        String facultad = (String) q.uniqueResult();
        tx.commit();
        return facultad;
    }

    public List<Facultades> listadoObjFacultades() {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Facultades");
        List<Facultades> lista = (List<Facultades>) q.list();
        System.out.println("Tamaño de la lista de facultades: " + lista.size());
        tx.commit();

        return lista;
    }

    public void crearFacultad(Facultades facultad) {

        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.save(facultad);
        tx.commit();
    }

    public void borrarFacultad(Facultades facultad) {

        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.delete(facultad);
        tx.commit();
    }
}
