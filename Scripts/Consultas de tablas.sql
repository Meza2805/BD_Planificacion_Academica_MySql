/*CONSULTA PARA CONOCENER LOS HORARIOS DESIGNADO EN LA SEMANA*/
SELECT *FROM horario_bloque;
select * from turno;
select * from horario_designado;
select * from dia;

use planificacion_academica;
/*HORARIOS DESIGNADOS PARA EL TURNO MATUTINO*/
SELECT hb.ID,d.DESCRIPCION as DIA,hd.DESCRIPCION AS BLOQUE, hd.HORARIO, t.DESCRIPCION AS TURNO FROM horario_bloque hb INNER JOIN horario_designado hd on hb.ID_HORARIO_DESIGNADO = hd.ID
								inner join turno t on hb.ID_TURNO = t.ID
                                inner join dia d on hb.ID_DIA = d.ID WHERE t.DESCRIPCION = 'MATUTINO';
                                
/*HORARIOS DESIGNADOS PARA EL TURNO VESPERTINO*/
SELECT hb.ID,d.DESCRIPCION as DIA,hd.DESCRIPCION AS BLOQUE, hd.HORARIO, t.DESCRIPCION AS TURNO FROM horario_bloque hb INNER JOIN horario_designado hd on hb.ID_HORARIO_DESIGNADO = hd.ID
								inner join turno t on hb.ID_TURNO = t.ID
                                inner join dia d on hb.ID_DIA = d.ID WHERE t.DESCRIPCION = 'VESPERTINO';
                                
/*-----------------------------------------------------------------------------------------------------------------------*/
/*INFORMACION DE GRUPOS MATRICULADOS Y SUS PROFESORES GUIAS*/
select * from grado;
select * from turno;
select * from grupo;
select * from modalidad;
select * from seccion;
select * from personal where id_cargo = 1 AND ESTADO = 0;

/*TURNO MATUTINO*/
select   concat(p.PRIMER_NOMBRE  ,' ', p.PRIMER_APELLIDO) as DOCENTE_GUIA  ,gp.DESCRIPCION as GRADO, s.DESCRIPCION AS SECCION, t.DESCRIPCION AS TURNO, m.DESCRIPCION AS MODALIDAD, year( g.ANIO_ESCOLAR) AS  AÑO_ESCOLAR from grupo g inner join grado gp on g.ID_GRADO = gp.ID
					  inner join turno t on  g.ID_TURNO = t.ID
                      inner join modalidad m on g.ID_MODALIDAD = m.ID
                      inner join personal p on g.CEDULA_DOCENTE = p.CEDULA
                      inner join seccion s on g.ID_SECCION = s.ID WHERE t.DESCRIPCION = 'MATUTINO' order by gp.ID;
                      
/*TURNO VESPERTINO*/
select concat(p.PRIMER_NOMBRE  ,' ', p.PRIMER_APELLIDO) as DOCENTE_GUIA  ,gp.DESCRIPCION as GRADO, s.DESCRIPCION AS SECCION, t.DESCRIPCION AS TURNO, m.DESCRIPCION AS MODALIDAD, year( g.ANIO_ESCOLAR) AS  AÑO_ESCOLAR from grupo g inner join grado gp on g.ID_GRADO = gp.ID
					  inner join turno t on  g.ID_TURNO = t.ID
                      inner join modalidad m on g.ID_MODALIDAD = m.ID
                      inner join personal p on g.CEDULA_DOCENTE = p.CEDULA
                      inner join seccion s on g.ID_SECCION = s.ID WHERE t.DESCRIPCION = 'VESPERTINO' order by gp.ID;
                      


/*MUESTRA LOS BLOQUES DE CLASES ACTUALES*/
SELECT * FROM bloque;
SELECT * FROM BLOQUE_CLASE;
SELECT * FROM HORARIO_BLOQUE;
select * from grado;
select * from turno;
select * from grupo;
select * from modalidad;
select * from seccion;
select * from asignatura;
select * from bloque_clase;
select * from personal where id_cargo = 1 AND ESTADO = 1; /*Muestra los docentes que tienen grupos guiados*/
select * from actividad;


/*CONSULTA PARA MOSTRAR TODOS LOS BLOQUES DE CLASES Y SUS DATOS*/
SELECT bc.ID as ID_BLOQUE_CLASE,bc.ID_GRUPO ,m.ID AS ID_MODALIDAD,m.DESCRIPCION AS MODALIDAD,gg.ID as ID_GRADO,gg.DESCRIPCION as GRADO,s.ID as ID_SECCION,
s.DESCRIPCION as SECCION ,hb.ID_TURNO,t.DESCRIPCION AS TURNO,hb.ID_DIA, d.DESCRIPCION AS DIA,hb.ID_HORARIO_DESIGNADO AS ID_BLOQUE,hd.DESCRIPCION AS NO_BLOQUE, 
hd.HORARIO AS HORARIO_BLOQUE ,a.ID AS CODIGO_ASIGNATURA, a.DESCRIPCION as ASIGNATURA , p.CEDULA as CEDULA_DOCENTE, concat(p.PRIMER_NOMBRE," ", p.PRIMER_APELLIDO) AS DOCENTE 
FROM BLOQUE_CLASE bc 					INNER JOIN  asignatura a on bc.ID_ASIGNATURA = a.ID
                                        INNER JOIN horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID
                                        INNER JOIN horario_designado hd on hb.ID_HORARIO_DESIGNADO = hd.ID
                                        INNER JOIN turno t on hb.ID_TURNO = t.ID 
                                        INNER JOIN dia d on hb.ID_DIA = d.ID 
                                        INNER JOIN grupo g on bc.ID_GRUPO = g.ID 
										INNER JOIN modalidad m on g.ID_MODALIDAD = m.ID		
										INNER JOIN grado gg on g.ID_GRADO = gg.ID	
										INNER JOIN seccion s on g.ID_SECCION = s.ID	
										INNER JOIN personal p on g.CEDULA_DOCENTE = p.CEDULA order by hb.id /*Se ordena por el id del bloque de clase*/ 
                                        



                    