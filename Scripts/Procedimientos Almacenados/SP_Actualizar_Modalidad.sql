delimiter //
create procedure SP_Actualizar_Modalidad
(
	_ID int,
	_Descripcion varchar(45)
)
begin
	set _Descripcion = upper(ltrim(rtrim(_Descripcion)));
	update modalidad set DESCRIPCION = _Descripcion where ID = _ID;
    select "LA MODALIDAD HA SIGO ACTUALIZADA" AS "MENSAJE";
end//
delimiter ;

select * from modalidad;