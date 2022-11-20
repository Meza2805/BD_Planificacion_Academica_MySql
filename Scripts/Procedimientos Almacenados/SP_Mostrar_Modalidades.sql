delimiter //
create procedure SP_Mostrar_Modalidades
(
)
begin
  select ID, DESCRIPCION, if(ESTADO=1,'ACITVO','NO ACTIVO') AS ESTADO from modalidad where ESTADO_M = 1
  ORDER BY DESCRIPCION;
end// 
delimiter ;

CALL SP_Mostrar_Modalidades();
select * from modalidad;