delimiter //
create procedure SP_Actualizar_Asigantura
(
	_ID int,
	_Desripcion varchar(45)
)
begin
	set _Desripcion = upper(ltrim(rtrim(_Desripcion)));
	if (not exists (select DESCRIPCION from asignatura where STRCMP(DESCRIPCION,_Desripcion)  = 0) ) then
		update asignatura set DESCRIPCION = _Desripcion where ID = _ID;
    select 'LA ASIGNATURA HA SIDO ACTUALIZADA CORRECTAMENTE' AS 'MENSAJE';
    else
			select 'LA ASIGNATURA YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
end//
delimiter ;

CALL SP_Actualizar_Asigantura(17,'FUNCIONA');
select * from asignatura;
