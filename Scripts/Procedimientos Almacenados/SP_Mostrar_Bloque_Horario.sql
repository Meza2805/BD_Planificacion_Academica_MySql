delimiter //
create procedure SP_Mostrar_Bloque_Horario
(
	_ID_GRUPO int
)
select   b.DESCRIPCION as BLOQUE
  from modalidad_bloque mb inner join modalidad m on mb.ID_MODALIDAD = m.ID
								  inner join bloque b on mb.ID_BLOQUE = b.ID
                                  inner join turno t on b.ID_TURNO = t.ID 
                                  inner join horario_bloque hb on hb.ID_BLOQUE = b.ID 
                                  inner join dia d on d.ID = hb.ID_DIA 
                                  inner join bloque_clase bc on bc.ID_HORARIO_BLOQUE = hb.ID
                                  inner join asignatura a on a.ID = bc.ID_ASIGNATURA
                                  inner join grupo g on bc.ID_GRUPO = g.ID 
                                  inner join grado gg on g.ID_GRADO = gg.ID 
                                  inner join personal p on bc.CEDULA_DOCENTE = p.CEDULA where bc.CEDULA_DOCENTE = p.CEDULA and g.ID  = _ID_GRUPO
								  group by b.ID
                                  order by g.ID  ;

// delimiter ; 
