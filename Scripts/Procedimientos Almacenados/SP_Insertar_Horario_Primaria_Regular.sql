delimiter //
create procedure SP_Insertar_Horario_Primaria_Regular_Vespertino
(
	_id_grupo int,
    _cedula_docente char(18)
)
begin
		INSERT INTO bloque_clase (ID_GRUPO,ID_ASIGNATURA,ID_DIA,CEDULA_DOCENTE,HORA_INICIO,HORA_FIN,ESTADO)
					/*Lunes*/
                    /*El ID 31 representa un string de asignatura no asignada*/
			VALUES	(_id_grupo,31,1,_cedula_docente,'12:30:00','01:15:00', 1),
					(_id_grupo,31,1,_cedula_docente,'01:15:00','02:00:00', 1),
                    (_id_grupo,31,1,_cedula_docente,'02:00:00','02:45:00', 1),
                    (_id_grupo,31,1,_cedula_docente,'02:45:00','03:30:00', 1),
                    (_id_grupo,31,1,_cedula_docente,'03:45:00','04:30:00', 1),
					(_id_grupo,31,1,_cedula_docente,'04:30:00','05:15:00', 1),
					/*Martes*/
                   (_id_grupo,31,2,_cedula_docente,'12:30:00','01:15:00', 1),
					(_id_grupo,31,2,_cedula_docente,'01:15:00','02:00:00', 1),
                    (_id_grupo,31,2,_cedula_docente,'02:00:00','02:45:00', 1),
                    (_id_grupo,31,2,_cedula_docente,'02:45:00','03:30:00', 1),
                    (_id_grupo,31,2,_cedula_docente,'03:45:00','04:30:00', 1),
					(_id_grupo,31,2,_cedula_docente,'04:30:00','05:15:00', 1),
                    /*Miercoles*/
					(_id_grupo,31,3,_cedula_docente,'12:30:00','01:15:00', 1),
					(_id_grupo,31,3,_cedula_docente,'01:15:00','02:00:00', 1),
                    (_id_grupo,31,3,_cedula_docente,'02:00:00','02:45:00', 1),
                    (_id_grupo,31,3,_cedula_docente,'02:45:00','03:30:00', 1),
                    (_id_grupo,31,3,_cedula_docente,'03:45:00','04:30:00', 1),
					(_id_grupo,31,3,_cedula_docente,'04:30:00','05:15:00', 1),
                    /*Jueves*/
					(_id_grupo,31,4,_cedula_docente,'12:30:00','01:15:00', 1),
					(_id_grupo,31,4,_cedula_docente,'01:15:00','02:00:00', 1),
                    (_id_grupo,31,4,_cedula_docente,'02:00:00','02:45:00', 1),
                    (_id_grupo,31,4,_cedula_docente,'02:45:00','03:30:00', 1),
                    (_id_grupo,31,4,_cedula_docente,'03:45:00','04:30:00', 1),
					(_id_grupo,31,4,_cedula_docente,'04:30:00','05:15:00', 1),
                    /*Viernes*/
					(_id_grupo,31,5,_cedula_docente,'07:00:00','07:45:00', 1),
					(_id_grupo,31,5,_cedula_docente,'07:45:00','08:30:00', 1),
                    (_id_grupo,31,5,_cedula_docente,'08:30:00','09:15:00', 1),
                    (_id_grupo,31,5,_cedula_docente,'09:15:00','10:00:00', 1),
                    (_id_grupo,31,5,_cedula_docente,'10:30:00','11:15:00', 1),
					(_id_grupo,31,5,_cedula_docente,'11:15:00','12:00:00', 1);
end//
delimiter ;


select * from grupo;
select * from grado;

SELECT * FROM GRUPO;
select * from bloque_clase order by id desc;

call SP_Insertar_Horario_Primaria_Regular(104,'001-071080-0018U');

INSERT INTO bloque_clase (ID_GRUPO,ID_ASIGNATURA,ID_DIA,CEDULA_DOCENTE,HORA_INICIO,HORA_FIN,ESTADO)
			VALUES	(104,31,1,'001-071080-0018U','07:00:00','07:45:00', 1);
            
            
            CALL SP_HORARIO(3)