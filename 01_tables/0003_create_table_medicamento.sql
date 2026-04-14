-- Author: Laura
-- Description: Tabla de medicamentos

CREATE TABLE IF NOT EXISTS medicamento (
    id                  SERIAL         NOT NULL,
    nombre              VARCHAR(200)   NOT NULL,
    principio_activo    VARCHAR(200)   NOT NULL,
    categoria_id        INT,
    proveedor_id        INT,
    forma_farmaceutica  VARCHAR(50),
    concentracion       VARCHAR(50),
    precio_venta        NUMERIC(12,2)  NOT NULL,
    stock               INT            NOT NULL DEFAULT 0,
    requiere_receta     BOOLEAN        NOT NULL DEFAULT FALSE,
    created_at          TIMESTAMP      NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMP      NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_medicamento PRIMARY KEY (id),

    CONSTRAINT fk_medicamento_categoria
        FOREIGN KEY (categoria_id) REFERENCES categoria(id),

    CONSTRAINT fk_medicamento_proveedor
        FOREIGN KEY (proveedor_id) REFERENCES proveedor(id)
);
GO