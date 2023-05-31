delimiter //
create procedure SP_Insertar_Horario_Primaria_Extraedad_Vespertino
(
	_id_grupo int,
    _cedula_docente char(18)
)
begin
		INSERT INTO bloque_clase (ID_GRUPO,ID_ASIGNATURA,ID_DIA,CEDULA_DOCENTE,HORA_INICIO,HORA_FIN,ESTADO)
					/*Lunes*/
                    /*El ID 31 representa un string de asignatura no asignada*/
			VALUES	(_id_grupo,31,1,_cedula_docente,'01:00:00','01:45:00', 1),
					(_id_grupo,31,1,_cedula_docente,'01:45:00','02:30:00', 1),
                    (_id_grupo,31,1,_cedula_docente,'02:30:00','03:20:00', 1),
                    (_id_grupo,31,1,_cedula_docente,'03:35:00','4:20:00', 1),
                    (_id_grupo,31,1,_cedula_docente,'4:20:00','5:30:00', 1),
					/*Martes*/
                    (_id_grupo,31,2,_cedula_docente,'01:00:00','01:45:00', 1),
					(_id_grupo,31,2,_cedula_docente,'01:45:00','02:30:00', 1),
                    (_id_grupo,31,2,_cedula_docente,'02:30:00','03:20:00', 1),
                    (_id_grupo,31,2,_cedula_docente,'03:35:00','4:20:00', 1),
                    (_id_grupo,31,2,_cedula_docente,'4:20:00','5:30:00', 1),
                    /*Miercoles*/
				    (_id_grupo,31,3,_cedula_docente,'01:00:00','01:45:00', 1),
					(_id_grupo,31,3,_cedula_docente,'01:45:00','02:30:00', 1),
                    (_id_grupo,31,3,_cedula_docente,'02:30:00','03:20:00', 1),
                    (_id_grupo,31,3,_cedula_docente,'03:35:00','4:20:00', 1),
                    (_id_grupo,31,3,_cedula_docente,'4:20:00','5:30:00', 1),
                    /*Jueves*/
					(_id_grupo,31,4,_cedula_docente,'01:00:00','01:45:00', 1),
					(_id_grupo,31,4,_cedula_docente,'01:45:00','02:30:00', 1),
                    (_id_grupo,31,4,_cedula_docente,'02:30:00','03:20:00', 1),
                    (_id_grupo,31,4,_cedula_docente,'03:35:00','4:20:00', 1),
                    (_id_grupo,31,4,_cedula_docente,'4:20:00','5:30:00', 1),
                    /*Viernes*/
					(_id_grupo,31,5,_cedula_docente,'01:00:00','01:45:00', 1),
					(_id_grupo,31,5,_cedula_docente,'01:45:00','02:30:00', 1),
                    (_id_grupo,31,5,_cedula_docente,'02:30:00','03:20:00', 1),
                    (_id_grupo,31,5,_cedula_docente,'03:35:00','4:20:00', 1),
                    (_id_grupo,31,5,_cedula_docente,'4:20:00','5:30:00', 1);
end//
delimiter ;


select * from grupo;
select * from grado;

SELECT * FROM GRUPO;
select * from bloque_clase order by id desc;

call SP_Insertar_Horario_Primaria_Regular(104,'001-071080-0018U');

INSERT INTO bloque_clase (ID_GRUPO,ID_ASIGNATURA,ID_DIA,CEDULA_DOCENTE,HORA_INICIO,HORA_FIN,ESTADO)
			VALUES	(104,31,1,'001-071080-0018U','07:00:00','07:45:00', 1);
            
            
            CALL SP_HORARIO(107)