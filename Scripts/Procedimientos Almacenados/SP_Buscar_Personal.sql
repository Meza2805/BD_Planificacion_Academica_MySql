delimiter //
create procedure SP_Buscar_Personal
(
  _cedula char(18)
)
begin
  select PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO 
  as FECHA_NAC,SEXO,TELEFONO,DIRECCION,ID_CARGO from personal where CEDULA = _cedula ;
end// 
delimiter ;

 