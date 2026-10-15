package com.ejemplo.prestamos.service;

import com.ejemplo.prestamos.dto.PrestamoRequest;
import com.ejemplo.prestamos.model.Prestamo;
import java.util.List;

public interface PrestamoService {

    // Registrar un nuevo préstamo y descontar unidades
    Prestamo registrarPrestamo(PrestamoRequest request);

    // Consultar todos los préstamos
    List<Prestamo> consultarPrestamos();

    // Consultar préstamos de una herramienta por Id
    List<Prestamo> consultarPrestamosPorHerramienta(Long herramientaId);

}