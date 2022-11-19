delimiter //
create procedure SP_Mostrar_Cargo
(
)
begin
  select ID,DESCRIPCION from cargo WHERE ESTADO_C = 1;
end// 
delimiter ;
CALL SP_Mostrar_Cargo();
select * from cargo;