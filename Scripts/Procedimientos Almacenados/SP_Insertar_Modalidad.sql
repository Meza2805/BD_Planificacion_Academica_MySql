delimiter //
create procedure SP_Insertar_Modalidad
(
	_Descripcion varchar(45)
)
begin
	set _Descripcion = upper(ltrim(rtrim(_Descripcion)));
	if (not exists (select DESCRIPCION from modalidad where DESCRIPCION = _Descripcion )) then
			INSERT INTO modalidad (DESCRIPCION,ESTADO,ESTADO_M) VALUES (_Descripcion,0,1);
    select 'LA MODALIDAD HA SIDO REGISTRADA CORRECTAMENTE' AS 'MENSAJE';
    else
		select 'LA ASIGNATURA YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
end//
delimiter ;

use Planificacion_academica;
select * from modalidad;
call SP_Insertar_Modalidad('probando');