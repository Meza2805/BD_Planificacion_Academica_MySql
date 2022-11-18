delimiter //
create procedure SP_Actualizar_Cargo
(
_id_cargo int,
_cargo varchar(35)
)
begin
  update cargo set DESCRIPCION= upper(_cargo) where ID = _id_cargo;
  select "CARGO ACTUALIZADO CORRECTAMENTE" AS "MENSAJE";
end// 
delimiter ;

select * from cargo;
call SP_Actualizar_Cargo(7,'TECNICO')
