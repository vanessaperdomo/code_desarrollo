-- Author: Laura
-- Description: Tabla de proveedores

CREATE TABLE IF NOT EXISTS proveedor (
    id          SERIAL        NOT NULL,
    nombre      VARCHAR(150)  NOT NULL,
    nit         VARCHAR(20)   NOT NULL,
    telefono    VARCHAR(20),
    email       VARCHAR(150),
    ciudad      VARCHAR(100),
    created_at  TIMESTAMP     NOT NULL DEFAULT NOW(),
    updated_at  TIMESTAMP     NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_proveedor PRIMARY KEY (id),
    CONSTRAINT uq_proveedor_nit UNIQUE (nit),
    CONSTRAINT uq_proveedor_email UNIQUE (email)
);
GO