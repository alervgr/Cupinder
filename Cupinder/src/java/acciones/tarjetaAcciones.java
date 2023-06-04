/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import modelos.TarjetasDeCredito;
import modelos.Usuarios;
import org.apache.struts2.interceptor.validation.SkipValidation;
import persistencia.DAO_tarjeta;

/**
 *
 * @author alervgr
 */
public class tarjetaAcciones extends ActionSupport {

    private final DAO_tarjeta dao_t;
    private String numeroTarjeta;
    private String CVV;
    private String fechaExpiracion;
    private List<TarjetasDeCredito> tarjetasUsuario;
    private int tarjetaId;
    private TarjetasDeCredito tarjeta;
    private String titular;
    private String anio;
    private String mes;

    public tarjetaAcciones() {
        dao_t = new DAO_tarjeta();
        tarjetasUsuario = new ArrayList<>();
        tarjeta = new TarjetasDeCredito();
    }

    
    /*Crear Tarjeta de credito
    Creamos una tarjeta de credito con los datos introducidos y 
    registramos en nuestra base de datos.
    */
    @Override
    public String execute() throws Exception {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");


        TarjetasDeCredito tarjeta = new TarjetasDeCredito(user,this.getTitular(), this.getNumeroTarjeta(), this.getCVV(),this.getMes(),this.getAnio());

        this.dao_t.aniadirTarjeta(tarjeta);

        return SUCCESS;
    }
    
    /*
    Obtenemos las tarjetas de credito de nuestro usuario a partir de su id
    */
    @SkipValidation
    public String obtenerTarjetasDeCredito() {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");

        this.setTarjetasUsuario(this.dao_t.obtenerTarjetasDeCredito(user.getId()));

        return SUCCESS;
    }
    
    /*Eliminar tarjeta de credito
    Obtenemos la tarjeta de credito a partir de su Id y la eliminamos de 
    nuestra base de datos.
    */
    @SkipValidation
    public String borrarTarjeta() {

        TarjetasDeCredito tarjeta = this.dao_t.obtenerTarjeta(this.getTarjetaId());

        this.dao_t.borrarTarjeta(tarjeta);

        obtenerTarjetasDeCredito();

        return SUCCESS;
    }    
    
    /*
    Obtenemos la tarjeta a guardamos también su Id.
    */
    @SkipValidation
    public String obtenerTarjeta() {

        this.setTarjeta(this.dao_t.obtenerTarjeta(this.getTarjetaId()));
        
        this.setTarjetaId(this.getTarjetaId());
        
        return SUCCESS;
    }
    

    public String getNumeroTarjeta() {
        return numeroTarjeta;
    }

    public void setNumeroTarjeta(String numeroTarjeta) {
        this.numeroTarjeta = numeroTarjeta;
    }

    public String getCVV() {
        return CVV;
    }

    public void setCVV(String CVV) {
        this.CVV = CVV;
    }

    public String getFechaExpiracion() {
        return fechaExpiracion;
    }

    public void setFechaExpiracion(String fechaExpiracion) {
        this.fechaExpiracion = fechaExpiracion;
    }

    public List<TarjetasDeCredito> getTarjetasUsuario() {
        return tarjetasUsuario;
    }

    public void setTarjetasUsuario(List<TarjetasDeCredito> tarjetasUsuario) {
        this.tarjetasUsuario = tarjetasUsuario;
    }

    public int getTarjetaId() {
        return tarjetaId;
    }

    public void setTarjetaId(int tarjetaId) {
        this.tarjetaId = tarjetaId;
    }

    public TarjetasDeCredito getTarjeta() {
        return tarjeta;
    }

    public void setTarjeta(TarjetasDeCredito tarjeta) {
        this.tarjeta = tarjeta;
    }

    public String getTitular() {
        return titular;
    }

    public void setTitular(String titular) {
        this.titular = titular;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

}
