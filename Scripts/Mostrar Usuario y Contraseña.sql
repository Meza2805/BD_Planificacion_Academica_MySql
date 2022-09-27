use planificacion_academica;
/*MUESTRA USUARIOS Y CONTRASEÑAS ENCRIPTADAS*/
select CEDULA, PRIMER_NOMBRE, SEGUNDO_APELLIDO, USSER, CONTRA from personal;

/*MUESTRA USUARIOS Y CONTRASEÑAS DESENCRIPTADAS*/
select CEDULA, PRIMER_NOMBRE, SEGUNDO_APELLIDO, USSER, convert (aes_decrypt(CONTRA,'jabalises') using utf8) as CONTRA from personal;




/*ENCRIPTACION DE PRUEBA*/
update personal set CONTRA = 'temporal' where ID_CARGO = 1;
update personal set CONTRA =  aes_encrypt(CONTRA,'jabalises') WHERE ID_CARGO = 1;
select * from personal;