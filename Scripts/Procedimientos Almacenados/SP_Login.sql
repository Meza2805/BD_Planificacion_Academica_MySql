delimiter //
create procedure SP_LOGIN
(
	_Usser varchar(40),
    _Contras varchar(40)
)
begin
     if exists (select usser from logion where usser = _Usser) then
		if ((select contra from logion where usser = _Usser) = _Contras) then
			select "ACCESO EXITOSO" as "MENSAJE",usser as "NOMBRE" from usuario
            where usser = _Usser;
		else
			select "CONTRASEÑA INCORRECTA" as "MENSAJE";
		end if;
     else
      select "EL USUARIO NO EXISTE" as  "MENSAJE";
     end if;
end// 
delimiter ;


call SP_LOGIN('CARLOS','123');
select * from login;
select * from usuario;
select * from cliente;
select * from cargo;

call SP_Actualizar_Cliente(13,'marcos','aurelio','meza','pineda','','')