delimiter //
create procedure SP_Mostrar_Docente_Info
(
   _Cedula varchar(18)
)
begin
   select concat(PRIMER_NOMBRE," ", SEGUNDO_NOMBRE," ", PRIMER_APELLIDO," ", SEGUNDO_APELLIDO) as NOMBRE,   (HORAS_LABORALES - 10) AS HORAS_CLASES from personal
    where CEDULA = _Cedula ;
end// 
delimiter ;

select * from personal;