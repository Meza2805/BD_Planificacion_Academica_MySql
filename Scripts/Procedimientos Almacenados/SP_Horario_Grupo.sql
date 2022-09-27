delimiter //
create procedure SP_Horario_Grupo
(
	ID_grupo int
)
begin
     if exists (select ID from grupo where ID = ID_grupo) then
     SELECT gg.DESCRIPCION as GRADO,s.DESCRIPCION AS SECCION,t.DESCRIPCION AS TURNO,d.DESCRIPCION AS DIA,hd.DESCRIPCION AS "NO DE BLOQUE", 
     hd.HORARIO AS "HORARIO DE BLOQUE" , a.DESCRIPCION as ASIGNATURA FROM BLOQUE_CLASE bc 					
										INNER JOIN  asignatura a on bc.ID_ASIGNATURA = a.ID
                                        INNER JOIN horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID
                                        INNER JOIN horario_designado hd on hb.ID_HORARIO_DESIGNADO = hd.ID
                                        INNER JOIN turno t on hb.ID_TURNO = t.ID 
                                        INNER JOIN dia d on hb.ID_DIA = d.ID 
                                        INNER JOIN grupo g on bc.ID_GRUPO = g.ID 
										INNER JOIN modalidad m on g.ID_MODALIDAD = m.ID		
                                        INNER JOIN seccion s on g.ID_SECCION = s.ID	
										INNER JOIN grado gg on g.ID_GRADO = gg.ID	where g.ID= ID_grupo
										order by hb.id;  /*Se ordena por el id del bloque de clase*/ 
     
     else
      select "EL GRUPO NO SE ENCUENTRA EN LA BASE DE DATOS" as  "MENSAJE";
     end if;
end// 
delimiter ;