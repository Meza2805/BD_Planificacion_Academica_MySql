delimiter //
create procedure SP_Eliminar_Cargo
(
_id_cargo int
)
begin
  update cargo set ESTADO_C = 0 where ID = _id_cargo;
  select "CARGO ELIMINADO" AS "MENSAJE";
end// 
delimiter ;

select * from cargo;
use Planificacion_academica;