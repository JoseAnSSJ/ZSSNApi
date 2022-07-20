CREATE TABLE IF NOT EXISTS tblSobrevivientes
(
    id_sobreviviente INT GENERATED BY DEFAULT AS IDENTITY,
    nombre_sobreviviente VARCHAR(50),  edad VARCHAR(50),  genero VARCHAR(50),  latitud VARCHAR(50),
    longitud VARCHAR,  es_infectado BOOLEAN

    );

CREATE TABLE IF NOT EXISTS tblInventario
(
    id_inventario INT GENERATED BY DEFAULT AS IDENTITY,  id_sobreviviente INT,
    cantidad INT
);

CREATE TABLE IF NOT EXISTS catObjetos
(
    id_objeto INT,  descripcion VARCHAR(50),  puntos INT
    );

CREATE TABLE IF NOT EXISTS tblReportesInfectados
(
    id_reporte INT GENERATED BY DEFAULT AS IDENTITY,  id_sobreviviente_infectado INT,
    id_sobreviviente_informante INT
);

truncate table catObjetos;

INSERT INTO catObjetos (id_objeto, descripcion,puntos) VALUES
                                                           (1,'Agua',4),
                                                           (2,'Comida',3),
                                                           (3,'Medicamentos',2),
                                                           (4,'Municiones',1);