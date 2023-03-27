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
select  bc.ID , b.DESCRIPCION as BLOQUE, b.TIEMPO_DESIGNADO, concat(p.PRIMER_NOMBRE, ' ',PRIMER_APELLIDO ) as PROFESOR, a.DESCRIPCION as ASIGNATURA
  from modalidad_bloque mb inner join modalidad m on mb.ID_MODALIDAD = m.ID
								  inner join bloque b on mb.ID_BLOQUE = b.ID
                                  inner join turno t on b.ID_TURNO = t.ID 
                                  inner join horario_bloque hb on hb.ID_BLOQUE = b.ID 
                                  inner join dia d on d.ID = hb.ID_DIA 
                                  inner join bloque_clase bc on bc.ID_HORARIO_BLOQUE = hb.ID
                                  inner join asignatura a on a.ID = bc.ID_ASIGNATURA
                                  inner join grupo g on bc.ID_GRUPO = g.ID 
                                  inner join grado gg on g.ID_GRADO = gg.ID 
                                  inner join personal p on bc.CEDULA_DOCENTE = p.CEDULA where bc.CEDULA_DOCENTE = p.CEDULA
                                  and g.ID = 3  and d.ID = 1
                                  order by g.ID  ;
                                  
                                  
                                  
                                  select * from bloque_clase;
                                  select * from bloque;
                                  select * from grupo;
                                  select * from grado;
                                  SELECT * FROM DIA;
                                  select * from seccion;
                                  select * from personal;




// delimiter
create procedure SP_Buscar_Grupo 
(
	@ID_MODALIDAD INT,
    @ID_GRADO INT,
    @ID_TURNO INT,
    @ID_SECCION INT
    
     SELECT * FROM GRUPO WHERE ID_GRADO = 4 AND ID_SECCION = 1 AND ID_TURNO=1 AND ID_MODALIDAD=4
)

  SELECT * FROM GRUPO WHERE ID_GRADO = 4 AND ID_SECCION = 1 AND ID_TURNO=1 AND ID_MODALIDAD=4
                                  
// delimiter ;


call SP_Buscar_Grupo(4,1,1,4);
call SP_Mostrar_Turno02(1)
select * FROM TURNO;
select * FROM GRADO;
select * FROM MODALIDAD;
select * FROM SECCION;


SELECT * FROM grupo;
select ID from grupo where ID_GRADO = 4 AND ID_SECCION = 1 AND ID_TURNO=1 AND ID_MODALIDAD=4 and CEDULA_DOCENTE ='001-070985-0032X';
                                  
                                  
  select * from grupo;                                
  select * from modalidad;
  select * from  seccion;
  
  
  select g.ID  AS CODIGO, m.DESCRIPCION AS MODALIDAD,  GG.DESCRIPCION AS GRADO, S.DESCRIPCION AS SECCION, T.DESCRIPCION AS TURNO,
 concat(p.PRIMER_NOMBRE,' ', p.SEGUNDO_NOMBRE,' ', p.PRIMER_APELLIDO,' ',p.SEGUNDO_APELLIDO) as  'DOCENTE GUIA'
 from grupo g inner join grado gg on g.ID_GRADO = gg.ID
								 inner join seccion s on g.ID_SECCION = s.ID
                                 inner join turno t on g.ID_TURNO = t.ID
                                 inner join modalidad m on g.ID_MODALIDAD = m.ID
                                 inner join personal p on g.CEDULA_DOCENTE = p.CEDULA