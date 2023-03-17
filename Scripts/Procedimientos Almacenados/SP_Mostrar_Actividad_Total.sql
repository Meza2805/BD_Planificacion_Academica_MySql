delimiter //
create procedure SP_Mostrar_Actividad_Total
(
	
)
begin
	select a.ID as CODIGO, a.DESCRIPCION, a.PROTAGONISTA, a.META_ANUAL,a.METRA_TRIMESTRAL,a.PARTICIPANTES_F,a.PARTICIPANTES_M ,
(a.PARTICIPANTES_F +a.PARTICIPANTES_M) as TOTAL_PARTICIPANTES, concat( round((((a.PARTICIPANTES_F +a.PARTICIPANTES_M) * 100)/ a.METRA_TRIMESTRAL),2)," ","%")   as META_TRIMESTRAL,
 concat( round((((a.PARTICIPANTES_F +a.PARTICIPANTES_M) * 100)/ a.META_ANUAL) ,2)," ","%") as META_ANUAL,v.PREGUNTA_01, v.PREGUNTA_02, v.PREGUNTA_03,v.PREGUNTA_04, 
v.PREGUNTA_05, p.PREGUNTA_01, p.PREGUNTA_02, p.PREGUNTA_03,p.PREGUNTA_04, 
p.PREGUNTA_05
 from actividad a
 inner join valoracion_cualitativa v on a.ID_V_CUALITATIVA = v.ID
 inner join plan_de_medidas p on a.ID_P_MEDIDA = p.ID

 ORDER BY a.ID;
end//
delimiter ;

CALL SP_Mostrar_Actividad01();
select * from asignatura;
