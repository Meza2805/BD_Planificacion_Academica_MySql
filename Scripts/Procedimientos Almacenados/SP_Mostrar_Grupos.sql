delimiter //
create procedure SP_Mostrar_Grupos
(
)
begin
 select  gg.ID as CODIGO_GRUPO, g.DESCRIPCION AS GRADO,m.DESCRIPCION as  MODALIDAD,
 s.DESCRIPCION AS SECCION, t.DESCRIPCION AS TURNO,year(gg.ANIO_ESCOLAR) as AÑO_ESCOLAR, if(gg.ESTADO=1,'ACTIVO','NO ACTIVO') AS ESTADO_GRUPO, concat(p.PRIMER_NOMBRE," ",p.PRIMER_APELLIDO) as DOCENTE_GUIA
 from grupo gg inner join grado g on gg.ID_GRADO = g.ID
                        inner join modalidad m on gg.ID_MODALIDAD =  m.ID
						inner join seccion s on gg.ID_SECCION = s.ID
						inner join turno t on gg.ID_TURNO = t.ID
                        inner join personal p on gg.CEDULA_DOCENTE = p.CEDULA 
                        order by Gg.ID; 
                        
end// 
delimiter ;

