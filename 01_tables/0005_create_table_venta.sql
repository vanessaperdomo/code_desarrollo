-- Author: Laura
-- Description: Tabla de ventas

CREATE TABLE IF NOT EXISTS venta (
    id              SERIAL         NOT NULL,
    cliente_id      INT,
    fecha_venta     TIMESTAMP      NOT NULL DEFAULT NOW(),
    total           NUMERIC(14,2)  NOT NULL,
    metodo_pago     VARCHAR(30)    NOT NULL,
    created_at      TIMESTAMP      NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP      NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_venta PRIMARY KEY (id),

    CONSTRAINT fk_venta_cliente
        FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);
GO