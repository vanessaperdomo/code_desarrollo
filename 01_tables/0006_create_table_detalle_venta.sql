-- Author: Laura
-- Description: Tabla de detalle de ventas

CREATE TABLE IF NOT EXISTS detalle_venta (
    id                  SERIAL         NOT NULL,
    venta_id            INT            NOT NULL,
    medicamento_id      INT            NOT NULL,
    cantidad            INT            NOT NULL,
    precio_unitario     NUMERIC(12,2)  NOT NULL,
    subtotal            NUMERIC(14,2)  NOT NULL,
    created_at          TIMESTAMP      NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMP      NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_detalle_venta PRIMARY KEY (id),

    CONSTRAINT fk_detalle_venta
        FOREIGN KEY (venta_id) REFERENCES venta(id),

    CONSTRAINT fk_detalle_medicamento
        FOREIGN KEY (medicamento_id) REFERENCES medicamento(id)
);
GO