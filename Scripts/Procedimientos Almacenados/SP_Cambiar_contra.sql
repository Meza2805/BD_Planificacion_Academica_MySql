delimiter //
create procedure SP_Cambiar_contra
(
	_Cedula_Personal char(18),
	_contra varchar(35)
)
begin
	update PERSONAL set CONTRA = aes_encrypt(_contra,'jabalises') where CEDULA=_Cedula_Personal;
    select 'CONTRASELA ACTUALIZDA' AS 'MENSAJE';
end//
delimiter ;

use Planificacion_academica;
select  PRIMER_NOMBRE,  convert (aes_decrypt(CONTRA,'jabalises') using utf8) as CONTRA from personal;
select convert (aes_decrypt(CONTRA,'jabalises') using utf8;


select * from personal;
update PERSONAL set CONTRA = aes_encrypt('SIRVE','jabalises') where CEDULA='001-010805-1023O';
aes_encrypt('temporal','jabalises')


CALL SP_Cambiar_contra('001-070984-0031F','magda123');