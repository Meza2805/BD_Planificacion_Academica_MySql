delimiter // 
create procEDURE SP_Buscar_Codigo_Grupo
(
 _ID_MODALIDAD INT,
 _ID_GRADO INT,
 _ID_SECCION INT,
 _ID_TURNO INT
)
begin
 if exists (select ID from grupo where ID_MODALIDAD = _ID_MODALIDAD AND ID_GRADO = _ID_GRADO AND ID_SECCION = _ID_SECCION AND ID_TURNO = _ID_TURNO)  then
	select ID AS 'MENSAJE' from grupo where ID_MODALIDAD = _ID_MODALIDAD AND ID_GRADO = _ID_GRADO AND ID_SECCION = _ID_SECCION AND ID_TURNO = _ID_TURNO ;
 else
	select 'No Existe un grupo con esas caracteristicas' AS 'MENSAJE';
 end if;
 
 end// 
 delimiter ;
 
 call SP_Buscar_Codigo_Grupo(0,4,1,1);
 select * from grupo;