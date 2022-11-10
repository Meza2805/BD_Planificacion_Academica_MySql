delimiter //
create procedure SP_Mostrar_Modalidades
(
)
begin
  select ID, DESCRIPCION from modalidad where ESTADO = 1;
end// 
delimiter ;

CALL SP_Mostrar_Modalidades();