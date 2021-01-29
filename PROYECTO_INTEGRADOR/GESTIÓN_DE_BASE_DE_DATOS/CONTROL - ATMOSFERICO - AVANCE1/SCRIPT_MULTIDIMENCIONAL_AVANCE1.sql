
CREATE TABLE DIM_FECHA (
                sk_fecha INTEGER NOT NULL,
                fecha DATE NOT NULL,
                CONSTRAINT pk_fecha PRIMARY KEY (sk_fecha)
);


CREATE TABLE DIM_USUARIO (
                sk_usuario INTEGER NOT NULL,
                valido_hasta DATE,
                version INTEGER NOT NULL,
                valido_desde DATE,
                CONSTRAINT pk_usuario PRIMARY KEY (sk_usuario)
);


CREATE TABLE DIM_VELVIENTO (
                sk_velviento INTEGER NOT NULL,
                valido_desde DATE,
                valido_hasta DATE,
                version INTEGER NOT NULL,
                CONSTRAINT pk_velviento PRIMARY KEY (sk_velviento)
);


CREATE TABLE DIM_DIRVIENTO (
                sk_dirviento INTEGER NOT NULL,
                valido_desde DATE,
                valido_hasta DATE,
                version INTEGER NOT NULL,
                CONSTRAINT pk_dirviento PRIMARY KEY (sk_dirviento)
);


CREATE TABLE DIM_HUMEDAD (
                sk_humedad INTEGER NOT NULL,
                valido_desde DATE,
                valido_hasta DATE,
                version INTEGER NOT NULL,
                CONSTRAINT pk_humedad PRIMARY KEY (sk_humedad)
);


CREATE TABLE DIM_PRECIPITACION (
                sk_precipitacion INTEGER NOT NULL,
                valido_desde DATE,
                valido_hasta DATE,
                version INTEGER NOT NULL,
                CONSTRAINT pk_precipitacion PRIMARY KEY (sk_precipitacion)
);


CREATE TABLE HECHOS (
                sk_humedad INTEGER NOT NULL,
                sk_usuario INTEGER NOT NULL,
                sk_velviento INTEGER NOT NULL,
                sk_dirviento INTEGER NOT NULL,
                sk_precipitacion INTEGER NOT NULL,
                sk_fecha INTEGER NOT NULL,
                edad INTEGER NOT NULL,
                belisario NUMERIC(4,2),
                carapungo NUMERIC(4,2),
                centro NUMERIC(4,2),
                cotocollao NUMERIC(4,2),
                el_camal NUMERIC(4,2),
                guamani NUMERIC(4,2),
                los_chillos NUMERIC(4,2),
                san_antonio NUMERIC(4,2),
                tumbaco NUMERIC(4,2),
                CONSTRAINT pk_hechos PRIMARY KEY (sk_humedad, sk_usuario, sk_velviento, sk_dirviento, sk_precipitacion, sk_fecha)
);


ALTER TABLE HECHOS ADD CONSTRAINT dim_fecha_hechos_fk
FOREIGN KEY (sk_fecha)
REFERENCES DIM_FECHA (sk_fecha)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE HECHOS ADD CONSTRAINT dim_usuario_hechos_fk
FOREIGN KEY (sk_usuario)
REFERENCES DIM_USUARIO (sk_usuario)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE HECHOS ADD CONSTRAINT dim_velviento_hechos_fk
FOREIGN KEY (sk_velviento)
REFERENCES DIM_VELVIENTO (sk_velviento)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE HECHOS ADD CONSTRAINT dim_dirviento_hechos_fk
FOREIGN KEY (sk_dirviento)
REFERENCES DIM_DIRVIENTO (sk_dirviento)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE HECHOS ADD CONSTRAINT dim_humedad_hechos_fk
FOREIGN KEY (sk_humedad)
REFERENCES DIM_HUMEDAD (sk_humedad)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE HECHOS ADD CONSTRAINT dim_precipitacion_hechos_fk
FOREIGN KEY (sk_precipitacion)
REFERENCES DIM_PRECIPITACION (sk_precipitacion)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
