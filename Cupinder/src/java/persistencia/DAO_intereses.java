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

    public List<Intereses> listadoObjetosIntereses() {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Intereses");
        List<Intereses> lista = (List<Intereses>) q.list();
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

    public List<UsuarioIntereses> obtenerUsuarioIntereses(int idUsuario) {

        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM UsuarioIntereses WHERE usuario_id = '" + idUsuario + "'");
        List<UsuarioIntereses> list = (List<UsuarioIntereses>) q.list();
        tx.commit();
        return list;
    }
    
    public void borrarUsuarioInteres(UsuarioIntereses ui) {

        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.delete(ui);
        tx.commit();
    }
    
    public void borrarInteres(Intereses interes) {

        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.delete(interes);
        tx.commit();
    }

    public List<UsuarioIntereses> getDependencias(int idInteres) {

        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM UsuarioIntereses WHERE interes_id = '" + idInteres + "'");
        List<UsuarioIntereses> list = (List<UsuarioIntereses>) q.list();
        tx.commit();
        return list;
    }

    public void borrarDependencia(UsuarioIntereses interes) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        s1.delete(interes);
        tx.commit();
    }

    public void nuevoInteres(Intereses interes) {
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

    public Intereses obtenerInteresId(int id) {
        s1 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s1.beginTransaction();
        Query q = s1.createQuery("FROM Intereses WHERE id = '" + id + "'");
        Intereses i = (Intereses) q.uniqueResult();
        tx.commit();
        return i;
    }

}
