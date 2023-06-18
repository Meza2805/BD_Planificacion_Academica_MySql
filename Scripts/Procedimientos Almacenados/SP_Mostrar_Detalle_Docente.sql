delimiter //
create procedure SP_Mostrar_Detalle_Docente
(
	_Cedula varchar(18)
)
begin
	select concat(PRIMER_NOMBRE," ", SEGUNDO_NOMBRE," ", PRIMER_APELLIDO," ", SEGUNDO_APELLIDO) as NOMBRE,   (HORAS_LABORALES - 10) AS HORAS_CLASES from personal where cedula = _Cedula;
end//
delimiter ;

call SP_Eliminar_Asigantura(23)

call SP_Mostrar_Asignatura();
SELECT * FROM ASIGNATURA;