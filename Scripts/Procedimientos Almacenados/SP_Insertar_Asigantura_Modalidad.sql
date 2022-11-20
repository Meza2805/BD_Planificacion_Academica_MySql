delimiter //
create procedure SP_Insertar_Asigantura_Modalidad
(
	_ID_ASIGNATURA int,
    _ID_MODLIDAD int
)
begin
	if   ( (not exists (select ID from asignatura_modalidad WHERE (ID_ASIGNATURA = _ID_ASIGNATURA and ID_MODALIDAD=_ID_MODLIDAD)) )) then
			INSERT INTO asignatura_modalidad (ID_ASIGNATURA,ID_MODALIDAD) values(_ID_ASIGNATURA,_ID_MODLIDAD);
    select 'LA ASIGNATURA HA SIDO ASIGNADA A UN MODALIDAD CORRECTAMENTE' AS 'MENSAJE';
    else
			select 'LA ASIGNATURA YA SE ENCUENTRA ASIGNADA A ESA MODALIDAD' AS 'MENSAJE';
	end if; 
end//
delimiter ;

select * from modalidad;
select * from asignatura;

CALL SP_Insertar_Asigantura_Modalidad(1,11);
select * from asignatura_modalidad;
select ID_ASIGNATURA,ID_MODALIDAD from asignatura_modalidad WHERE ID_ASIGNATURA = 1;

select ID from asignatura_modalidad WHERE (ID_ASIGNATURA = 1 and ID_MODALIDAD=4);
select * from asignatura_modalidad;