delimiter //
create procedure SP_Insertar_Turno_Modalidad
(
	_ID_TURNO int,
    _ID_MODALIDAD int
)
begin
	if   ( (not exists (select ID from modalidad_turno WHERE (ID_MODALIDAD = _ID_MODALIDAD and ID_TURNO=_ID_TURNO)) )) then
			INSERT INTO modalidad_turno (ID_TURNO,ID_MODALIDAD) values(_ID_TURNO,_ID_MODALIDAD);
    select 'EL TURNO ASIGNADO EXITOSAMENTE' AS 'MENSAJE';
    else
			select 'ESTE TURNO YA SE ENCUENTRA ASIGNADO A ESTA MODALIDAD' AS 'MENSAJE';
	end if; 
end//
delimiter ;

select * from modalidad;
select * from TURNO;
select * from modalidad_turno;


CALL SP_Insertar_Asigantura_Modalidad(1,11);
select * from asignatura_modalidad;
select ID_ASIGNATURA,ID_MODALIDAD from asignatura_modalidad WHERE ID_ASIGNATURA = 1;

select ID from asignatura_modalidad WHERE (ID_ASIGNATURA = 1 and ID_MODALIDAD=4);
select * from asignatura_modalidad;

CALL SP_Insertar_Turno_Modalidad(1,4)