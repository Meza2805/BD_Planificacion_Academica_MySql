use Planificacion_Academica;
create database Planificacion_Academica;
select * from cargo;
insert into cargo (DESCRIPCION) VALUES ("DIRECTOR");
insert into cargo (DESCRIPCION) VALUES ("SUB-DIRECTOR");
insert into cargo (DESCRIPCION) VALUES ("SECRETARIA");
insert into cargo (DESCRIPCION) VALUES ("INSPECTOR");

select * from modalidad;
insert into modalidad (DESCRIPCION) VALUES ("PRE-ESCOLAR FORMAL");
insert into modalidad (DESCRIPCION) VALUES ("PRIMARIA REGULAR");
insert into modalidad (DESCRIPCION) VALUES ("SECUNDARIA DIURNA");
insert into modalidad (DESCRIPCION) VALUES ("SECUNDARIA A DISTANCIA JYA");

select * from anio_electivo;
insert into anio_electivo (DESCRIPCION) VALUES ("2020");
insert into anio_electivo (DESCRIPCION) VALUES ("2021");
insert into anio_electivo (DESCRIPCION) VALUES ("2022");

select * from dia;
insert into dia (DESCRIPCION) VALUES ("LUNES");
insert into dia (DESCRIPCION) VALUES ("MARTES");
insert into dia (DESCRIPCION) VALUES ("MIERCOLES");
insert into dia (DESCRIPCION) VALUES ("JUEVES");
insert into dia (DESCRIPCION) VALUES ("VIERNES");
insert into dia (DESCRIPCION) VALUES ("SABADO");


select * from dia;
update dia set DESCRIPCION = "LUNES" WHERE ID=1;
update dia set DESCRIPCION = "MARTES" WHERE ID=2;
update dia set DESCRIPCION = "MIERCOLES" WHERE ID=3;
update dia set DESCRIPCION = "JUEVES" WHERE ID=4;
update dia set DESCRIPCION = "VIERNES" WHERE ID=5;



select * from grado;
insert into grado (DESCRIPCION) VALUES ("I NIVEL");
insert into grado (DESCRIPCION) VALUES ("II NIVEL");
insert into grado (DESCRIPCION) VALUES ("III NIVEL");
insert into grado (DESCRIPCION) VALUES ("PRIMERO");
insert into grado (DESCRIPCION) VALUES ("SEGUNDO");
insert into grado (DESCRIPCION) VALUES ("TERCERO");
insert into grado (DESCRIPCION) VALUES ("CUARTO");
insert into grado (DESCRIPCION) VALUES ("QUINTO");
insert into grado (DESCRIPCION) VALUES ("SEPTIMO");
insert into grado (DESCRIPCION) VALUES ("OCTAVO");
insert into grado (DESCRIPCION) VALUES ("NOVENO");
insert into grado (DESCRIPCION) VALUES ("DECIMO");
insert into grado (DESCRIPCION) VALUES ("UNDECIMO");

select * from modalidad;
insert into modalidad(DESCRIPCION) VALUES ('PREESCOLAR COMUNITARIO');

SELECT * FROM PERSONAL;

/*INSERTANDO LAS SECCIONES*/
INSERT INTO SECCION (DESCRIPCION) VALUES ('A');
INSERT INTO SECCION (DESCRIPCION) VALUES ('B');
INSERT INTO SECCION (DESCRIPCION) VALUES ('C');


/*INSERTANDO TURNO*/
INSERT INTO TURNO (DESCRIPCION,HORARIO) VALUES ('MATURINO','8:00 AM - 11:00 AM');
INSERT INTO TURNO (DESCRIPCION,HORARIO) VALUES ('MATURINO','7:00 AM - 12:00 MD');
INSERT INTO TURNO (DESCRIPCION,HORARIO) VALUES ('VESPERTINO','12:30 AM - 5:15 PM');
INSERT INTO TURNO (DESCRIPCION,HORARIO) VALUES ('SABATINO','8:00 AM - 4:00 PM');

select * from turno;
update turno set DESCRIPCION = 'MATUTINO' WHERE ID = 2 AND ID=2;

/*INSERTANDO TRES MAESTRAS DE PREESCOLAR-*/
SELECT * FROM DOCENTE;
INSERT INTO DOCENTE VALUES ('448-150492-0012Q','KARLA','ELIZABETH','JARQUIN','CALERO','1992-04-15','85974196','DIRECCION','karli123','123','F',40,1);
INSERT INTO DOCENTE VALUES ('001-190890-0001A','MEYLING','ESTEFANIA','PEREZ','VELASQUEZ','1990-08-19','54897450','DIRECCION','mey123','123','F',40,1);
INSERT INTO DOCENTE VALUES ('001-200991-0012P','AURORA','ABIGAIL','ZAMORA','JARQUIN','1991-09-20','85967410','DIRECCION','auro123','123','F',40,1);




SELECT * FROM GRUPO_GRADO;
SELECT * FROM GRADO;
SELECT * FROM SECCION;
SELECT * FROM TURNO;
SELECT * FROM MODALIDAD;
SELECT * FROM DOCENTE;
INSERT INTO GRUPO_GRADO (ID_GRADO,ID_SECCION,ID_TURNO,ID_MODALIDAD,CEDULA_DOCENTE) VALUES (1,1,1,9,'448-150492-0012Q');
INSERT INTO GRUPO_GRADO (ID_GRADO,ID_SECCION,ID_TURNO,ID_MODALIDAD,CEDULA_DOCENTE) VALUES (2,1,1,9,'001-190890-0001A');
INSERT INTO GRUPO_GRADO (ID_GRADO,ID_SECCION,ID_TURNO,ID_MODALIDAD,CEDULA_DOCENTE) VALUES (3,1,1,9,'001-200991-0012P');

/*CONSULTA PARA CONOCER LOS DOCENTES Y GRADOS QUE GUIAN*/
SELECT D.CEDULA,D.PRIMER_NOMBRE,D.PRIMER_APELLIDO, M.DESCRIPCION, G.DESCRIPCION, S.DESCRIPCION, T.DESCRIPCION FROM DOCENTE D inner join GRUPO_GRADO GG ON D.CEDULA = GG.CEDULA_DOCENTE
						inner join MODALIDAD M ON GG.ID_MODALIDAD = M.ID
                        INNER JOIN GRADO G ON GG.ID_GRADO = G.ID
                        INNER JOIN TURNO T ON GG.ID_TURNO = T.ID
                        INNER JOIN SECCION S ON GG.ID_SECCION = S.ID;
                        
/*INSERTANDO ESTUDIANTES DE PRIMER NIVEL DE PREESCOLAR*/
SELECT * FROM ESTUDIANTE where ID_GRUPO_GRADO = 2;

/*COMENTARIO*/







select * FROM GRUPO_GRADO;
SELECT * FROM GRADO;


/*INSERTANDO TRES MAESTRAS DE PREESCOLAR-*/
SELECT * FROM personal;
INSERT INTO DOCENTE VALUES ('448-150492-0012Q','KARLA','ELIZABETH','JARQUIN','CALERO','1992-04-15','85974196','DIRECCION','karli123','123','F',40,1);





/*DE AQUI HACIA ABAJO ESTA EL CODIGO QUE SE IMPLEMENTO LUEGO DE LA RETROALIMENTACION*/
          /**/
          /**/
          /**/
          /**/
/**/     /**/          /**/
  /**/             /**/       
      /**/    /**/
		  /**/






/*REALIZANDO VERIFICACION E INCERSION DE DATOS EN LA BD*/

select * from actividad;


