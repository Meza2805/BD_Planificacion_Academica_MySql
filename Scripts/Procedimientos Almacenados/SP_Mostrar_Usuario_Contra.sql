 delimiter //
create procedure SP_Mostrar_Usuario_Contra
(

)
begin
select CEDULA, concat(PRIMER_NOMBRE," ",SEGUNDO_NOMBRE," ",PRIMER_APELLIDO," ",SEGUNDO_APELLIDO) as NOMBRE
 ,  USSER , CONTRA from personal;
end//
delimiter ;
