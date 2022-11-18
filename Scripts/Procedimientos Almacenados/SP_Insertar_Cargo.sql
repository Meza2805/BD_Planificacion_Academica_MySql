delimiter //
create procedure SP_Insertar_Cargo
(
	_cargo varchar(30)
)
begin
	set _cargo = ltrim(rtrim(_cargo));
	if (not exists (select DESCRIPCION from CARGO where DESCRIPCION = _cargo  )) then
			insert into cargo(DESCRIPCION,ESTADO,ESTADO_C) VALUES (upper(_cargo) ,0,1);
    select 'EL CARGO ACADÉMICO HA SIDO REGISTRADO EN LA BASE DE DATOS' AS 'MENSAJE';
    else
			select 'EL CARGO ACADÉMICO YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
  
end//
delimiter ;

select * from cargo;