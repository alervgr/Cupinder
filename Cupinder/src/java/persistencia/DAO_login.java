package persistencia;

import java.util.List;
import modelos.HibernateUtil;
import modelos.Usuarios;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class DAO_login {

    Session s2;
    
    public DAO_login() {
    }
    
    public Usuarios comprobarLogin(String correo, String password) {
        s2 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s2.beginTransaction();
        Query q = s2.createQuery("FROM Usuarios WHERE correo='" + correo + "' AND password='" + password + "'");
        System.out.println(q);
        Usuarios usuario = (Usuarios)q.uniqueResult();
        tx.commit();
        return usuario;
    }
    
}
