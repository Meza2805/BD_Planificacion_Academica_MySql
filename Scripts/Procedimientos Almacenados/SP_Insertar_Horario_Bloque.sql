delimiter //
create procedure SP_Insertar_Bloque_Clase
(
	_id_horario_bloque int,
    _id_asignatura int,
    _id_grupo int,
    _cedula char(18)
)
begin
	if exists ( select ID_HORARIO_BLOQUE from BLOQUE_CLASE where ID_HORARIO_BLOQUE = _id_horario_bloque  AND CEDULA_DOCENTE = _cedula) then
		select 'EL DOCENTE YA IMPARTE UNA CLASE DURANTE ESE HORARIO' AS 'MENSAJE';
        
	elseif ((select HORAS_LABORALES from personal WHERE CEDULA = _cedula)=40) then
			select 'EL DOCENTE YA TIENE COMPLETO SUS HORAS SEMANALES' AS 'MENSAJE';
    else
			INSERT into bloque_clase (ID_HORARIO_BLOQUE,ID_ASIGNATURA,ID_GRUPO,CEDULA_DOCENTE) VALUES (_id_horario_bloque,_id_asignatura,_id_grupo,_cedula);
			UPDATE personal SET HORAS_LABORALES = (HORAS_LABORALES + 1) where CEDULA =  _cedula;
			select 'BLOQUE DE CLASE REGISTRADO CORRECTAMENTE' AS 'MENSAJE';
    end if;
end//
delimiter ;