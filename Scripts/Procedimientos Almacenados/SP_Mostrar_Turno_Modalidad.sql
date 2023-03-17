delimiter //
create procedure SP_Mostrar_Turno_Modalidad
(
	
)
begin
	select mt.ID as CODIGO, t.DESCRIPCION as TURNO, t.HORARIO AS HORARIO, m.DESCRIPCION as MODALIDAD from modalidad_turno mt inner join modalidad m on mt.ID_MODALIDAD = m.ID
								     inner join turno t on mt.ID_TURNO = t.ID;
end//
delimiter ;

	select * from modalidad;
    select * from turno;
    select * from modalidad_turno;
    CALL SP_Mostrar_Turno_Modalidad();
    
    call SP_Mostrar_Turno
