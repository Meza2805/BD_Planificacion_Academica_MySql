select * from grado;
delimiter //
create procedure SP_Mostrar_Grados02(
)
begin
	select ID, DESCRIPCION from grado ORDER BY ID;
end
// delimiter ;


select * from turno;
