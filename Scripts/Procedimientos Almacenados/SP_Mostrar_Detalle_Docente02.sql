delimiter //
create procedure SP_Mostrar_Detalle_Docente02
(
	_Cedula varchar(18)
)
begin
	select  d.DESCRIPCION ,hd.No_Bloque, concat(hd.TimeBegin," - ", hd.TimeEnd) as Tiempo  ,a.DESCRIPCION as ASIGNATURA,
  gg.DESCRIPCION AS GRADO, s.DESCRIPCION AS SECCION, t.DESCRIPCION
from bloque_clase b inner join personal p on b.CEDULA_DOCENTE = p.CEDULA
							inner join asignatura a on b.ID_ASIGNATURA = a.ID
                            inner join horario_designado hd on b.ID_BLOQUE = hd.ID
                            inner join dia d on b.ID_DIA = d.ID
                            inner join grupo g on b.ID_GRUPO  = g.ID
                            inner join grado gg on g.ID_GRADO = gg.ID
                            inner join seccion s on g.ID_SECCION = s.ID
                            inner join turno t on g.ID_TURNO = t.ID
                            
                            where a.ID <> 31 and p.CEDULA = _Cedula and year( g.ANIO_ESCOLAR) = year(curdate())
                            
                            order by d.ID , hd.ID;
end//
delimiter ;

call SP_Eliminar_Asigantura(23)

call SP_Mostrar_Asignatura();
SELECT * FROM ASIGNATURA;