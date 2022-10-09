delimiter //
create procedure SP_LOGIN
(
	Usuario varchar(40),
    Contras varchar(40)
)
begin
     if exists (select USSER from personal where USSER = Usuario) then
		if ((select convert (aes_decrypt(CONTRA,'jabalises') using utf8) as CONTRA from personal where USSER = "magda123") = Contras) then
			select "ACCESO EXITOSO" as "MENSAJE";
		else
			select "CONTRASEÑA INCORRECTA" as "MENSAJE";
		end if;
     else
      select "EL USUARIO NO EXISTE" as  "MENSAJE";
     end if;
end// 
delimiter ;

select * from personal;