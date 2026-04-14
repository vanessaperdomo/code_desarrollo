-- Author: Laura
-- Description: Tabla de clientes

CREATE TABLE IF NOT EXISTS cliente (
    id                  SERIAL        NOT NULL,
    nombre              VARCHAR(100)  NOT NULL,
    apellido            VARCHAR(100)  NOT NULL,
    numero_documento    VARCHAR(20)   NOT NULL,
    telefono            VARCHAR(20),
    email               VARCHAR(150),
    created_at          TIMESTAMP     NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMP     NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_cliente PRIMARY KEY (id),
    CONSTRAINT uq_cliente_documento UNIQUE (numero_documento),
    CONSTRAINT uq_cliente_email UNIQUE (email)
);
GO