/*INSERTANDO CARGO Y SU DESCRIPCION*/
SELECT * FROM CARGO;
INSERT INTO CARGO (DESCRIPCION) VALUES ("DOCENTE");
INSERT INTO CARGO (DESCRIPCION) VALUES ("DIRECTOR");
INSERT INTO CARGO (DESCRIPCION) VALUES ("SUB DIRECTOR");
INSERT INTO CARGO (DESCRIPCION) VALUES ("INSPECTOR");


/*INSERTANDO DATOS DE PERSONAL*/
/*DOCENTES*/
select * from personal;
update personal set CONTRA = "temporal" where ID_CARGO = 3;
select count(*) from personal;
INSERT INTO PERSONAL VALUES ("001-070997-0031X","MEYLING","ESTEFANIA","PEREZ","VELASQUEZ","1997-07-09","77774033","PARQUE MATEARE 2 CUADRAS AL SUR",40,"mey123","mey123",1,1);
INSERT INTO PERSONAL VALUES ("001-100494-0001V","MARIA","MAGDALENA","URROZ","BLANDON","1994-04-10","88897312","CIUDAD SANDINO TOPE SUR",40,"mari123","mari123",1,1);
INSERT INTO PERSONAL VALUES ("001-180990-0004Z","SOFIA","SARAI","MARTINEZ","RUIZ","1990-09-18","89903242","PARQUE MATEARE 7 CUADRAS LA NORTE",40,"sofiy123","sofi123",1,1);
INSERT INTO PERSONAL VALUES ("001-230890-0031X","DINA","SARA","CASTRO","FLORES","1990-08-23","77774033","CARRETERA VIEJA A LEON KM 29",10,"dina123","dina123",1,1);
INSERT INTO PERSONAL VALUES ("001-070991-0011Q","ANDREA","ANTONIA","SILVA","GUIDO","1991-07-09","77774033","PARQUE MATEARE 7 CUADRAS AL SUR",0,"andy123","andy123",1,1);
INSERT INTO PERSONAL VALUES ("001-070989-0041P","MARJORIE","JACQUELINE","MEMBREÑO","CASTRO","1989-07-09","88124033","ENTRADA PRINCIPAL CIUDAD SANDINO 2 CUADRAS AL SUR",0,"marjo123","marjo123",1,1);
INSERT INTO PERSONAL VALUES ("001-070989-0239L","MARIA","ELIZABETH","ARAGON","ROA","1989-07-09","78974033","PARQUE MATEARE 3 CUADRAS AL SUR",0,"mari123","mari123",1,1);
INSERT INTO PERSONAL VALUES ("001-070999-0231S","ESTELA","RACHEL","PEREZ","BRIONES","1999-07-09","79974033","PARQUE MATEARE 2 CUADRAS AL SUR",0,"este123","este123",1,1);
INSERT INTO PERSONAL VALUES ("001-070999-0043W","SEBASTIAN","JOSE","MEZA","PEREZ","1999-07-09","77774033","PARQUE MATEARE 2 CUADRAS AL SUR",0,"sebas123","sebas123",1,1);
INSERT INTO PERSONAL VALUES ("001-070992-0031X","MARCO","AURELIO","ALEMAN","SOLIS","1992-07-09","77774033","PARQUE MATEARE 2 CUADRAS AL SUR",0,"marco123","marco123",1,1);
INSERT INTO PERSONAL VALUES ("001-070984-0031F","MAGDA","VERONICA","FLORES","LOPEZ","1984-07-09","F","77774033","CIUDAD SANDINO ENTRANDA PRINCIPAL 2 CUADRAS AL SUR",0,"magda123","magdaco123",1,2);
INSERT INTO PERSONAL VALUES ("001-070990-0031F","YURI","PATRICIA","HERNANDEZ","RAMIREZ","1990-07-09","F","77774033","CIUDAD SANDINO ENTRANDA PRINCIPAL 7 CUADRAS AL SUR",0,"yuri123","yuri123",1,3);

/*HACIENDO USO DEL PROCEDIMIENTO ALMACENADO PARA INSERTAR AL PERSONAL*/
/*EL PROCEDIMIENTO ALMACENADO YA ESTA CONDICIONADO PARA ESTABLECER AUTOMATICAMENTE LAS HORAS LABORALES, EL USUARIO, CONTRASEÑA, ESTADO Y FECHA DE REGISTRO*/
call SP_Insertar_Personal('001-070988-0032W','maria','julieta','martinez','Larios','1988-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',1);
call SP_Insertar_Personal('443-070990-0012P','jorge','enmanuel','leiva','silva','1990-07-09','M','89774033','Entrada ciudad sandino 3 cuadras al norte',1);
call SP_Insertar_Personal('443-071091-0113Z','oscar','danilo','castro','flores','1991-07-10','M','81274033','Entrada ciudad sandino 3 cuadras al norte',1);
call SP_Insertar_Personal('001-071091-0113Z','martin','jose','caceres','briones','1991-07-10','M','77274089','Entrada ciudad sandino 7 cuadras al norte',1);
call SP_Insertar_Personal('440-071094-0148y','isabel','serena','meza','perez','1994-07-10','f','81274033','carretera vieja a leon km 29',1);

call SP_Insertar_Personal('449-071080-0148y','carmen','elvira','pineda','arvizu','1980-07-10','f','81271233','bo. nueva vida km 10 carretera vieja a leon casa no210',1);
call SP_Insertar_Personal('440-071091-21480','flor','de maria','pineda','arvixu','1991-07-10','f','81274033','carretera vieja a leon km 29',1);
call SP_Insertar_Personal('002-071097-0148l','arelys','vanessa','jalina','rocha','1997-07-12','f','82474033','jardines de veracruz de la rotonda 2 cuadras al lago',1);
call SP_Insertar_Personal('002-071094-0148b','fatima','yalena','mojica','aragon','1994-07-10','f','81274033','carretera vieja a leon km 29',1);
call SP_Insertar_Personal('001-071099-0148y','reyna','isabel','velaszquez','roa','1999-07-10','f','81274033','carretera vieja a leon km 24',1);
call SP_Insertar_Personal('001-071097-3248g','irma','','rodriguez','somarriba','1997-07-12','f','81274033','Entrada ciudad sandino 7 cuadras al norte',1);
call SP_Insertar_Personal('001-071090-0048h','iris','sofia','solis','guevara','1990-12-12','f','81223033','Entrada ciudad sandino 9 cuadras al norte',1);
call SP_Insertar_Personal('001-071089-0018k','bertha','esmeralda','ordoñez','matute','1989-07-12','f','81200033','Entrada ciudad sandino 7 cuadras al norte',1);
call SP_Insertar_Personal('001-071089-0018u','bethania','','salgado','merari','1989-07-12','f','81200033','Entrada ciudad sandino 3 cuadras al norte 2 cuadras abajo',1);
call SP_Insertar_Personal('001-071087-0023Z','jeronima','sonia','montero','castro','1987-07-12','f','81200033','Entrada ciudad sandino 3 cuadras al norte 2 cuadras abajo',1);
call SP_Insertar_Personal('001-071080-0018u','anabel','','orozco','vasquez','1980-07-12','f','81299033','Entrada ciudad sandino 3 cuadras al norte 2 cuadras abajo',1);
call SP_Insertar_Personal('001-071082-0129x','urania','','arroliga','estrada','1982-07-12','f','81204333','carretera vieja a leon km 24',1);
call SP_Insertar_Personal('001-071070-0129x','mercedes','lisseth','saavedra','ortega','1970-07-12','f','88901243','Entrada ciudad sandino 7 cuadras al norte',1);
call SP_Insertar_Personal('001-071072-0009a','atalia','abigail','montero','ortega','1972-07-12','f','88901243','Entrada ciudad sandino 7 cuadras al norte',1);
call SP_Insertar_Personal('001-071073-0007q','noelia','sofia','aragon','solis','1973-09-09','f','88901243','Entrada ciudad sandino 7 cuadras al norte',1);
call SP_Insertar_Personal('448-1504933-0001v','marvin','rafael','meza','pineda','1993-04-15','m','75201807','sabana grande, villa jerusalem',1);
call SP_Insertar_Personal('448-1504993-0001v','maCOS','rAMON','mENDOZA','pEREZ','1993-04-15','m','75201807','sabana grande, villa jerusalem',1);

