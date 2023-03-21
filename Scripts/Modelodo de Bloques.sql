select * from bloque;
select * from bloque_clase;
select * from horario_bloque;
select * from turno;
select * from modalidad_bloque;
select * from modalidad;
select * from bloque;

 select ID, DESCRIPCION, if(ESTADO=1,'ACITVO','NO ACTIVO') AS ESTADO from modalidad where ESTADO_M = 1
ORDER BY DESCRIPCION;

/*Bloque tiempo asignado modalidad y turno*/
select mb.ID, b.DESCRIPCION as BLOQUE, b.TIEMPO_DESIGNADO, m.DESCRIPCION AS MODALIDAD,t.DESCRIPCION AS TURNO from modalidad_bloque mb inner join modalidad m on mb.ID_MODALIDAD = m.ID
								  inner join bloque b on mb.ID_BLOQUE = b.ID
                                  inner join turno t on b.ID_TURNO = t.ID order by b.ID;
                                  
 /*Bloque tiempo asignado modalidad turno y dia*/                                 
select mb.ID, b.DESCRIPCION as BLOQUE, b.TIEMPO_DESIGNADO, m.DESCRIPCION AS MODALIDAD,t.DESCRIPCION AS TURNO, d.DESCRIPCION as DIA from modalidad_bloque mb inner join modalidad m on mb.ID_MODALIDAD = m.ID
								  inner join bloque b on mb.ID_BLOQUE = b.ID
                                  inner join turno t on b.ID_TURNO = t.ID 
                                  inner join horario_bloque hb on hb.ID_BLOQUE = b.ID 
                                  inner join dia d on d.ID = hb.ID_DIA order by b.ID;
                                  
                                  
/*Bloque de clases completo*/
select  b.DESCRIPCION as BLOQUE, b.TIEMPO_DESIGNADO, d.DESCRIPCION as DIA,t.DESCRIPCION AS TURNO,m.DESCRIPCION AS MODALIDAD,
 a.DESCRIPCION AS ASIGNATURA ,gg.DESCRIPCION AS GRADO ,g.ID  as CODIGO_GRUPO 
  from modalidad_bloque mb inner join modalidad m on mb.ID_MODALIDAD = m.ID
								  inner join bloque b on mb.ID_BLOQUE = b.ID
                                  inner join turno t on b.ID_TURNO = t.ID 
                                  inner join horario_bloque hb on hb.ID_BLOQUE = b.ID 
                                  inner join dia d on d.ID = hb.ID_DIA 
                                  inner join bloque_clase bc on bc.ID_HORARIO_BLOQUE = hb.ID
                                  inner join asignatura a on a.ID = bc.ID_ASIGNATURA
                                  inner join grupo g on bc.ID_GRUPO = g.ID 
                                  inner join grado gg on g.ID_GRADO = gg.ID where g.ID = 3 and d.ID =4
                                  order by g.ID;
                                  
                                  
                                  
                                  select * from bloque_clase;
                                  select * from bloque;
                                  select * from grupo;
                                  select * from grado;
                                  SELECT * FROM DIA;
                                  select * from seccion;
