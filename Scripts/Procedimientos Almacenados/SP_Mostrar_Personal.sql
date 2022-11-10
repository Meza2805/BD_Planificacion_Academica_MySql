delimiter //
create procedure SP_Mostrar_Personal
(
  
)
begin
    select concat(PRIMER_NOMBRE," ",SEGUNDO_NOMBRE," ",PRIMER_APELLIDO," ",SEGUNDO_APELLIDO) as NOMBRE,  (date_format(FECHA_NACIMIENTO,"%d/%m/%Y")) as FECHA_NAC , SEXO,DIRECCION
    from personal order by NOMBRE;
end// 
delimiter ;