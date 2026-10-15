package com.ejemplo.prestamos.service;

import com.ejemplo.prestamos.model.Herramienta;
import java.util.List;

public interface HerramientaService {

    // Registrar una nueva herramienta
    Herramienta registrarHerramienta(Herramienta herramienta);

    // Consultar todas las herramientas disponibles
    List<Herramienta> consultarHerramientas();

}