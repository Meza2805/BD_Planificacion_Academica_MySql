delimiter //
create procedure SP_MOSTRAR_ASIGANTURA_HORARIO
(
	_ID_GRUPO INT
)
select   a.DESCRIPCION as ASIGNATURA
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
                                  and g.ID = _ID_GRUPO  and d.ID = 1
                                  order by g.ID  ;
// delimiter ;
                                  SELECT * FROM ASIGNATURA
		CALL SP_MOSTRAR_ASIGANTURA_HORARIO(3);