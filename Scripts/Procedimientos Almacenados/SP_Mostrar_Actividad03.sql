delimiter //
create procedure SP_Mostrar_Actividad03
(
	
)
begin
	select ID as CODIGO,META_ANUAL,METRA_TRIMESTRAL,PARTICIPANTES_F,PARTICIPANTES_M ,
(PARTICIPANTES_F +PARTICIPANTES_M) as TOTAL_PARTICIPANTES, concat( round((((PARTICIPANTES_F +PARTICIPANTES_M) * 100)/ METRA_TRIMESTRAL),2)," ","%")   as META_TRIMESTRAL,
 concat( round((((PARTICIPANTES_F +PARTICIPANTES_M) * 100)/ META_ANUAL) ,2)," ","%") as META_ANUAL from actividad ORDER BY ID;
end//
delimiter ;


select * from actividad;


