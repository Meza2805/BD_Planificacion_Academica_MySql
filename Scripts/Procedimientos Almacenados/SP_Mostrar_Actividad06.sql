delimiter //
create procedure SP_Mostrar_Actividad06
(
)
begin
select a.ID, DIFICULTADES,ALERTAS,PROPUESTA,OBSERVACION
from actividad a inner join plan_de_medidas p on a.ID_P_MEDIDA = p.ID ;
end//
delimiter ;


call SP_Mostrar_Actividad06();
select * from actividad;
select * from plan_de_medidas;
use Planificacion_academica;