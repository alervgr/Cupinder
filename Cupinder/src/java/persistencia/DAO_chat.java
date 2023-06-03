package persistencia;

import java.util.List;
import modelos.Chats;
import modelos.Coincidencias;
import modelos.HibernateUtil;
import modelos.Mensajes;
import modelos.TarjetasDeCredito;
import modelos.UsuarioIntereses;
import modelos.UsuarioPersonalidades;
import modelos.Usuarios;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class DAO_chat {

    Session s3;

    public DAO_chat() {
    }

    public List<Usuarios> listadoChatsUsuario(int id_usuario) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        String sql = "SELECT `u2`.* FROM `usuarios` AS `u` "
                + "LEFT JOIN `chats` AS `c` ON `c`.`usuario1_id` = `u`.`id` "
                + "LEFT JOIN `usuarios` AS `u2` ON `c`.`usuario2_id` = `u2`.`id` "
                + "WHERE `c`.`usuario1_id`=:id_usuario";
        SQLQuery query = s3.createSQLQuery(sql);
        query.setParameter("id_usuario", id_usuario); // Aquí puedes cambiar el valor de "id_usuario" por el valor deseado
        query.addEntity(Usuarios.class); // Aquí debes especificar la clase de entidad para mapear los resultados
        List<Usuarios> lista = (List<Usuarios>) query.list();
        tx.commit();
        return lista;
    }

    public List<Mensajes> listarMensajesUsuario(int idUsuario) {

        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        Query q = s3.createQuery("FROM Mensajes WHERE remitente_id = '" + idUsuario + "' OR destinatario_id ='" + idUsuario + "'");
        List<Mensajes> list = (List<Mensajes>) q.list();
        System.out.println(list.size());
        tx.commit();
        return list;
    }

    public List<Coincidencias> listarCoincidencias(int idUsuario) {

        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        Query q = s3.createQuery("FROM Coincidencias WHERE usuario1_id = '" + idUsuario + "' OR usuario2_id ='" + idUsuario + "'");
        List<Coincidencias> list = (List<Coincidencias>) q.list();
        System.out.println(list.size());
        tx.commit();
        return list;
    }

    public void eliminarCoincidencia(Coincidencias c) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        s3.delete(c);
        tx.commit();
    }

    public List<Chats> listarChatsUsuario(int idUsuario) {

        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        Query q = s3.createQuery("FROM Chats WHERE usuario1_id = '" + idUsuario + "' OR usuario2_id ='" + idUsuario + "'");
        List<Chats> list = (List<Chats>) q.list();
        System.out.println(list.size());
        tx.commit();
        return list;
    }

    public void eliminarMensaje(Mensajes m) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        s3.delete(m);
        tx.commit();
    }

    public void eliminarChat(Chats c) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        s3.delete(c);
        tx.commit();
    }

    public List<TarjetasDeCredito> listarTarjetasUsuario(int idUsuario) {

        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        Query q = s3.createQuery("FROM TarjetasDeCredito WHERE usuario_id = '" + idUsuario + "'");
        List<TarjetasDeCredito> list = (List<TarjetasDeCredito>) q.list();
        tx.commit();
        return list;
    }

    public void eliminarTarjeta(TarjetasDeCredito t) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        s3.delete(t);
        tx.commit();
    }

    public List<UsuarioIntereses> listarUsuarioIntereses(int idUsuario) {

        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        Query q = s3.createQuery("FROM UsuarioIntereses WHERE usuario_id = '" + idUsuario + "'");
        List<UsuarioIntereses> list = (List<UsuarioIntereses>) q.list();
        System.out.println(list.size());
        tx.commit();
        return list;
    }

    public void eliminarUsuarioInteres(UsuarioIntereses u) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        s3.delete(u);
        tx.commit();
    }

    public List<UsuarioPersonalidades> listarUsuarioPersonalidades(int idUsuario) {

        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        Query q = s3.createQuery("FROM UsuarioPersonalidades WHERE usuario_id = '" + idUsuario + "'");
        List<UsuarioPersonalidades> list = (List<UsuarioPersonalidades>) q.list();
        System.out.println(list.size());
        tx.commit();
        return list;
    }

    public void eliminarUsuarioPersonalidad(UsuarioPersonalidades u) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        s3.delete(u);
        tx.commit();
    }

    public List<Mensajes> listaMensajes(int id_remitente, int id_destinatario) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();

        String sql = "SELECT * FROM `mensajes` "
                + "WHERE (`remitente_id` =:id_remitente AND `destinatario_id` =:id_destinatario) "
                + "OR (`remitente_id` =:id_destinatario AND `destinatario_id` =:id_remitente) "
                + "ORDER BY `fecha_envio` ASC";
        SQLQuery query = s3.createSQLQuery(sql);
        query.setParameter("id_remitente", id_remitente);
        query.setParameter("id_destinatario", id_destinatario);
        query.addEntity(Mensajes.class); // Aquí debes especificar la clase de entidad para mapear los resultados
        List<Mensajes> lista = (List<Mensajes>) query.list();
        tx.commit();
        return lista;
    }

    public void enviarMensaje(Mensajes mensajeNuevo) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        s3.save(mensajeNuevo);
        tx.commit();
    }

    public Usuarios obtenerUsuario(int id_usuario) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        System.out.println(id_usuario);
        String sql = "From Usuarios WHERE id='" + id_usuario + "'";
        Query query = s3.createQuery(sql);
        Usuarios usuario = (Usuarios) query.uniqueResult();
        tx.commit();
        return usuario;
    }
    
    public void crearChat(Chats chat){
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        s3.save(chat);
        tx.commit();
    }

    public void borrarChat(Chats chat) {
        s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        s3.delete(chat);
        tx.commit();
    }

    public Chats obtenerChat(int id1, int id2) {
        
         s3 = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = s3.beginTransaction();
        String sql = "From Chats WHERE usuario1_id='"+ id1 +"' AND usuario2_id='"+ id2 +"'";
        Query query = s3.createQuery(sql);
        Chats chat = (Chats) query.uniqueResult();
        tx.commit();
        return chat;
        
    }

}
