delimiter //
create procedure SP_Insertar_Personal
(
	_Cedula_Personal char(18),
	_Primer_Nombre varchar(35),
	_Segundo_Nombre varchar(35),
	_Primer_Apellido varchar(35),
	_Segundo_Apellido varchar(35),
    _Fecha_Nacimiento date,
	_Sexo int,
	_Telefono char(8),
    _Direccion varchar(100),
    _cargo int
)
begin
	/*INICIALIZANDO ALGUNAS VARIABLES*/
		DECLARE _Usser varchar(20);
		 DECLARE _Horas int;
         declare _estado bit;
         declare _s char(1);
         if(_Sexo = 1) then
			 set _s="F";
		 else
			set _s="M";
			end if;
         set _Horas = 10;
         set _Usser = lower(CONCAT(_Primer_Nombre , "123"));
         set _estado = 0;
	if (not exists (select CEDULA from PERSONAL where STRCMP(CEDULA,_Cedula_Personal)  = 0) ) then
			insert into PERSONAL(CEDULA,PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,SEXO,TELEFONO,DIRECCION,HORAS_LABORALES,USSER,CONTRA,ESTADO,ID_CARGO,FECHA_REGISTRO) 
			values (upper(_Cedula_Personal),upper(_Primer_Nombre),upper(_Segundo_Nombre),upper(_Primer_Apellido),upper(_Segundo_Apellido),_Fecha_Nacimiento,upper(_s),_Telefono,upper(_Direccion),_Horas,_Usser, aes_encrypt('temporal','jabalises'),_estado,_cargo,curdate());
	
    select 'EL PERSONAL HA SIDO REGISTRADO EN LA BASE DE DATOS' AS 'MENSAJE';
    else
			select 'EL PERSONAL YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
  
end//
delimiter ;


select * from personal  order by FECHA_REGISTRO ;