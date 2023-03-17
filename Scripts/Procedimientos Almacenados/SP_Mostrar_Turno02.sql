delimiter //
create procedure SP_Mostrar_Turno02
(
	_ID_MODALIDAD int
)
begin
 select mt.ID as CODIGO, t.DESCRIPCION as TURNO from modalidad_turno mt inner join modalidad m on mt.ID_MODALIDAD = m.ID
								     inner join turno t on mt.ID_TURNO = t.ID where mt.ID_MODALIDAD = _ID_MODALIDAD ;
end// 
delimiter ;


select * from turno;
select * from modalidad;
select * from modalidad_turno;

call SP_Mostrar_Turno02 (1)

