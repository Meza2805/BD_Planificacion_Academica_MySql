delimiter //
create procedure SP_Mostrar_Asignatura_Modalidad
(
)
begin
	SELECT  am.ID as CODIGO,  a.DESCRIPCION as ASIGNATURA, m.DESCRIPCION as MODALIDAD, if(am.ESTADO_AM = 1,'ASIGNADO','NO ASIGNADO')  AS ESTADO FROM ASIGNATURA a inner join asignatura_modalidad am on a.ID = am.ID_ASIGNATURA
								inner join modalidad m on am.ID_MODALIDAD = m.ID
                                WHERE ESTADO_M = 1
                                ORDER BY a.DESCRIPCION;
end//
delimiter ;
call SP_Mostrar_Asignatura_Modalidad();

select * from asignatura;
use Planificacion_Academica;

select * from asignatura_modalidad;


SELECT  am.ID as CODIGO,  a.DESCRIPCION as ASIGNATURA, m.DESCRIPCION as MODALIDAD, if(am.ESTADO_AM = 1,'ASIGNADO','NO ASIGNADO')  AS ESTADO FROM ASIGNATURA a inner join asignatura_modalidad am on a.ID = am.ID_ASIGNATURA
								inner join modalidad m on am.ID_MODALIDAD = m.ID
                                WHERE ESTADO_M = 1
                                ORDER BY am.ID;
                                
                                
CALL SP_Eliminar_Asignatura_Modalidad(30);