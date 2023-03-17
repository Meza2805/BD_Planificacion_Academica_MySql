delimiter //
create procedure SP_Mostrar_Docentes
(
  
)
begin
    select CEDULA,concat(PRIMER_NOMBRE," ",SEGUNDO_NOMBRE," ",PRIMER_APELLIDO," ",SEGUNDO_APELLIDO) as NOMBRE from personal
  
    
    where ESTADO_A = 1 order by NOMBRE ;
end// 
delimiter ;

select * from personal;