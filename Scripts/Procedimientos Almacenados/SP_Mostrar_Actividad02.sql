delimiter //
create procedure SP_Mostrar_Actividad02
(
	
)
begin
	select ID as CODIGO, PROTAGONISTA from actividad ORDER BY ID;
end//
delimiter ;

CALL SP_Mostrar_Actividad02();
select * from actividad;
