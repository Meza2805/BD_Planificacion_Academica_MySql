delimiter //
create procedure SP_Mostrar_Actividad05
(
	
)
begin
select a.ID, p.PREGUNTA_01, p.PREGUNTA_02, p.PREGUNTA_03,p.PREGUNTA_04, 
p.PREGUNTA_05 from actividad a inner join plan_de_medidas p on a.ID_P_MEDIDA = p.ID ;
end//
delimiter ;


call SP_Mostrar_Actividad04();
select * from actividad;
select * from plan_de_medidas
