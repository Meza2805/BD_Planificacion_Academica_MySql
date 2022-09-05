use Planificacion_Academica;

/*-----------------------------------------------------------------*/
/*ESPACIO PARA CAMBIOS Y AGREGACION DE NUEVOS CAMPOS EN LAS TABLAS*/
/*-----------------------------------------------------------------*/

select * from actividad;

 /*AGREGANDO EL CAMPO DE AÑO A LA TABLA DE ACTIVIDAD*/
alter table actividad add ID_ANIO INT;

/*AGREGANDO DEPENDECNIA Y LLAVE FORANEA*/
ALTER TABLE ACTIVIDAD ADD CONSTRAINT FK_ACTIVIDAD_ANIO FOREIGN KEY (ID_ANIO) REFERENCES ANIO_ELECTIVO (ID);
 
 /*AGREGANDO EL CAMPO DE AÑO A LA TABLA DE GRADO*/
 alter table grado add ID_ANIO INT;
 /*AGREGANDO DEPENDECNIA Y LLAVE FORANEA*/
 ALTER TABLE grado add constraint FK_GRADO_ANIO FOREIGN KEY (ID_ANIO) REFERENCES ANIO_ELECTIVO (ID);
 
  /*AGREGANDO EL CAMPO DE  ID_GRADO A LA TABLA GRADO*/
  alter table grupo_grado add constraint FK_GRUPO_GRADO FOREIGN KEY (ID_GRADO) REFERENCES grado (id) on delete cascade on update cascade;
  
  
  select * from grupo_grado;
  

  /*AGREGANDO EL CAMPO DE AÑO ELECTIVO A LA TABLA DE GRUPO GRADO*/
  ALTER TABLE GRUPO_GRADO ADD ANIO INT;
  ALTER TABLE GRUPO_GRADO ADD CONSTRAINT FK_ANIO_GGRADO FOREIGN KEY (ANIO) REFERENCES ANIO_ELECTIVO(ID);
  
  select * from GRUPO_GRADO;
  SELECT * FROM ANIO_ELECTIVO;
/*INSERTANDO EL CAMPO DE LOS AÑOS EN LA TABLA GRUPO GRADO*/
UPDATE GRUPO_GRADO SET ID_ANIO = 9 WHERE ID= 3;
  
  
SELECT * FROM ACTIVIDAD_EJECUCION;
SELECT * FROM EJECUCION;
SELECT * FROM actividad_EJECUCION;
ALTER TABLE ACTIVIDAD_EJECUCION ADD CONSTRAINT FK_ACTIVIDAD_EJECUCION FOREIGN KEY (ID_ACTIVIDAD) REFERENCES ACTIVIDAD (ID);
/*AGREGANDO */

SELECT * FROM ACTIVIDAD;
ALTER TABLE ACTIVIDAD ADD ID_MODALIDAD INT;
ALTER TABLE ACTIVIDAD ADD CONSTRAINT FK_ACTIVIDAD_MODALIDAD FOREIGN KEY (ID_MODALIDAD) REFERENCES MODALIDAD (ID); 


SELECT * FROM GRADO;
SELECT * FROM GRUPO_GRADO;
SELECT * FROM MODALIDAD;

/*AGREGANDO LA COLUMNA ID_MODALIDAD A LA TABLA GRADO*/
ALTER TABLE GRADO ADD ID_MODALIDAD INT;
ALTER TABLE GRADO ADD CONSTRAINT FK_MODALIDAD_GRADO FOREIGN KEY (ID_MODALIDAD) REFERENCES MODALIDAD(ID);

SELECT * FROM GRADO;
/*AGREGANDO LA MODALIDAD RESPECTIVA A CADA GRADO*/
UPDATE GRADO SET ID_MODALIDAD = 9 WHERE ID = 1;
UPDATE GRADO SET ID_MODALIDAD = 9 WHERE ID = 2;
UPDATE GRADO SET ID_MODALIDAD = 9 WHERE ID = 3;
UPDATE GRADO SET ID_MODALIDAD = 2 WHERE ID = 4;
UPDATE GRADO SET ID_MODALIDAD = 2 WHERE ID = 5;
UPDATE GRADO SET ID_MODALIDAD = 2 WHERE ID = 6;
UPDATE GRADO SET ID_MODALIDAD = 2 WHERE ID = 7;
UPDATE GRADO SET ID_MODALIDAD = 2 WHERE ID = 8;
UPDATE GRADO SET ID_MODALIDAD = 2 WHERE ID = 9;
UPDATE GRADO SET ID_MODALIDAD = 3 WHERE ID = 10;
SELECT * FROM GRADO;


/*ACTUALIZANDO LOS GRADOS*/
UPDATE GRADO SET DESCRIPCION = "SEXTO" WHERE ID = 9;
UPDATE GRADO SET DESCRIPCION = "SEPTIMO" WHERE ID = 10;

SELECT * FROM GRADO;
/*INSERTANDO LOS DATOS FALTANTES*/
INSERT INTO GRADO (DESCRIPCION,ID_MODALIDAD) VALUES ("OCATVO", 3);
INSERT INTO GRADO (DESCRIPCION,ID_MODALIDAD) VALUES ("NOVENO", 3);
INSERT INTO GRADO (DESCRIPCION,ID_MODALIDAD) VALUES ("DECIMO", 3);
INSERT INTO GRADO (DESCRIPCION,ID_MODALIDAD) VALUES ("UNDECIMO", 3);

SELECT COUNT(*) FROM ESTUDIANTE;
SELECT COUNT(*) FROM ESTUDIANTE WHERE ID_GRUPO_GRADO=3;


SELECT * FROM ACTIVIDAD;
ALTER TABLE ACTIVIDAD ADD CONSTRAINT FK_ACTIVIDAD_MODALIDAD02 FOREIGN KEY (ID_MODALIDAD) REFERENCES MODALIDAD (ID);

select * from actividad;
select * from actividad_ejecucion;
select * from horario_bloque;

drop table estudiante;

select * from horario_bloque;


alter table horario_bloque add constraint FK_ID_DIA foreign key (ID_DIA) REFERENCES DIA (ID);


/*ESTABLECIENDO RELACION ENTRE BLOQUE HORARIO Y DOCENTE*/
select * from  bloque_clase;
alter table bloque_clase add constraint FK_DOCENTE_BLOQUE foreign key (CEDULA_DOCENTE) REFERENCES PERSONAL (CEDULA);
