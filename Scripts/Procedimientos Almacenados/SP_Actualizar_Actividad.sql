delimiter //
create procedure SP_Insertar_Bloque_Horario
(
	DocenteLunes varchar(18),
    DocenteMartes varchar(18),
	DocenteMiercoles varchar(18),
	DocenteJueves varchar(18),
    descripcion_actividad text,
    protagonista_ac text,
    meta_a int,
    meta_t int,
    part_f int,
    part_m int,
     /*preguntas de valoracion cualitativa*/
    v_cualitatia01 text,
    v_cualitatia02 text,
    v_cualitatia03 text,
    v_cualitatia04 text,
    v_cualitatia05 text,
    dificultades_ac text,
    /*preguntas de plan de medida*/
	p_medida_pregunta01 text,
    p_medida_pregunta02 text,
    p_medida_pregunta03 text,
    p_medida_pregunta04 text,
    p_medida_pregunta05 text,
    alertas_ac text,
    propuesta_ac text,
    observacion_ac text
)
begin
	/*Declarando variables de codigo*/
    DECLARE part_total INT;
    declare id_medida int;
    declare id_cualitativa int;
    /*Convirtiendo todo a mayusculas*/
    set descripcion_actividad = upper(descripcion_actividad);
    set protagonista_ac= upper(protagonista_ac);
    set v_cualitatia01= upper(v_cualitatia01);
    set v_cualitatia02= upper(v_cualitatia02);
    set v_cualitatia03= upper(v_cualitatia03);
    set v_cualitatia04 = upper(v_cualitatia04);
    set v_cualitatia05 = upper(v_cualitatia05);
    set dificultades_ac =  upper(dificultades_ac);
	set p_medida_pregunta01= upper(p_medida_pregunta01) ;
    set p_medida_pregunta02 =  upper(p_medida_pregunta02);
    set p_medida_pregunta03 = upper(p_medida_pregunta03);
    set p_medida_pregunta04 = upper(p_medida_pregunta04);
    set p_medida_pregunta05= upper(p_medida_pregunta05);
    set alertas_ac = upper(alertas_ac) ;
    set observacion_ac = upper(observacion_ac);
    set alertas_ac = upper(alertas_ac);
    SET part_total = part_f+ part_M;
    
    if (part_total > meta_t) then
		select "LA SUMA DE LOS PARTICIPANTES NO PUEDE SER MAYOR QUE LA META ESTABLECIDA" AS "MENSAJE";
	ELSE
			update plan_de_medidas set PREGUNTA_01= p_medida_pregunta01 , PREGUNTA_02 =p_medida_pregunta02,
				PREGUNTA_03= p_medida_pregunta03 , PREGUNTA_04 =p_medida_pregunta04 , PREGUNTA_05 =p_medida_pregunta05
                where ID = CODIGO;
		
           /*insert into plan_de_medidas (PREGUNTA_01,PREGUNTA_02,PREGUNTA_03,PREGUNTA_04,PREGUNTA_05)
			values(p_medida_pregunta01,p_medida_pregunta02,p_medida_pregunta03,p_medida_pregunta04,p_medida_pregunta05);
			set id_medida = (SELECT LAST_INSERT_ID());*/
    
			/*insert into valoracion_cualitativa (PREGUNTA_01,PREGUNTA_02,PREGUNTA_03,PREGUNTA_04,PREGUNTA_05)
						values(v_cualitatia01,v_cualitatia02,v_cualitatia03,v_cualitatia04,v_cualitatia05);
			Set id_cualitativa = (SELECT LAST_INSERT_ID());*/
    
			update valoracion_cualitativa set PREGUNTA_01 = v_cualitatia01, PREGUNTA_02 = v_cualitatia02 ,
				PREGUNTA_03 = v_cualitatia03,PREGUNTA_04 = v_cualitatia04,PREGUNTA_05 = v_cualitatia05
				 where ID = CODIGO;
                 
                 update actividad  set DESCRIPCION = descripcion_actividad , PROTAGONISTA = protagonista_ac, META_ANUAL = meta_a,
					METRA_TRIMESTRAL = meta_t, PARTICIPANTES_F = part_f, PARTICIPANTES_M = part_m ,DIFICULTADES = dificultades_ac,
                    ALERTAS = alertas_ac, OBSERVACION = observacion_ac  where ID = CODIGO;
                 
                 
		/*	insert into actividad (DESCRIPCION,PROTAGONISTA,META_ANUAL,METRA_TRIMESTRAL,PARTICIPANTES_F,PARTICIPANTES_M,DIFICULTADES
			,ALERTAS,PROPUESTA,OBSERVACION,ID_P_MEDIDA,ID_V_CUALITATIVA,CEDULA_PERSONAL,FECHA_REGISTRO,ESTADO)
			values(descripcion_actividad,protagonista_ac,meta_a,meta_t,part_f,part_m,dificultades_ac,alertas_ac,alertas_ac,
			observacion_ac,id_medida,id_cualitativa,_cedula,curdate(),1);*/
            
			SELECT "Actividad Actualizada Correctamente" AS "MENSAJE";
        
        
    end if;
 
end//
delimiter ;

select * from actividad;
select * from valoracion_cualitativa;
select * from plan_de_medidas;
