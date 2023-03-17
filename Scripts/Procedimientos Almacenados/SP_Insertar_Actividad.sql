CALL SP_Actualizar_Actividad(1,'Descripcion de prueba','40 Centros educativos realizando festivales de oratoria',40,30,20,10,
'festivales de oratoria',' con estudiantes de primaria, secundaria docentes y dirctores de 30 centros 
educativos del municipio de masaya','sobre falacias lógicas y argumentativas, como debates, discursos, 
conversación y entrevistas','promueven la expresión oral en los estudiantes',' Estas actividades han motivado
 a otros estudiantes a involucrarse a las actividades de expresion oral, evidenciando lo extrovertido de los
 niños,niñas y jovenes','A pesar que se ha avanzado en un 75%, el resultado no es satisfactorio, debido a que 
 no contaban con la normativa para realizar los festivales de oratoria.','15 de mayo','Con estudiantes de 
 primaria y secundaria de las escuelas que no realizaron la actividad','10 centros educativos','Organizados a 
 la hora de receso o en deporte escolar','En cada una de las 10 escuelas del municipio de masaya','Las circulares 
 enviadas por INFOMINED el destino final son las delegaciones departamentales lo que requiere otro tiempo para que 
 llegue hasta los centros educativos.','Las circulares enviadas por INFOMINED incluya como destino final las delegaciones
 municipales que estan más cerca de los centros educativos.','');

CALL SP_Insertar_Actividad('001-070984-0031F','1. Implementar el programa nacional orientado a fortalecer 
competencias fundamentales verificables en: aprendizaje amigable de las matemáticas para la resolución de problemas;
 el hábito, disfrute de la lectura y comprensión lectora; dominio del método científico, coherente con estándares curriculares
 y metodologías acordes a cada nivel educativo que contribuya a áreas vitales para la calidad educativa.'
 ,'Docentes de Primaria integrados en cursos de profesionalización en escuelas normales del pais.',40,30,20,20,
 'Se realizaron los festivales de oratoria en 30 centros educativos del municipio de masaya, con estudiantes de primaria',
 'con estudiantes de primaria',' secundaria, docentes y directores','sobre falacias lógicas y argumentativas, como debates, 
 discursos, conversación y entrevistas que promueven la expresión oral en los estudiantes.','Estas actividades han motivado a otros 
 estudiantes a involucrarse a las actividades de expresion oral, evidenciando lo extrovertido de los niños,niñas y jovenes.',
 'A pesar que se ha avanzado en un 75%, el resultado no es satisfactorio, debido a que no contaban con la normativa para realizar los festivales de oratoria.',
 '18 DE MAYO','ESTUDIANTES DE PRIMARIA Y SECUNDARIA','20 CENTROS EDUCATIVOS','ORGANIZADOS A LA HORA DE RECESO','CENTRO DE ESTUDIO','','',''
 );
delimiter //
create procedure SP_Insertar_Actividad
(
	_cedula char(18),
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
           insert into plan_de_medidas (PREGUNTA_01,PREGUNTA_02,PREGUNTA_03,PREGUNTA_04,PREGUNTA_05)
			values(p_medida_pregunta01,p_medida_pregunta02,p_medida_pregunta03,p_medida_pregunta04,p_medida_pregunta05);
			set id_medida = (SELECT LAST_INSERT_ID());
    
			insert into valoracion_cualitativa (PREGUNTA_01,PREGUNTA_02,PREGUNTA_03,PREGUNTA_04,PREGUNTA_05)
						values(v_cualitatia01,v_cualitatia02,v_cualitatia03,v_cualitatia04,v_cualitatia05);
			Set id_cualitativa = (SELECT LAST_INSERT_ID());
    
			insert into actividad (DESCRIPCION,PROTAGONISTA,META_ANUAL,METRA_TRIMESTRAL,PARTICIPANTES_F,PARTICIPANTES_M,DIFICULTADES
			,ALERTAS,PROPUESTA,OBSERVACION,ID_P_MEDIDA,ID_V_CUALITATIVA,CEDULA_PERSONAL,FECHA_REGISTRO,ESTADO)
			values(descripcion_actividad,protagonista_ac,meta_a,meta_t,part_f,part_m,dificultades_ac,alertas_ac,alertas_ac,
			observacion_ac,id_medida,id_cualitativa,_cedula,curdate(),1);
			SELECT "ACTIVIDAD REGISTRADA CORRECTAMENTE" AS "MENSAJE";
        
        
    end if;
 
end//
delimiter ;


use planificacion_academica;
select ID as CODIGO, DESCRIPCION, PROTAGONISTA, META_ANUAL,METRA_TRIMESTRAL,PARTICIPANTES_F,PARTICIPANTES_M ,
(PARTICIPANTES_F +PARTICIPANTES_M) as TOTAL_PARTICIPANTES,(((PARTICIPANTES_F +PARTICIPANTES_M) * 100)/ METRA_TRIMESTRAL) as META_TRIMESTRAL,
(((PARTICIPANTES_F +PARTICIPANTES_M) * 100)/ META_ANUAL) as META_ANUAL,DIFICULTADES
,ALERTAS,PROPUESTA,OBSERVACION from actividad;

select * from cargo;

SELECT * FROM ACTIVIDAD
use Planificacion_academica