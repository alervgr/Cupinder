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

    public tarjetaAcciones() {
        dao_t = new DAO_tarjeta();
        tarjetasUsuario = new ArrayList<>();
        tarjeta = new TarjetasDeCredito();
    }

    @Override
    public void validate() {

        if (0 == this.getNumeroTarjeta().length() || null == this.getNumeroTarjeta()) {
            addFieldError("numeroTarjeta", getText("numeroT.relleno"));
        } else {
            if (16 != this.getNumeroTarjeta().length()) {
                addFieldError("numeroTarjeta", getText("numeroT.formato"));
            }
        }

        if (0 == this.getCVV().length() || null == this.getCVV()) {
            addFieldError("CVV", getText("cvvT.relleno"));
        } else {
            if (3 != this.getCVV().length()) {
                addFieldError("CVV", getText("cvvT.longitud"));
            }
        }
        if (0 == this.getFechaExpiracion().length() || null == this.getFechaExpiracion()) {
            addFieldError("fechaExpiracion", getText("fechaT.relleno"));
        } else {
            boolean isValidFormat = Pattern.matches("\\d{4}-\\d{2}-\\d{2}", this.getFechaExpiracion());
            if (!isValidFormat) {
                addFieldError("fechaExpiracion", getText("fechaT.formato"));
            }

        }

    }

    @Override
    public String execute() throws Exception {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");

        Date fecha = sdf.parse(this.getFechaExpiracion());

        TarjetasDeCredito tarjeta = new TarjetasDeCredito(user, this.getNumeroTarjeta(), fecha, this.getCVV());

        this.dao_t.aniadirTarjeta(tarjeta);

        return SUCCESS;
    }

    @SkipValidation
    public String obtenerTarjetasDeCredito() {

        Map session = (Map) ActionContext.getContext().get("session");
        Usuarios user = (Usuarios) session.get("user");

        this.setTarjetasUsuario(this.dao_t.obtenerTarjetasDeCredito(user.getId()));

        return SUCCESS;
    }

    @SkipValidation
    public String borrarTarjeta() {

        TarjetasDeCredito tarjeta = this.dao_t.obtenerTarjeta(this.getTarjetaId());

        this.dao_t.borrarTarjeta(tarjeta);

        obtenerTarjetasDeCredito();

        return SUCCESS;
    }
    
    
    public String actualizarTarjeta() throws Exception {

        TarjetasDeCredito tarjeta = this.dao_t.obtenerTarjeta(this.getTarjetaId());
        
        tarjeta.setCvv(this.getCVV());
        tarjeta.setNumeroTarjeta(this.getNumeroTarjeta());
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");

        Date fecha = sdf.parse(this.getFechaExpiracion());
        
        tarjeta.setFechaExpiracion(fecha);
        
        this.dao_t.actualizarTarjeta(tarjeta);

        obtenerTarjetasDeCredito();

        return SUCCESS;
    }
    
    @SkipValidation
    public String obtenerTarjeta() {

        this.setTarjeta(this.dao_t.obtenerTarjeta(this.getTarjetaId()));
        
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

}
