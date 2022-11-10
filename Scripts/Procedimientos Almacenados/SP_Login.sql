delimiter //


create procedure SP_LOGIN
(
	Usuario varchar(40),
    Contras varchar(40)
)
begin
     if exists (select USSER from personal where USSER = Usuario) then
		if ((select convert (aes_decrypt(CONTRA,'jabalises') using utf8) as CONTRA from personal where USSER = "magda123") = Contras) then
			select "ACCESO EXITOSO" as "MENSAJE",concat(p.PRIMER_NOMBRE,' ',p.PRIMER_APELLIDO) as "NOMBRE", c.DESCRIPCION as"CARGO" from personal
            
            p inner join cargo c ON p.ID_CARGO = c.ID
            where USSER = Usuario;
		else
			select "CONTRASEÑA INCORRECTA" as "MENSAJE";
		end if;
     else
      select "EL USUARIO NO EXISTE" as  "MENSAJE";
     end if;
end// 
delimiter ;

select * from personal;
select * from cargo;
call  SP_LOGIN('sebas123','temporal');
select * from personal p inner join cargo c ON p.ID_CARGO = c.ID;