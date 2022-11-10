delimiter //
create procedure SP_Mostrar_Cargo
(
)
begin
  select ID,DESCRIPCION from cargo;
end// 
delimiter ;

CALL SP_Mostrar_Cargo();