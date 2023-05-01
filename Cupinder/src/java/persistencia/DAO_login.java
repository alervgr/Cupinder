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
    
    public String comprobarLogin(String correo, String password) {
        s2 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s2.beginTransaction();
        Query q = s2.createQuery("SELECT nombre FROM Usuarios WHERE correo='" + correo + "' AND password='" + password + "'");
        System.out.println(q);
        String usuarios = (String) q.uniqueResult();
        tx.commit();
        return usuarios;
    }
    
}
