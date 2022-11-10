use planificacion_academica;
/*MUESTRA USUARIOS Y CONTRASEÑAS ENCRIPTADAS*/
select  USSER, CONTRA from personal;

select  USSER from personal where USSER =   'magda123'   ;

/*MUESTRA USUARIOS Y CONTRASEÑAS DESENCRIPTADAS*/
select  USSER, convert (aes_decrypt(CONTRA,'jabalises') using utf8) as CONTRA from personal;


call SP_Login("magda123","temporal");

/*ENCRIPTACION DE PRUEBA*/
update personal set CONTRA = 'temporal' where ID_CARGO = 1;
update personal set CONTRA =  aes_encrypt(CONTRA,'jabalises') WHERE ID_CARGO = 1;
select * from personal;