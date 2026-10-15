CREATE TABLE IF NOT EXISTS public.herramientas (
                                                   id BIGSERIAL PRIMARY KEY,
                                                   nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    cantidad INTEGER NOT NULL CHECK (cantidad >= 0)
    );

CREATE TABLE IF NOT EXISTS public.prestamos (
                                                id BIGSERIAL PRIMARY KEY,
                                                responsable VARCHAR(100) NOT NULL,
    fecha_prestamo VARCHAR(50) NOT NULL,
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    herramienta_id BIGINT NOT NULL,
    CONSTRAINT fk_herramienta
    FOREIGN KEY (herramienta_id)
    REFERENCES public.herramientas(id)
    ON DELETE RESTRICT
    );