call SP_Insertar_Personal('001-1504993-4101v','josue','jacinto','mEndieta','roa','1993-04-15','m','75201807','sabana grande, villa jerusalem',1);
call SP_Insertar_Personal('001-1504993-3101v','maria','liliana','ramirez','picado','1993-04-15','f','75201807','sabana grande, villa jerusalem',1);

select * from personal;
update personal set CONTRA =  aes_encrypt(CONTRA,'jabalises') where ID_CARGO = 1; /*actuliazando el formato de las contraseñas*/

/*INSERTANDO LAS MODALIDADES*/
select * from modalidad;
INSERT INTO MODALIDAD (DESCRIPCION) VALUES ("PREESCOLAR COMUNITARIO");
INSERT INTO MODALIDAD (DESCRIPCION) VALUES ("PREESCOLAR FORMAL");
INSERT INTO MODALIDAD (DESCRIPCION) VALUES ("PREESCOLAR MULTINIVEL");
INSERT INTO MODALIDAD (DESCRIPCION) VALUES ("PRIMARIA REGULAR");
INSERT INTO MODALIDAD (DESCRIPCION) VALUES ("PRRIMARIA EXTRAEDAD");
INSERT INTO MODALIDAD (DESCRIPCION) VALUES ("SECUNDARIA DIURNA");
INSERT INTO MODALIDAD (DESCRIPCION) VALUES ("SECUNDARIA NOCTURNA");
INSERT INTO MODALIDAD (DESCRIPCION) VALUES ("SECUNDARIA POR ENCUENTRO");


/*INSERTANDO SECCIONES*/
SELECT * FROM SECCION;
INSERT INTO SECCION (DESCRIPCION) VALUES ("SECCION A");
INSERT INTO SECCION (DESCRIPCION) VALUES ("SECCION B");
INSERT INTO SECCION (DESCRIPCION) VALUES ("SECCION C");

/*INSERTANTO TURNO*/
SELECT * FROM TURNO;
INSERT INTO TURNO (DESCRIPCION,HORARIO) VALUES ("MATUTINO","7:00 AM - 12:00 MD");
INSERT INTO TURNO (DESCRIPCION,HORARIO) VALUES ("MATUTINO","8:00 AM - 11:00 AM");
INSERT INTO TURNO (DESCRIPCION,HORARIO) VALUES ("VESPERTINO","12:30 MD - 5:15 PM");
INSERT INTO TURNO (DESCRIPCION,HORARIO) VALUES ("SABATINO","8:00 AM - 4:00 PM");

/*INSERTANDO DIA*/
SELECT * FROM DIA;
INSERT INTO DIA (DESCRIPCION) VALUES ("LUNES");
INSERT INTO DIA (DESCRIPCION) VALUES ("MARTES");
INSERT INTO DIA (DESCRIPCION) VALUES ("MIERCOLES");
INSERT INTO DIA (DESCRIPCION) VALUES ("JUEVES");
INSERT INTO DIA (DESCRIPCION) VALUES ("VIERENES");
INSERT INTO DIA (DESCRIPCION) VALUES ("SABADO");

/*INSERTANDO ASIGNATURA*/
SELECT * FROM ASIGNATURA;
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("LENGUA Y LITERATURA");
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("MATEMATICAS");
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("APRENDER A EMPRENDER Y PROSPERAR");
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("CIENCIAS SOCIALES");
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("CIENCIAS NATURALES");
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("EDUCACION FISICA");
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("DERECHOS Y DIGNIDAD DE LA MUJER");
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("FISICA");
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("QUIMICA");
INSERT INTO ASIGNATURA (DESCRIPCION) VALUES ("BIOLOGIA");

/*INSERTANDO LOS HORARIOS DE CADA BLOQUE*/
SELECT * FROM HORARIO_BLOQUE;
SELECT * FROM HORARIO_DESIGNADO;

ALTER TABLE HORARIO_DESIGNADO AUTO_INCREMENT = 1;

SELECT * FROM HORARIO_DESIGNADO;
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 1","7:00 AM - 7:45 AM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 2","7:45 AM - 8:30 AM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 3","8:30 AM - 9:15 AM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 4","9:15 AM - 10:00 AM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 5","10:30 AM - 11:15 AM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 6","11:15 AM - 12:00 MD");

INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 1","12:30 MD - 1:15 PM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 2","1:15 PM - 2:00 PM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 3","2:00 PM - 2:45 PM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 4","2:45 PM - 3:30 PM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 5","3:45 PM - 4:30 PM");
INSERT INTO horario_designado (DESCRIPCION,HORARIO) VALUES ("BLOQUE 6","4:30 PM - 5:15 PM");

