delimiter //
create procedure SP_Mostrar_Grado
(
	_ID_MODALIDAD int
)
begin
 select g.ID, g.DESCRIPCION as GRADO from grado g inner join modalidad_grado mg on g.ID = mg.ID_GRADO
					  inner join modalidad m on mg.ID_MODALIDAD = m.ID where m.ID= _ID_MODALIDAD;
end// 
delimiter ;


select * from grado;
select * from modalidad;
select * from modalidad_grado;

call SP_Mostrar_Grado (6)

