
CREATE SEQUENCE usuario_id_usuario_seq;

CREATE TABLE USUARIO (
                ID_USUARIO VARCHAR(10) NOT NULL DEFAULT nextval('usuario_id_usuario_seq'),
                CORREO VARCHAR(10) NOT NULL,
                NOMBRE VARCHAR(50) NOT NULL,
                EDAD INTEGER NOT NULL,
                CLAVE VARCHAR(8) NOT NULL,
                CONSTRAINT usuario_pk PRIMARY KEY (ID_USUARIO)
);


ALTER SEQUENCE usuario_id_usuario_seq OWNED BY USUARIO.ID_USUARIO;

CREATE SEQUENCE velocidad_viento_id_vel_seq;

CREATE TABLE VELOCIDAD_VIENTO (
                ID_VEL INTEGER NOT NULL DEFAULT nextval('velocidad_viento_id_vel_seq'),
                BELISARIO NUMERIC(4,2) NOT NULL,
                CARAPUNGO NUMERIC(4,2) NOT NULL,
                CENTRO NUMERIC(4,2) NOT NULL,
                COTOCOLLAO NUMERIC(4,2) NOT NULL,
                EL_CAMAL NUMERIC(4,2) NOT NULL,
                GUAMANI NUMERIC(4,2) NOT NULL,
                LOS_CHILLOS NUMERIC(4,2) NOT NULL,
                SAN_ANTONIO NUMERIC(4,2) NOT NULL,
                TUMBACO NUMERIC(4,2) NOT NULL,
                CONSTRAINT pk_velocidad_viento PRIMARY KEY (ID_VEL)
);


ALTER SEQUENCE velocidad_viento_id_vel_seq OWNED BY VELOCIDAD_VIENTO.ID_VEL;

CREATE SEQUENCE direccion_viento_id_dir_seq;

CREATE TABLE DIRECCION_VIENTO (
                ID_DIR INTEGER NOT NULL DEFAULT nextval('direccion_viento_id_dir_seq'),
                BELISARIO NUMERIC(4,2),
                CARAPUNGO NUMERIC(4,2),
                CENTRO NUMERIC(4,2),
                COTOCOLLAO NUMERIC(4,2),
                EL_CAMAL NUMERIC(4,2),
                GUAMANI NUMERIC(4,2),
                LOS_CHILLOS NUMERIC(4,2),
                SAN_ANTONIO NUMERIC(4,2),
                TUMBACO NUMERIC(4,2),
                CONSTRAINT pk_direccion_viento PRIMARY KEY (ID_DIR)
);


ALTER SEQUENCE direccion_viento_id_dir_seq OWNED BY DIRECCION_VIENTO.ID_DIR;

CREATE SEQUENCE precipitacion_id_pre_seq;

CREATE TABLE PRECIPITACION (
                ID_PRE INTEGER NOT NULL DEFAULT nextval('precipitacion_id_pre_seq'),
                BELISARIO NUMERIC(4,2) NOT NULL,
                CARAPUNGO NUMERIC(4,2) NOT NULL,
                CENTRO NUMERIC(4,2) NOT NULL,
                COTOCOLLAO NUMERIC(4,2) NOT NULL,
                EL_CAMAL NUMERIC(4,2) NOT NULL,
                GUAMANI NUMERIC(4,2) NOT NULL,
                LOS_CHILLOS NUMERIC(4,2) NOT NULL,
                SAN_ANTONIO NUMERIC(4,2) NOT NULL,
                TUMBACO NUMERIC(4,2) NOT NULL,
                CONSTRAINT pk_precipitacion PRIMARY KEY (ID_PRE)
);


ALTER SEQUENCE precipitacion_id_pre_seq OWNED BY PRECIPITACION.ID_PRE;

CREATE SEQUENCE humedad_id_hum_seq;

CREATE TABLE HUMEDAD (
                ID_HUM INTEGER NOT NULL DEFAULT nextval('humedad_id_hum_seq'),
                BELISARIO NUMERIC(4,2) NOT NULL,
                CARAPUNGO NUMERIC(4,2) NOT NULL,
                CENTRO NUMERIC(4,2) NOT NULL,
                COTOCOLLAO NUMERIC(4,2) NOT NULL,
                EL_CAMAL NUMERIC(4,2) NOT NULL,
                GUAMANI NUMERIC(4,2) NOT NULL,
                LOS_CHILLOS NUMERIC(4,2) NOT NULL,
                SAN_ANTONIO NUMERIC(4,2) NOT NULL,
                TUMBACO NUMERIC(4,2) NOT NULL,
                CONSTRAINT pk_humedad PRIMARY KEY (ID_HUM)
);


ALTER SEQUENCE humedad_id_hum_seq OWNED BY HUMEDAD.ID_HUM;

CREATE SEQUENCE fecha_id_fecha_seq;

CREATE TABLE FECHA (
                ID_FECHA INTEGER NOT NULL DEFAULT nextval('fecha_id_fecha_seq'),
                FECHA DATE NOT NULL,
                ID_VEL INTEGER NOT NULL,
                ID_PRE INTEGER NOT NULL,
                ID_DIR INTEGER NOT NULL,
                ID_HUM INTEGER NOT NULL,
                CONSTRAINT pk_fecha PRIMARY KEY (ID_FECHA)
);


ALTER SEQUENCE fecha_id_fecha_seq OWNED BY FECHA.ID_FECHA;

ALTER TABLE FECHA ADD CONSTRAINT velocidad_viento_fecha_fk
FOREIGN KEY (ID_VEL)
REFERENCES VELOCIDAD_VIENTO (ID_VEL)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE FECHA ADD CONSTRAINT direccion_viento_fecha_fk
FOREIGN KEY (ID_DIR)
REFERENCES DIRECCION_VIENTO (ID_DIR)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE FECHA ADD CONSTRAINT precipitacion_fecha_fk
FOREIGN KEY (ID_PRE)
REFERENCES PRECIPITACION (ID_PRE)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE FECHA ADD CONSTRAINT humedad_fecha_fk
FOREIGN KEY (ID_HUM)
REFERENCES HUMEDAD (ID_HUM)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