select * from grado;
INSERT INTO GRADO(DESCRIPCION) VALUES ("I NIVEL");
INSERT INTO GRADO(DESCRIPCION) VALUES ("II NIVEL");
INSERT INTO GRADO(DESCRIPCION) VALUES ("III NIVEL");
INSERT INTO GRADO(DESCRIPCION) VALUES ("PRIMER GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("SEGUNDO GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("TERCER GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("CUARTO GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("QUINTO GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("SEXTO GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("SEPTIMO GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("OCTAVO GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("NOVENO GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("DECIMO GRADO");
INSERT INTO GRADO(DESCRIPCION) VALUES ("UNDECIMO GRADO");


SELECT * FROM PERSONAL WHERE ID_CARGO =1;
SELECT * FROM GRADO;
SELECT * FROM SECCION;
SELECT * FROM TURNO;
SELECT * FROM MODALIDAD;
SELECT * FROM GRUPO;


select * from asignatura;


SELECT * FROM asignatura;
CALL SP_Insertar_Asigantura("CRECIENDO EN VALORES");
CALL SP_Insertar_Asigantura("EDUCACION PARA APRENDER, EMPREDER Y PROSPERAR");
CALL SP_Insertar_Asigantura("TALLER DE ARTE Y CULTURA");
CALL SP_Insertar_Asigantura("LENGUA EXTRANJERA");
CALL SP_Insertar_Asigantura("HISTORIA");
CALL SP_Insertar_Asigantura("ASIGNATURA DE PRUEBA");

SELECT * FROM ASIGNATURA;
UPDATE ASIGNATURA SET ESTADO = 0 WHERE ID =15



SELECT * FROM DIA;
SELECT * FROM TURNO;
select * from horario_designado;
select * from horario_bloque;
alter table horario_bloque auto_increment = 0; /*sirve para reiniciar el contador de la tabla*/

/*MATUTINO*/
/*Insertando los bloques para el dia lunes ID= 1*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (1,1,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (2,1,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (3,1,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (4,1,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (5,1,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (6,1,1);
SELECT * FROM HORARIO_BLOQUE;
/*Insertando los bloques para el dia martes ID= 2*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (1,1,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (2,1,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (3,1,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (4,1,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (5,1,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (6,1,2);

/*Insertando los bloques para el dia miercoles ID= 3*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (1,1,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (2,1,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (3,1,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (4,1,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (5,1,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (6,1,3);

/*Insertando los bloques para el dia jueves ID= 4*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (1,1,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (2,1,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (3,1,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (4,1,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (5,1,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (6,1,4);

/*Insertando los bloques para el dia viernes ID= 5*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (1,1,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (2,1,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (3,1,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (4,1,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (5,1,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (6,1,5);



/*VESPERTINO*/
/*Insertando los bloques para el dia lunes ID= 1*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (7,3,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (8,3,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (9,3,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (10,3,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (11,3,1);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (12,3,1);


select * from turno;
select * from horario_designado;
/*Insertando los bloques para el dia martes ID= 2*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (7,3,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (8,3,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (9,3,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (10,3,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (11,3,2);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (12,3,2);

/*Insertando los bloques para el dia miercoles ID= 3*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (7,3,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (8,3,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (9,3,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (10,3,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (11,3,3);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (12,3,3);

/*Insertando los bloques para el dia jueves ID= 4*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (7,3,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (8,3,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (9,3,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (10,3,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (11,3,4);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (12,3,4);

/*Insertando los bloques para el dia viernes ID= 5*/
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (7,3,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (8,3,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (9,3,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (10,3,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (11,3,5);
insert into horario_bloque(ID_HORARIO_DESIGNADO,ID_TURNO,ID_DIA) values (12,3,5);


/*Insertando valores a la tabla grupo*/

/*TURNO MATUTINO*/
/*Ingresando primer grado seccion A y B*/
CALL SP_Insertar_Grupo(4,1,1,4,'001-070985-0032X');
CALL SP_Insertar_Grupo(4,2,1,4,'001-070988-0032W');

/*Ingresando SEGUNDO grado seccion A y B*/
CALL SP_Insertar_Grupo(5,1,1,4,'001-070989-0041P');
CALL SP_Insertar_Grupo(5,2,1,4,'001-070989-0239L');

/*Ingresando TERCERO grado seccion A y B*/
CALL SP_Insertar_Grupo(6,1,1,4,'001-070991-0011Q');
CALL SP_Insertar_Grupo(6,2,1,4,'001-070992-0031X');

/*Ingresando CUARTO grado seccion A y B*/
CALL SP_Insertar_Grupo(7,1,1,4,'001-070997-0031X');
CALL SP_Insertar_Grupo(7,2,1,4,'001-070999-0043W');

/*Ingresando quinto grado seccion A y B*/
CALL SP_Insertar_Grupo(8,1,1,4,'001-070999-0231S');
CALL SP_Insertar_Grupo(8,2,1,4,'001-071070-0129X');

/*Ingresando sexto grado seccion A y B*/
CALL SP_Insertar_Grupo(9,1,1,4,'001-071072-0009A');
CALL SP_Insertar_Grupo(9,2,1,4,'001-071073-0007Q');

/*TURNO VESPERTINO*/
/*Ingresando primer grado seccion A y B*/
CALL SP_Insertar_Grupo(4,1,3,4,'001-071080-0018U');
CALL SP_Insertar_Grupo(4,2,3,4,'001-071082-0129X');

/*Ingresando SEGUNDO grado seccion A y B*/
CALL SP_Insertar_Grupo(5,1,3,4,'001-071087-0023Z');
CALL SP_Insertar_Grupo(5,2,3,4,'001-071089-0018K');

/*Ingresando TERCERO grado seccion A y B*/
CALL SP_Insertar_Grupo(6,1,3,4,'001-071089-0018U');
CALL SP_Insertar_Grupo(6,2,3,4,'001-071090-0048H');

/*Ingresando CUARTO grado seccion A y B*/
CALL SP_Insertar_Grupo(7,1,3,4,'001-071091-0113Z');
CALL SP_Insertar_Grupo(7,2,3,4,'001-071097-3248G');

/*Ingresando quinto grado seccion A y B*/
CALL SP_Insertar_Grupo(8,1,3,4,'001-071099-0148Y');
CALL SP_Insertar_Grupo(8,2,3,4,'001-100494-0001V');

/*Ingresando sexto grado seccion A y B*/
CALL SP_Insertar_Grupo(9,1,3,4,'001-180990-0004Z');
CALL SP_Insertar_Grupo(9,2,3,4,'001-230890-0031X');


/*======================================*/
/*INSERTANDO VALORES A LA TABLA BLOQUE DE CLASE*/
SELECT * FROM BLOQUE_CLASE;
select * from personal where id_cargo = 1 AND ESTADO = 1; /*Muestra los docentes que tienen grupos guiados*/



select * from grado;
select * from turno;
select * from grupo;
select * from asignatura;
select * from modalidad;
select * from seccion;
select * from horario_bloque;
select * from bloque_clase;
select * from personal;

select * from personal where id_cargo = 1 AND ESTADO = 1;

alter table bloque_clase auto_increment = 0; /*reinicio de contador*/
select * from bloque_clase;

/*Insertando clases para la maestra SARAI SOFIA MERCADO 001-070985-0032X */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/

/*LUNES*/
call SP_Insertar_Bloque_Clase(1,1,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(2,1,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(3,2,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(4,2,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(5,6,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(6,6,3,'001-070985-0032X');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,14,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(8,1,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(9,11,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(10,13,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(11,13,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(12,2,3,'001-070985-0032X');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,1,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(14,1,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(15,2,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(16,6,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(17,12,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(18,13,3,'001-070985-0032X');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(20,2,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(21,1,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(22,6,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(23,13,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(24,12,3,'001-070985-0032X');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(26,2,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(27,1,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(28,11,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(29,13,3,'001-070985-0032X');
call SP_Insertar_Bloque_Clase(30,12,3,'001-070985-0032X');






/*Insertando clases para la maestra SARAI MARTINEZ 001-070988-0032W */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/

/*LUNES*/
call SP_Insertar_Bloque_Clase(1,1,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(2,1,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(3,2,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(4,2,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(5,6,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(6,6,4,'001-070988-0032W');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,14,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(8,1,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(9,11,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(10,13,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(11,13,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(12,2,4,'001-070988-0032W');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,1,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(14,1,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(15,2,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(16,6,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(17,12,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(18,13,4,'001-070988-0032W');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(20,2,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(21,1,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(22,6,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(23,13,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(24,12,4,'001-070988-0032W');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(26,2,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(27,1,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(28,11,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(29,13,4,'001-070988-0032W');
call SP_Insertar_Bloque_Clase(30,12,4,'001-070988-0032W');


/*Insertando clases para la maestra MAJORIE MEMBREÑO 001-070989-0041P */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(1,1,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(2,1,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(3,14,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(4,12,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(5,2,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(6,11,5,'001-070989-0041P');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,14,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(8,1,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(9,11,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(10,13,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(11,13,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(12,2,5,'001-070989-0041P');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,1,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(14,1,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(15,2,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(16,6,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(17,12,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(18,13,5,'001-070989-0041P');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(20,2,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(21,1,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(22,6,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(23,13,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(24,12,5,'001-070989-0041P');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(26,2,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(27,1,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(28,11,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(29,13,5,'001-070989-0041P');
call SP_Insertar_Bloque_Clase(30,12,5,'001-070989-0041P');

SELECT * FROM BLOQUE_CLASE;


/*Insertando clases para la maestra MARIA ARAGON 001-070989-0239L */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(1,1,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(2,1,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(3,14,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(4,12,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(5,2,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(6,11,6,'001-070989-0239L');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,14,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(8,1,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(9,11,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(10,13,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(11,13,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(12,2,6,'001-070989-0239L');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,1,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(14,1,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(15,2,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(16,6,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(17,12,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(18,13,6,'001-070989-0239L');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(20,2,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(21,1,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(22,6,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(23,13,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(24,12,6,'001-070989-0239L');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(26,2,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(27,1,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(28,11,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(29,13,6,'001-070989-0239L');
call SP_Insertar_Bloque_Clase(30,12,6,'001-070989-0239L');




/*TERCER GRADO TURNO MATUTINO*/


/*Insertando clases para la maestra ANDREA SILVA 001-070991-0011Q */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(1,1,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(2,1,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(3,4,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(4,12,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(5,2,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(6,5,7,'001-070991-0011Q');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,1,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(8,1,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(9,11,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(10,13,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(11,5,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(12,2,7,'001-070991-0011Q');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,6,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(14,4,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(15,2,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(16,1,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(17,4,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(18,4,7,'001-070991-0011Q');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(20,2,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(21,1,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(22,6,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(23,5,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(24,5,7,'001-070991-0011Q');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(26,2,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(27,1,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(28,11,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(29,13,7,'001-070991-0011Q');
call SP_Insertar_Bloque_Clase(30,12,7,'001-070991-0011Q');


/*Insertando clases para la maestra MARCO ALEMAN 001-070992-0031X */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(1,1,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(2,1,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(3,4,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(4,12,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(5,2,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(6,5,8,'001-070992-0031X');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,1,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(8,1,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(9,1,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(10,13,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(11,5,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(12,2,8,'001-070992-0031X');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,6,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(14,4,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(15,2,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(16,1,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(17,4,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(18,4,8,'001-070992-0031X');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(20,2,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(21,1,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(22,6,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(23,5,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(24,5,8,'001-070992-0031X');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(26,2,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(27,1,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(28,11,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(29,13,8,'001-070992-0031X');
call SP_Insertar_Bloque_Clase(30,12,8,'001-070992-0031X');


/*CUARTO GRADO*/
/*Insertando clases para la maestra MEYLING PEREZ 001-070997-0031X */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(1,2,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(2,1,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(3,4,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(4,5,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(5,6,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(6,14,9,'001-070997-0031X');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,1,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(8,2,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(9,14,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(10,13,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(11,5,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(12,6,9,'001-070997-0031X');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,6,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(14,4,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(15,2,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(16,1,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(17,4,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(18,4,9,'001-070997-0031X');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(20,5,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(21,12,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(22,14,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(23,1,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(24,4,9,'001-070997-0031X');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(26,2,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(27,1,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(28,11,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(29,13,9,'001-070997-0031X');
call SP_Insertar_Bloque_Clase(30,12,9,'001-070997-0031X');


/*CUARTO GRADO*/
/*Insertando clases para la maestra SEBASTIAN MEZA 001-070999-0043W */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(5,2,11,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(2,1,11,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(3,4,11,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(4,5,11,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(5,6,11,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(6,14,11,'001-070999-0043W');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,1,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(8,2,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(9,14,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(10,13,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(11,5,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(12,6,10,'001-070999-0043W');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,6,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(14,4,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(15,2,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(16,1,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(17,4,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(18,4,10,'001-070999-0043W');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(20,5,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(21,12,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(22,14,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(23,1,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(24,4,10,'001-070999-0043W');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(26,2,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(27,1,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(28,11,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(29,13,10,'001-070999-0043W');
call SP_Insertar_Bloque_Clase(30,12,10,'001-070999-0043W');


/*------------------------------------------------------*/
/*QUINTO GRADO*/
/*Insertando clases para la maestra ESTELA PEREZ 001-070999-0231S */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(1,5,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(2,1,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(3,4,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(4,5,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(5,6,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(6,14,11,'001-070999-0231S');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,1,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(8,2,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(9,14,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(10,13,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(11,5,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(12,6,11,'001-070999-0231S');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,6,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(14,4,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(15,2,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(16,1,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(17,4,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(18,4,11,'001-070999-0231S');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(20,5,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(21,12,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(22,14,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(23,1,11, '001-070999-0231S');
call SP_Insertar_Bloque_Clase(24,4,11,'001-070999-0231S');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(26,2,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(27,1,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(28,11,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(29,13,11,'001-070999-0231S');
call SP_Insertar_Bloque_Clase(30,12,11,'001-070999-0231S');


/*QUINTO GRADO*/
/*Insertando clases para la maestra MERCEDES SAAVEDRA 001-071070-0129X */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(1,5,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(2,1,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(3,4,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(4,5,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(5,6,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(6,14,12,'001-071070-0129X');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,1,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(8,2,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(9,14,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(10,13,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(11,5,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(12,6,12,'001-071070-0129X');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,6,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(14,4,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(15,2,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(16,1,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(17,4,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(18,4,12,'001-071070-0129X');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(20,5,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(21,12,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(22,14,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(23,1,12, '001-071070-0129X');
call SP_Insertar_Bloque_Clase(24,4,12,'001-071070-0129X');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(26,2,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(27,1,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(28,11,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(29,13,12,'001-071070-0129X');
call SP_Insertar_Bloque_Clase(30,12,12,'001-071070-0129X');


/*SEXTO GRADO*/
/*Insertando clases para la maestra ATALIA MONTERO 001-071072-0009A */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(1,5,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(2,1,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(3,4,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(4,5,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(5,6,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(6,14,13,'001-071072-0009A');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,1,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(8,2,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(9,14,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(10,13,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(11,5,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(12,6,13,'001-071072-0009A');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,6,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(14,4,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(15,2,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(16,1,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(17,4,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(18,4,13,'001-071072-0009A');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(20,5,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(21,12,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(22,14,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(23,1,13, '001-071072-0009A');
call SP_Insertar_Bloque_Clase(24,4,13,'001-071072-0009A');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(26,2,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(27,1,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(28,11,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(29,13,13,'001-071072-0009A');
call SP_Insertar_Bloque_Clase(30,12,13,'001-071072-0009A');

/*SEXTO GRADO*/
/*Insertando clases para la maestra NOELIA ARAGON 001-071073-0007Q */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(1,5,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(2,1,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(3,4,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(4,5,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(5,6,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(6,14,14,'001-071073-0007Q');

/*MARTES*/
call SP_Insertar_Bloque_Clase(7,1,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(8,2,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(9,14,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(10,13,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(11,5,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(12,6,14,'001-071073-0007Q');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(13,6,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(14,4,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(15,2,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(16,1,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(17,4,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(18,4,14,'001-071073-0007Q');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(19,2,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(20,5,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(21,12,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(22,14,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(23,1,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(24,4,14,'001-071073-0007Q');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(25,2,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(26,2,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(27,1,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(28,11,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(29,13,14,'001-071073-0007Q');
call SP_Insertar_Bloque_Clase(30,12,14,'001-071073-0007Q');

/*PRIMARIA VESPERTINO*/
/*PRIMER GRADO*/
/*Insertando clases para la maestra ANABEL OROZCO 001-071080-0018U */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES */
call SP_Insertar_Bloque_Clase(31,1,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(32,1,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(33,2,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(34,2,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(35,6,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(36,6,15,'001-071080-0018U');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,14,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(38,1,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(39,11,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(40,13,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(41,13,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(42,2,15,'001-071080-0018U');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,1,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(44,1,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(45,2,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(46,6,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(47,12,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(48,13,15,'001-071080-0018U');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(50,2,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(51,1,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(52,6,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(53,13,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(54,12,15,'001-071080-0018U');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(56,2,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(57,1,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(58,11,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(59,13,15,'001-071080-0018U');
call SP_Insertar_Bloque_Clase(60,12,15,'001-071080-0018U');


/*Insertando clases para la maestra URANIA ARROLIGA 001-071082-0129X */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/

/*LUNES*/
call SP_Insertar_Bloque_Clase(31,1,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(32,1,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(33,2,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(34,2,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(35,6,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(36,6,16,'001-071082-0129X');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,14,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(38,1,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(39,11,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(40,13,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(41,13,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(42,2,16,'001-071082-0129X');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,1,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(44,1,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(45,2,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(46,6,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(47,12,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(48,13,16,'001-071082-0129X');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(50,2,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(51,1,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(52,6,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(53,13,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(54,12,16,'001-071082-0129X');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(56,2,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(57,1,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(58,11,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(59,13,16,'001-071082-0129X');
call SP_Insertar_Bloque_Clase(60,12,16,'001-071082-0129X');

/*SEGUNDO GRADO VESPERTINO*/
/*Insertando clases para la maestra JERONIMA MONTERO 001-071087-0023Z */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,1,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(32,1,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(33,14,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(34,12,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(35,2,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(36,11,17,'001-071087-0023Z');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,14,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(38,1,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(39,11,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(40,13,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(41,13,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(42,2,17,'001-071087-0023Z');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,1,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(44,1,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(45,2,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(46,6,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(47,12,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(48,13,17,'001-071087-0023Z');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(50,2,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(51,1,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(52,6,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(53,13,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(54,12,17,'001-071087-0023Z');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(56,2,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(57,1,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(58,11,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(59,13,17,'001-071087-0023Z');
call SP_Insertar_Bloque_Clase(60,12,17,'001-071087-0023Z');

SELECT * FROM BLOQUE_CLASE;

/*SEGUNDO GRADO VESPERTINO*/
/*Insertando clases para la maestra BERTHA ORDOÑEZ 001-071089-0018K */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,1,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(32,1,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(33,14,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(34,12,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(35,2,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(36,11,18,'001-071089-0018K');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,14,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(38,1,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(39,11,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(40,13,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(41,13,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(42,2,18,'001-071089-0018K');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,1,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(44,1,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(45,2,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(46,6,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(47,12,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(48,13,18,'001-071089-0018K');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(50,2,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(51,1,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(52,6,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(53,13,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(54,12,18,'001-071089-0018K');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(56,2,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(57,1,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(58,11,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(59,13,18,'001-071089-0018K');
call SP_Insertar_Bloque_Clase(60,12,18,'001-071089-0018K');


/*TERCER GRADO TURNO VESPERTINO*/


/*Insertando clases para la maestra BETHANIA SALGADO 001-071089-0018U */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,1,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(32,1,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(33,4,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(34,12,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(35,2,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(36,5,19,'001-071089-0018U');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,1,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(38,1,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(39,11,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(40,13,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(41,5,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(42,2,19,'001-071089-0018U');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,6,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(44,4,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(45,2,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(46,1,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(47,4,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(48,4,19,'001-071089-0018U');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(50,2,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(51,1,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(52,6,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(53,5,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(54,5,19,'001-071089-0018U');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(56,2,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(57,1,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(58,11,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(59,13,19,'001-071089-0018U');
call SP_Insertar_Bloque_Clase(60,12,19,'001-071089-0018U');


/*Insertando clases para la maestra IRIS SOLIS 001-071090-0048H */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,1,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(32,1,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(33,4,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(34,12,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(35,2,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(36,5,20,'001-071090-0048H');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,1,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(38,1,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(39,1,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(40,13,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(41,5,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(42,2,20,'001-071090-0048H');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,6,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(44,4,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(45,2,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(46,1,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(47,4,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(48,4,20,'001-071090-0048H');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(50,2,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(51,1,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(52,6,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(53,5,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(54,5,20,'001-071090-0048H');

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(56,2,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(57,1,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(58,11,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(59,13,20,'001-071090-0048H');
call SP_Insertar_Bloque_Clase(60,12,20,'001-071090-0048H');

/*CUARTO GRADO VESPERTINO*/
/*Insertando clases para la maestro MARTIN CACERES 001-071091-0113Z */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,2,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(32,1,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(33,4,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(34,5,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(35,6,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(36,14,21,'001-071091-0113Z');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,1,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(38,2,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(39,14,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(40,13,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(41,5,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(42,6,21,'001-071091-0113Z');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,6,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(44,4,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(45,2,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(46,1,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(47,4,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(48,4,21,'001-071091-0113Z');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(50,5,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(51,12,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(52,14,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(53,1,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(54,4,21,'001-071091-0113Z');


select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(56,2,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(57,1,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(58,11,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(59,13,21,'001-071091-0113Z');
call SP_Insertar_Bloque_Clase(60,12,21,'001-071091-0113Z');


/*CUARTO GRADO VESPERTINO*/
/*Insertando clases para la maestra IRMA RODRIGUEZ 001-071097-3248G */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,2,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(32,1,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(33,4,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(34,5,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(35,6,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(36,14,22,'001-071097-3248G ');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,1,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(38,2,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(39,14,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(40,13,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(41,5,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(42,6,22,'001-071097-3248G ');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,6,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(44,4,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(45,2,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(46,1,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(47,4,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(48,4,22,'001-071097-3248G ');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(50,5,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(51,12,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(52,14,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(53,1,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(54,4,22,'001-071097-3248G ');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(56,2,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(57,1,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(58,11,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(59,13,22,'001-071097-3248G ');
call SP_Insertar_Bloque_Clase(60,12,22,'001-071097-3248G ');

/*QUINTO GRADO VESPERTINO*/
/*Insertando clases para la maestra REYNA VELASZQUEZ 001-071099-0148Y */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,5,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(32,1,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(33,4,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(34,5,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(35,6,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(36,14,23,'001-071099-0148Y');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,1,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(38,2,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(39,14,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(40,13,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(41,5,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(42,6,23,'001-071099-0148Y');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,6,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(44,4,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(45,2,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(46,1,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(47,4,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(48,4,23,'001-071099-0148Y');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(50,5,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(51,12,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(52,14,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(53,1,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(54,4,23,'001-071099-0148Y');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(56,2,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(57,1,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(58,11,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(59,13,23,'001-071099-0148Y');
call SP_Insertar_Bloque_Clase(60,12,23,'001-071099-0148Y');


/*QUINTO GRADO VESPERTINO*/
/*Insertando clases para la maestra MARIA URROZ 001-100494-0001V */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,5,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(32,1,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(33,4,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(34,5,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(35,6,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(36,14,24,'001-100494-0001V');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,1,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(38,2,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(39,14,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(40,13,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(41,5,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(42,6,24,'001-100494-0001V');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,6,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(44,4,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(45,2,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(46,1,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(47,4,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(48,4,24,'001-100494-0001V');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(50,5,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(51,12,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(52,14,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(53,1,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(54,4,24,'001-100494-0001V');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(56,2,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(57,1,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(58,11,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(59,13,24,'001-100494-0001V');
call SP_Insertar_Bloque_Clase(60,12,24,'001-100494-0001V');


/*SEXTO GRADO VESPERTINO*/
/*Insertando clases para la maestra SOFIA MARTINEZ 001-180990-0004Z*/
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,5,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(32,1,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(33,4,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(34,5,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(35,6,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(36,14,25,'001-180990-0004Z');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,1,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(38,2,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(39,14,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(40,13,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(41,5,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(42,6,25,'001-180990-0004Z');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,6,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(44,4,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(45,2,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(46,1,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(47,4,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(48,4,25,'001-180990-0004Z');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(50,5,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(51,12,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(52,14,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(53,1,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(54,4,25,'001-180990-0004Z');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(56,2,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(57,1,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(58,11,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(59,13,25,'001-180990-0004Z');
call SP_Insertar_Bloque_Clase(60,12,25,'001-180990-0004Z');

/*SEXTO GRADO VESPERTINO*/
/*Insertando clases para la maestra DINA CASTRO 001-230890-0031X */
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
select * from asignatura;
select * from personal;
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,5,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(32,1,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(33,4,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(34,5,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(35,6,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(36,14,26,'001-230890-0031X');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,1,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(38,2,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(39,14,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(40,13,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(41,5,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(42,6,26,'001-230890-0031X');

select * from asignatura;
select * from vw_grupos_registrados;
/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,6,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(44,4,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(45,2,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(46,1,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(47,4,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(48,4,26,'001-230890-0031X');


select * from asignatura;
select * from vw_grupos_registrados;
/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(50,5,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(51,12,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(52,14,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(53,1,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(54,4,26,'001-230890-0031X');
use proyectotienda;

select * from asignatura;
select * from vw_grupos_registrados;
/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(56,2,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(57,1,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(58,11,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(59,13,26,'001-230890-0031X');
call SP_Insertar_Bloque_Clase(60,12,26,'001-230890-0031X');





/*SECCION PARA VERFICAR*/
select * from cargo;
CALL SP_Horario_Grupo(15);

select * from bloque_clase where id_grupo = 15;


select * from vw_grupos_registrados; /*SIRVE PARA VER LA INFORMACION DE CADA GRUPO, USAR PARA UBICAR AL MAESTRO GUIA DEL GRUPO*/
select * from horario_bloque; /*PARA VER EL ID DE LOS HORARIOS ESTABLECIDOS*/
select * from vw_bloque_info; 
SELECT count(*) FROM PERSONAL where ESTADO = 0 and ID_CARGO = 1;
SELECT * FROM BLOQUE;
select * from grupo;

SELECT * FROM ACTIVIDAD;
SELECT* FROM ASIGNATURA;



/*INSERTANDO GRUPOS DE SECUNDARIA*/
/*SEPTIMO GRADO A Y B*/
/*GRADO / SECCION / TURNO / MODALIDAD / DOCENTE*/
call SP_Insertar_Grupo(10,1,3,6,'001-1504993-3101V');
call SP_Insertar_Grupo(10,2,3,6,'001-1504993-4101V');

/*OCTAVO GRADO A Y B*/
/*GRADO / SECCION / TURNO / MODALIDAD / DOCENTE*/
call SP_Insertar_Grupo(11,1,3,6,'002-071094-0148B');
call SP_Insertar_Grupo(11,2,3,6,'002-071097-0148L');

/*NOVENO GRADO A Y B*/
/*GRADO / SECCION / TURNO / MODALIDAD / DOCENTE*/
call SP_Insertar_Grupo(12,1,3,6,'440-071091-21480');
call SP_Insertar_Grupo(12,2,3,6,'440-071094-0148Y');

/*DECIMO GRADO A Y B*/
/*GRADO / SECCION / TURNO / MODALIDAD / DOCENTE*/
call SP_Insertar_Grupo(13,1,3,6,'443-070990-0012P');
call SP_Insertar_Grupo(13,2,3,6,'443-071091-0113Z');

/*UNDECIMO GRADO A Y B*/
/*GRADO / SECCION / TURNO / MODALIDAD / DOCENTE*/
call SP_Insertar_Grupo(14,1,3,6,'448-1504993-0001V');
call SP_Insertar_Grupo(14,2,3,6,'449-071080-0148Y');

/*INSERTANDO HORARIO DE CLASES DE SECUNDARIA*/
/*/ ID_HORARIO_BLOQUE / ID_ASIGNATURA / ID_GRUPO / CEDULA_DOCENTE*/
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,2,27,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(32,1,27,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(33,4,27,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(34,3,27,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(35,13,27,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(36,14,27,'440-071091-21480');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,4,27,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(38,6,27,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(39,2,27,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(40,13,27,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(41,1,27,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(42,1,27,'001-1504993-3101V');

/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,14,27,'440-071091-21480');
call SP_Insertar_Bloque_Clase(44,3,27,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(45,3,27,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(46,4,27,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(47,13,27,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(48,13,27,'449-071080-0148Y');

/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,4,27,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(50,4,27,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(51,6,27,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(52,14,27,'440-071091-21480');
call SP_Insertar_Bloque_Clase(53,1,27,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(54,3,27,'002-071094-0148B');

/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,6,27,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(56,6,27,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(57,3,27,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(58,14,27,'440-071091-21480');
call SP_Insertar_Bloque_Clase(59,2,27,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(60,2,27,'001-1504993-4101V');

/*PIMER AÑO B*/
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,3,28,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(32,3,28,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(33,6,28,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(34,1,28,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(35,4,28,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(36,2,28,'001-1504993-4101V');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,2,28,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(38,2,28,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(39,14,28,'440-071091-21480');
call SP_Insertar_Bloque_Clase(40,4,28,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(41,3,28,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(42,6,28,'443-071091-0113Z');

/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,4,28,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(44,4,28,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(45,14,28,'440-071091-21480');
call SP_Insertar_Bloque_Clase(46,6,28,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(47,1,28,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(48,2,28,'001-1504993-4101V');

/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,13,28,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(50,13,28,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(51,2,28,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(52,1,28,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(53,6,28,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(54,4,28,'002-071097-0148L');

/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,1,28,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(56,4,28,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(57,13,28,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(58,2,28,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(59,3,28,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(60,14,28,'440-071091-21480');

/*SEGUNDO AÑO A*/
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,14,29,'440-071091-21480');
call SP_Insertar_Bloque_Clase(32,14,29,'440-071091-21480');
call SP_Insertar_Bloque_Clase(33,1,29,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(34,2,29,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(35,2,29,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(36,6,29,'443-071091-0113Z');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,3,29,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(38,3,29,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(39,1,29,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(40,6,29,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(41,2,29,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(42,4,29,'002-071097-0148L');

/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,2,29,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(44,2,29,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(45,1,29,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(46,13,29,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(47,6,29,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(48,3,29,'002-071094-0148B');

/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,1,29,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(50,1,29,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(51,3,29,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(52,2,29,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(53,14,29,'440-071091-21480');
call SP_Insertar_Bloque_Clase(54,6,29,'443-071091-0113Z');

/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,29,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(56,14,29,'440-071091-21480');
call SP_Insertar_Bloque_Clase(57,14,29,'440-071091-21480');
call SP_Insertar_Bloque_Clase(58,1,29,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(59,4,29,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(60,13,29,'449-071080-0148Y');

/*SEGUNDO AÑO B*/
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,6,30,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(32,13,30,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(33,13,30,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(34,4,30,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(35,3,30,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(36,1,30,'001-1504993-3101V');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,1,30,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(38,4,30,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(39,3,30,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(40,14,30,'440-071091-21480');
call SP_Insertar_Bloque_Clase(41,14,30,'440-071091-21480');
call SP_Insertar_Bloque_Clase(42,2,30,'001-1504993-4101V');

/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,6,30,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(44,13,30,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(45,13,30,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(46,1,30,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(47,3,30,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(48,4,30,'002-071097-0148L');

/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,3,30,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(50,6,30,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(51,4,30,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(52,13,30,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(53,2,30,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(54,1,30,'001-1504993-3101V');

/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,3,30,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(56,3,30,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(57,1,30,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(58,4,30,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(59,6,30,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(60,6,30,'443-071091-0113Z');

/*TERCER AÑO A*/
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,8,31,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(32,8,31,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(33,9,31,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(34,6,31,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(35,1,31,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(36,13,31,'449-071080-0148Y');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,14,31,'440-071091-21480');
call SP_Insertar_Bloque_Clase(38,14,31,'440-071091-21480');
call SP_Insertar_Bloque_Clase(39,6,31,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(40,9,31,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(41,9,31,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(42,13,31,'449-071080-0148Y');

/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,13,31,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(44,1,31,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(45,6,31,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(46,2,31,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(47,2,31,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(48,14,31,'440-071091-21480');

/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,2,31,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(50,2,31,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(51,13,31,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(52,6,31,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(53,13,31,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(54,8,31,'002-071094-0148B');

/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,9,31,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(56,9,31,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(57,2,31,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(58,6,31,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(59,8,31,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(60,1,31,'001-1504993-3101V');

/*TERCER AÑO B*/
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,1,32,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(32,6,32,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(33,2,32,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(34,14,32,'440-071091-21480');
call SP_Insertar_Bloque_Clase(35,14,32,'440-071091-21480');
call SP_Insertar_Bloque_Clase(36,9,32,'002-071097-0148L');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,13,32,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(38,13,32,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(39,9,32,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(40,1,32,'448-1504993-0001V');
call SP_Insertar_Bloque_Clase(41,6,32,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(42,14,32,'440-071091-21480');

/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,8,32,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(44,6,32,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(45,2,32,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(46,14,32,'440-071091-21480');
call SP_Insertar_Bloque_Clase(47,14,32,'440-071091-21480');
call SP_Insertar_Bloque_Clase(48,1,32,'448-1504993-0001V');

/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,14,32,'440-071091-21480');
call SP_Insertar_Bloque_Clase(50,14,32,'440-071091-21480');
call SP_Insertar_Bloque_Clase(51,1,32,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(52,8,32,'002-071094-0148B');
call SP_Insertar_Bloque_Clase(53,9,32,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(54,13,32,'449-071080-0148Y');

/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,2,32,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(56,2,32,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(57,9,32,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(58,13,32,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(59,1,32,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(60,8,32,'002-071094-0148B');


/*CUARTO AÑO A*/
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,13,33,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(32,2,33,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(33,14,33,'440-071091-21480');
call SP_Insertar_Bloque_Clase(34,13,33,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(35,6,33,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(36,8,33,'002-071094-0148B');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,6,33,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(38,1,33,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(39,8,33,'440-071094-0148Y');
call SP_Insertar_Bloque_Clase(40,2,33,'001-1504993-4101V');
call SP_Insertar_Bloque_Clase(41,13,33,'449-071080-0148Y');
call SP_Insertar_Bloque_Clase(42,8,33,'002-071094-0148B');

/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,1,33,'001-1504993-3101V');
call SP_Insertar_Bloque_Clase(44,14,33,'440-071091-21480');
call SP_Insertar_Bloque_Clase(45,9,33,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(46,8,33,'440-071094-0148Y');
call SP_Insertar_Bloque_Clase(47,9,33,'002-071097-0148L');
call SP_Insertar_Bloque_Clase(48,6,33,'443-071091-0113Z');

/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,1,33,'448-1504993-0001V');
call SP_Insertar_Bloque_Clase(50,1,33,'448-1504993-0001V');
call SP_Insertar_Bloque_Clase(51,8,33,'440-071094-0148Y');
call SP_Insertar_Bloque_Clase(52,8,33,'440-071094-0148Y');
call SP_Insertar_Bloque_Clase(53,2,33,'443-070990-0012P');
call SP_Insertar_Bloque_Clase(54,2,33,'443-070990-0012P');

/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,14,33,'440-071091-21480');
call SP_Insertar_Bloque_Clase(56,6,33,'443-071091-0113Z');
call SP_Insertar_Bloque_Clase(57,9,33,'443-070990-0012P');
call SP_Insertar_Bloque_Clase(58,9,33,'443-070990-0012P');
call SP_Insertar_Bloque_Clase(59,1,33,'448-1504993-0001V');
call SP_Insertar_Bloque_Clase(60,8,33,'440-071094-0148Y');

/*CUARTO AÑO B*/
/*LUNES*/
call SP_Insertar_Bloque_Clase(31,6,34,'440-071094-0148Y');
call SP_Insertar_Bloque_Clase(32,2,34,'443-070990-0012P');
call SP_Insertar_Bloque_Clase(33,1,34,'448-1504993-0001V');
call SP_Insertar_Bloque_Clase(34,9,34,'443-070990-0012P');
call SP_Insertar_Bloque_Clase(35,9,34,'443-070990-0012P');
call SP_Insertar_Bloque_Clase(36,14,34,'440-071091-21480');

/*MARTES*/
call SP_Insertar_Bloque_Clase(37,6,34,'');
call SP_Insertar_Bloque_Clase(38,1,34,'');
call SP_Insertar_Bloque_Clase(39,8,34,'');
call SP_Insertar_Bloque_Clase(40,2,34,'');
call SP_Insertar_Bloque_Clase(41,13,34,'');
call SP_Insertar_Bloque_Clase(42,8,34,'');

/*MIERCOLES*/
call SP_Insertar_Bloque_Clase(43,1,34,'');
call SP_Insertar_Bloque_Clase(44,14,34,'');
call SP_Insertar_Bloque_Clase(45,9,34,'');
call SP_Insertar_Bloque_Clase(46,8,34,'');
call SP_Insertar_Bloque_Clase(47,9,34,'');
call SP_Insertar_Bloque_Clase(48,6,34,'');

/*JUEVES*/
call SP_Insertar_Bloque_Clase(49,1,34,'');
call SP_Insertar_Bloque_Clase(50,1,34,'');
call SP_Insertar_Bloque_Clase(51,8,34,'');
call SP_Insertar_Bloque_Clase(52,8,34,'');
call SP_Insertar_Bloque_Clase(53,2,34,'');
call SP_Insertar_Bloque_Clase(54,2,34,'');

/*VIERNES*/
call SP_Insertar_Bloque_Clase(55,14,34,'');
call SP_Insertar_Bloque_Clase(56,6,34,'');
call SP_Insertar_Bloque_Clase(57,9,34,'');
call SP_Insertar_Bloque_Clase(58,9,34,'');
call SP_Insertar_Bloque_Clase(59,1,34,'');
call SP_Insertar_Bloque_Clase(60,8,34,'');
/*
PROFESORES Y SUS ASIGNATURAS A IMPARTIR TURNO VESPERTINO
001-1504993-3101V	MARIA RAMIREZ	LENGUA Y LITERATURA 1 
001-1504993-4101V	JOSUE MENDIETA	MATEMATICAS			2
002-071094-0148B	FATIMA MOJICA	CIENCIAS SOCIALES	3 FISICA	 8
002-071097-0148L	ARELYS JALINA	CINECIAS NATURALES	4 QUIMICA	  9
440-071091-21480	FLOR PINEDA		LENGUA EXTRANJERA	14
440-071094-0148Y	ISABEL MEZA		FISICA			/////	8  /-LIBRE-/ y educacion fisica 6
443-070990-0012P	JORGE LEIVA		QUIMICA			/////	9  /-LIBRE-/ y matematicas  2
443-071091-0113Z	OSCAR CASTRO	EDUCACION FISICA	6
448-1504993-0001V	MACOS MENDOZA	BIOLOGIA		////	10 y lengua 1
449-071080-0148Y	CARMEN PINEDA	TALLER DE ARTE		13
*/
select*from Bloque_Clase where ID_HORARIO_BLOQUE=53 and CEDULA_DOCENTE = '001-1504993-4101V';
select * from grado;
select * from seccion;
select * from turno;
select * from modalidad;
SELECT * FROM PERSONAL where ESTADO = 0 and ID_CARGO = 1; /*DOCENTES SIN GRUPOS ASIGNADOS*/
select * from vw_grupos_registrados where modalidad = 'SECUNDARIA DIURNA'; /*SIRVE PARA VER LA INFORMACION DE CADA GRUPO, USAR PARA UBICAR AL MAESTRO GUIA DEL GRUPO*/
select* from PERSONAL  where HORAS_LABORALES <40;
call SP_Horario_Grupo(33);
/*CONSULTA PARA SABER HORAS LABORALES DE LOS DOCENTES DE SECUNDARIA*/
SELECT CEDULA,PRIMER_NOMBRE,PRIMER_APELLIDO,HORAS_LABORALES, G.ID_GRADO,G.ID_SECCION,G.ID_TURNO FROM PERSONAL P INNER JOIN GRUPO G ON P.CEDULA = G.CEDULA_DOCENTE 
WHERE G.ID > 26

