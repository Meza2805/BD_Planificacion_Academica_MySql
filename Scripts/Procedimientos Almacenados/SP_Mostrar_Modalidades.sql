delimiter //
create procedure SP_Mostrar_Modalidades
(
)
begin
  select ID, DESCRIPCION, if(ESTADO=1,'ACITVO','NO ACTIVO') AS ESTADO from modalidad ORDER BY ESTADO;
end// 
delimiter ;

CALL SP_Mostrar_Modalidades();