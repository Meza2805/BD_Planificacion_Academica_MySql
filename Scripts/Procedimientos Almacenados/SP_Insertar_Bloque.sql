delimiter //
create procedure SP_Insertar_Bloque
(
    _descripcion varchar(20),
    _tiempo_designado varchar(40),
    _id_modalidad int
)
begin
			insert into bloque (DESCRIPCION,TIEMPO_DESIGNADO,ID_MODALIDAD,ESTADO) values (_descripcion,_tiempo_designado, _id_modalidad,0);
            select 'BLOQUE REGISTRADO CORRECTAMENTE' AS 'MENSAJE';

end//
delimiter ;

select * from bloque;

