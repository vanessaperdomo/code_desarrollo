-- Author: Laura
-- Description: Tabla de categorías de medicamentos

CREATE TABLE IF NOT EXISTS categoria (
    id              SERIAL        NOT NULL,
    nombre          VARCHAR(100)  NOT NULL,
    descripcion     TEXT,
    created_at      TIMESTAMP     NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP     NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_categoria PRIMARY KEY (id),
    CONSTRAINT uq_categoria_nombre UNIQUE (nombre)
);
GO