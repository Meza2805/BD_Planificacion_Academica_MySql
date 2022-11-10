/*Primer nivel*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (1,1);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (1,2);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (1,3);

/*Segundo nivel*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (2,1);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (2,2);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (2,3);

/*Tercer nivel*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (3,1);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (3,2);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (3,3);

/*Primer grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (4,4);

/*segundo grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (5,4);

/*tercero grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (6,4);

/*cuarto grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (7,4);

/*quinto grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (8,4);

/*sexto grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (9,4);

/*septimo grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (10,6);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (10,7);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (10,8);

/*octavo grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (11,6);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (11,7);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (11,8);

/*noveno grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (12,6);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (12,7);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (12,8);

/*decimo grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (13,6);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (13,7);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (13,8);

/*decimo grado*/
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (14,6);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (14,7);
insert into modalidad_grado (ID_GRADO,ID_MODALIDAD) VALUES (14,8);





select * from grado;
select * from modalidad;
select * from modalidad_grado;

select g.DESCRIPCION as GRADO, m.DESCRIPCION as MODALIDAD from grado g inner join modalidad_grado mg on g.ID = mg.ID_GRADO
					  inner join modalidad m on mg.ID_MODALIDAD = m.ID where g.ID= 14;