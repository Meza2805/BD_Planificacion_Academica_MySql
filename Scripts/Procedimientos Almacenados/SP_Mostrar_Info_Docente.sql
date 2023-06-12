delimiter //
create procedure SP_Mostrar_Info_Docente
(
	
)
begin
  SELECT 
        `p`.`CEDULA` AS `cedula`,
        CONCAT(`p`.`PRIMER_NOMBRE`,
                ' ',
                `p`.`SEGUNDO_NOMBRE`,
                ' ',
                `p`.`PRIMER_APELLIDO`,
                ' ',
                `p`.`SEGUNDO_APELLIDO`) AS `NOMBRE`
    FROM
        `personal` `p` where CEDULA <> '0' order by NOMBRE;
end//
delimiter ;

CALL SP_Mostrar_Actividad01();
select * from asignatura;
