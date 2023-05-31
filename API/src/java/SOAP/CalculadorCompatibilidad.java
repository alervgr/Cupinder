/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SOAP;

import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author alervgr
 */
@WebService(serviceName = "CalculadorCompatibilidad")
public class CalculadorCompatibilidad {

    /**
     * This is a sample web service operation
     *
     * @param listaInteresesU1
     * @param listaInteresesU2
     * @param listaPersonalidadesU1
     * @param listaPersonalidadesU2
     * @return
     */
    @WebMethod(operationName = "calcularCompatibilidad")
    public double calcularCompatibilidad(@WebParam(name = "listaInteresesU1") List<String> listaInteresesU1, @WebParam(name = "listaInteresesU2") List<String> listaInteresesU2,
            @WebParam(name = "listaPersonalidadesU1") List<String> listaPersonalidadesU1, @WebParam(name = "listaPersonalidadesU2") List<String> listaPersonalidadesU2) {

        double PERSONALIDAD = 0.8;
        double INTERES = 0.2;
        double p = 0;
        double i = 0;
        double max = 1.0;

        //Personalidad
        if (listaPersonalidadesU1.contains("Introvertido")) {
            if (listaPersonalidadesU2.contains("Introvertido")) {
                p += 0;
            } else {
                p += 10;
            }
        } else {
            if (listaPersonalidadesU2.contains("Introvertido")) {
                p += 10;
            } else {
                p += 20;
            }
        }

        if (listaPersonalidadesU1.contains("Dominante")) {
            if (listaPersonalidadesU2.contains("Dominante")) {
                p += 0;
            } else {
                p += 20;
            }
        } else {
            if (listaPersonalidadesU2.contains("Dominante")) {
                p += 20;
            } else {
                p += 10;
            }
        }

        if (listaPersonalidadesU1.contains("Alegre")) {
            if (listaPersonalidadesU2.contains("Alegre")) {
                p += 20;
            } else {
                p += 5;
            }
        } else {
            if (listaPersonalidadesU2.contains("Alegre")) {
                p += 5;
            } else {
                p += 20;
            }
        }

        if (listaPersonalidadesU1.contains("Responsable")) {
            if (listaPersonalidadesU2.contains("Responsable")) {
                p += 15;
            } else {
                p += 5;
            }
        } else {
            if (listaPersonalidadesU2.contains("Responsable")) {
                p += 5;
            } else {
                p += 20;
            }
        }

        if (listaPersonalidadesU1.contains("Seguro")) {
            if (listaPersonalidadesU2.contains("Seguro")) {
                p += 20;
            } else {
                p += 10;
            }
        } else {
            if (listaPersonalidadesU2.contains("Seguro")) {
                p += 10;
            } else {
                p += 0;
            }
        }

        //Intereses
        if (listaInteresesU1.isEmpty() || listaInteresesU2.isEmpty()) {
            i += 0;
        } else {

            if (listaInteresesU1.size() > listaInteresesU2.size()) {
                max = listaInteresesU1.size();

                for (int j = 0; j < listaInteresesU2.size(); j++) {

                    if (listaInteresesU1.contains(listaInteresesU2.get(j))) {

                        i += 1.0;

                    }

                }

            } else {
                max = listaInteresesU2.size();

                for (int j = 0; j < listaInteresesU1.size(); j++) {

                    if (listaInteresesU2.contains(listaInteresesU1.get(j))) {

                        i += 1.0;

                    }

                }

            }

            i = i / max;

        }

        return (((p * PERSONALIDAD)/100) + (i * INTERES));
    }
}
