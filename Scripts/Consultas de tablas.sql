/*CONSULTA PARA CONOCENER LOS HORARIOS DESIGNADO EN LA SEMANA*/
SELECT *FROM horario_bloque;
select * from turno;
select * from horario_designado;
select * from dia;

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
select concat(p.PRIMER_NOMBRE  ,' ', p.PRIMER_APELLIDO) as DOCENTE_GUIA  ,gp.DESCRIPCION as GRADO, s.DESCRIPCION AS SECCION, t.DESCRIPCION AS TURNO, m.DESCRIPCION AS MODALIDAD, year( g.ANIO_ESCOLAR) AS  AÑO_ESCOLAR from grupo g inner join grado gp on g.ID_GRADO = gp.ID
					  inner join turno t on  g.ID_TURNO = t.ID
                      inner join modalidad m on g.ID_MODALIDAD = m.ID
                      inner join personal p on g.CEDULA_DOCENTE = p.CEDULA
                      inner join seccion s on g.ID_SECCION = s.ID WHERE t.DESCRIPCION = 'MATUTINO';
                      
/*TURNO VESPERTINO*/
select concat(p.PRIMER_NOMBRE  ,' ', p.PRIMER_APELLIDO) as DOCENTE_GUIA  ,gp.DESCRIPCION as GRADO, s.DESCRIPCION AS SECCION, t.DESCRIPCION AS TURNO, m.DESCRIPCION AS MODALIDAD, year( g.ANIO_ESCOLAR) AS  AÑO_ESCOLAR from grupo g inner join grado gp on g.ID_GRADO = gp.ID
					  inner join turno t on  g.ID_TURNO = t.ID
                      inner join modalidad m on g.ID_MODALIDAD = m.ID
                      inner join personal p on g.CEDULA_DOCENTE = p.CEDULA
                      inner join seccion s on g.ID_SECCION = s.ID WHERE t.DESCRIPCION = 'VESPERTINO';
                      


/*MUESTRA LOS BLOQUES DE CLASES ACTUALES*/
SELECT * FROM BLOQUE_CLASE;
SELECT * FROM HORARIO_BLOQUE;
select * from grado;
select * from turno;
select * from grupo;
select * from modalidad;
select * from seccion;
select * from asignatura;
select * from personal where id_cargo = 1 AND ESTADO = 1; /*Muestra los docentes que tienen grupos guiados*/

SELECT bc.ID, bc.ID_HORARIO_BLOQUE,a.ID, a.DESCRIPCION as ASIGNATURA FROM BLOQUE_CLASE bc INNER JOIN  asignatura a on bc.ID_ASIGNATURA = a.ID;



                    