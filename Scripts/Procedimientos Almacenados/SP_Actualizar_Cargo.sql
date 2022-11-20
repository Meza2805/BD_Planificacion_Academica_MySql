delimiter //
create procedure SP_Actualizar_Cargo
(
_id_cargo int,
_cargo varchar(35)
)
begin
set _cargo = ltrim(rtrim(_cargo));
	if (not exists (select DESCRIPCION from CARGO where DESCRIPCION = _cargo  )) then
			  update cargo set DESCRIPCION= upper(_cargo) where ID = _id_cargo;
    select "CARGO ACTUALIZADO CORRECTAMENTE" AS "MENSAJE";
    else
			select 'EL CARGO ACADÉMICO YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
end// 
delimiter ;

select * from cargo;
call SP_Actualizar_Cargo(7,'TECNICO')
