delimiter //
create procedure SP_Mostrar_Personal
(
  
)
begin
    select CEDULA,concat(PRIMER_NOMBRE," ",SEGUNDO_NOMBRE," ",PRIMER_APELLIDO," ",SEGUNDO_APELLIDO) as NOMBRE, 
    year(curdate())-year(FECHA_NACIMIENTO) as EDAD , IF(SEXO='F','FEMENINO','MASCULINO') AS SEXO,TELEFONO,DIRECCION,c.DESCRIPCION AS CARGO
    from personal p INNER JOIN CARGO c on p.ID_CARGO = c.ID
    
    where ESTADO_A = 1 order by NOMBRE ;
end// 
delimiter ;

select * from personal;