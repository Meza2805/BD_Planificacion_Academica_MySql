delimiter //
create procedure SP_Actualizar_Datos_Basicos_Personal
(
  _cedula char(18),
  _p_nombre varchar(35),
  _s_nombre varchar(35),
  _p_apellido varchar(35),
  _s_apellido varchar(35),
  _fecha_nac date,
  _sexo char(1),
  _telefono char(8),
  _direccion varchar(100),
  _id_cargo int
)
begin
   update personal  
	   set PRIMER_NOMBRE = upper(_p_nombre) ,
		   SEGUNDO_NOMBRE = upper(_s_nombre) ,
           PRIMER_APELLIDO =upper(_p_apellido) ,
           SEGUNDO_APELLIDO = upper(_s_apellido) ,
           FECHA_NACIMIENTO = _fecha_nac,
		   SEXO = upper(_sexo) ,
           TELEFONO = _telefono,
           DIRECCION =upper(_direccion) ,
           ID_CARGO = _id_cargo where CEDULA = _cedula;
		select "PERSONAL ACTUALIZADO" AS "MENSAJE";
end// 
delimiter ;
call SP_Actualizar_Datos_Basicos_Personal('A','MEZA','MEZA','MEZA','MEZA','2003-12-10','M','','',1);
select * from personal;
use planificacion_academica;