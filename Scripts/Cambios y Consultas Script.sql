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
  
  
  select * from modalidad;