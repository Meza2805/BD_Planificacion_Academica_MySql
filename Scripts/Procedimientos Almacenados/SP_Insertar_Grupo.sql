delimiter //
create procedure SP_Insertar_Grupo
(
	_id_grado int,
    _id_seccion int,
    _id_turno int,
    _id_modalidad int,
    _cedula_docente char(18)
)
begin
	if (not exists (select CEDULA_DOCENTE from grupo where STRCMP(CEDULA_DOCENTE,_cedula_docente)  = 0) ) then
		INSERT INTO GRUPO (ID_GRADO,ID_SECCION,ID_TURNO,ID_MODALIDAD,ANIO_ESCOLAR,CEDULA_DOCENTE)
			VALUES	(_id_grado,_id_seccion,_id_turno,_id_modalidad,CURDATE(), _cedula_docente);
        select 'GRUPO CREADO' as 'MENSAJE';
        UPDATE PERSONAL SET ESTADO=1 WHERE CEDULA = _cedula_docente;
    else 
		select 'EL DOCENTE INGRESADO YA TIENE UN GRUPO GUIADO' as 'MENSAJE';
    end if;
end//
delimiter ;

SELECT * FROM PERSONAL;