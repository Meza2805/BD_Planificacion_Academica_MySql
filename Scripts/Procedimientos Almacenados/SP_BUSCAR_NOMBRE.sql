delimiter //
create procedure SP_BUSCAR_NOMBRE
(
	Usuario varchar(40)
)
begin
    SELECT concat(PRIMER_NOMBRE," " ,PRIMER_APELLIDO)  AS NOMBRE FROM PERSONAL where USSER = Usuario;
end// 
delimiter ;


call SP_BUSCAR_NOMBRE('magda123')