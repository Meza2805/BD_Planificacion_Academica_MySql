delimiter //
create procedure SP_Insertar_Asigantura
(
	_Desripcion varchar(45)
)
begin
	if (not exists (select DESCRIPCION from asignatura where STRCMP(DESCRIPCION,_Desripcion)  = 0) ) then
			INSERT INTO asignatura (DESCRIPCION,ESTADO) VALUES (upper(_Desripcion),0);
    select 'LA ASIGNATURA HA SIDO REGISTRADA CORRECTAMENTE' AS 'MENSAJE';
    else
			select 'LA ASIGNATURA YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
  
end//
delimiter ;

