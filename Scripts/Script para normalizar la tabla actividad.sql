select * from actividad;
select * from plan_de_medidas;
select * from valoracion_cualitativa;



select * from actividad a inner join plan_de_medidas p on a.ID_P_MEDIDA = p.ID where a.ID = 1;

update actividad a inner join plan_de_medidas p on a.ID_P_MEDIDA = p.ID set a.MEDIDA01 = (select p.PREGUNTA_01 where p.ID = 1),a.MEDIDA02 = (select p.PREGUNTA_02 where p.ID = 1),
a.MEDIDA03 = (select p.PREGUNTA_03 where p.ID = 1),a.MEDIDA04 = (select p.PREGUNTA_04 where p.ID = 1),a.MEDIDA05 = (select p.PREGUNTA_05 where p.ID = 1)
 where a.ID = 1  
 
 delimiter //
 create procedure SP_Cambio(
 codigo int)
	begin
		update actividad a inner join plan_de_medidas p on a.ID_P_MEDIDA = p.ID set a.MEDIDA01 = (select p.PREGUNTA_01 where p.ID = codigo),a.MEDIDA02 = (select p.PREGUNTA_02 where p.ID = codigo),
	a.MEDIDA03 = (select p.PREGUNTA_03 where p.ID = codigo),a.MEDIDA04 = (select p.PREGUNTA_04 where p.ID = codigo),a.MEDIDA05 = (select p.PREGUNTA_05 where p.ID = codigo)
	where a.ID = codigo  ;
    end
 // delimiter ; 
 
 
 call SP_Cambio(12);
 select * from actividad a inner join plan_de_medidas p on a.ID_P_MEDIDA = p.ID where a.ID = 1;
 
 
  delimiter //
 create procedure SP_Cambio02(
 codigo int)
	begin
update actividad a inner join valoracion_cualitativa v on  a.ID_V_CUALITATIVA = v.ID set a.CU01 = (select v.PREGUNTA_01 where v.ID = codigo),a.CU02 = (select v.PREGUNTA_02 where v.ID = codigo),
a.CU03 = (select v.PREGUNTA_03 where v.ID = codigo),a.CU04 = (select v.PREGUNTA_04 where v.ID = codigo),a.CU05 = (select v.PREGUNTA_05 where v.ID = codigo) where a.ID = codigo ;

    end
 // delimiter ; 
 
 call  SP_Cambio02(12);