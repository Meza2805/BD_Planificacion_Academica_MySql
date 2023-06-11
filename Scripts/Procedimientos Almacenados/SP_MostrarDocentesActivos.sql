delimiter //
create procedure SP_MostrarDocentesActivos
(
	
)
begin
 select CEDULA as cedula ,concat(PRIMER_NOMBRE," ",SEGUNDO_NOMBRE," ",PRIMER_APELLIDO," ",SEGUNDO_APELLIDO) as 
    NOMBRE from personal where ID_CARGO = 1 and CEDULA <> 0 order by NOMBRE; 
end//
delimiter ;

CALL SP_Mostrar_Actividad01();
select * from asignatura;
