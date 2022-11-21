delimiter //
create procedure SP_Mostrar_Actividad04
(
	
)
begin
select a.ID, v.PREGUNTA_01, v.PREGUNTA_02, v.PREGUNTA_03,v.PREGUNTA_04, 
v.PREGUNTA_05 from actividad a inner join valoracion_cualitativa v on a.ID_V_CUALITATIVA = v.ID ;
end//
delimiter ;


call SP_Mostrar_Actividad04();
select * from actividad;


