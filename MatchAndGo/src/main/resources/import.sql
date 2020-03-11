-- 
-- El contenido de este fichero se cargará al arrancar la aplicación, suponiendo que uses
-- 		application-default ó application-externaldb en modo 'create'
--

-- Usuario de ejemplo con username = b y contraseña = aa  
INSERT INTO user(id,enabled,username,password,roles,first_name,last_name) VALUES (
	1, 1, 'a', 
	'{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u',
	'USER,ADMIN',
	'Abundio', 'Ejémplez'
);

-- Otro usuario de ejemplo con username = b y contraseña = aa  
INSERT INTO user(id,enabled,username,password,roles,first_name,last_name) VALUES (
	2, 1, 'b', 
	'{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u',
	'USER',
	'Berta', 'Muéstrez'
);

INSERT INTO usuario(id,nombre,apellidos,correo,password,fecha_nac,sexo,roles) VALUES (
	1, 
	'nombre',
	'apellidos',
	'correo',
	'{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u',
	'fecha_nac',
	'String sexo', 
	'ADMIN'
);

INSERT INTO usuario(id,nombre,apellidos,correo,password,fecha_nac,sexo,roles) VALUES (
	2, 
	'nombre 2',
	'apellidos 2',
	'correo 2',
	'{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u',
	'fecha_nac 2',
	'String sexo 2', 
	'USER'
);

INSERT INTO usuario(id,nombre,apellidos,correo,password,fecha_nac,sexo,roles) VALUES (
	3, 
	'nombre 3',
	'apellidos 3',
	'correo 3',
	'{bcrypt}$2a$10$xLFtBIXGtYvAbRqM95JhcOaG23fHRpDoZIJrsF2cCff9xEHTTdK1u',
	'fecha_nac 3',
	'String sexo 3', 
	'USER'
);

INSERT INTO evento(id,nombre,descripcion,ubicacion) VALUES (
	1,
	'Nombre Evento',
	'Descripcion Evnto',
	'El retiro'
);
INSERT INTO evento(id,nombre,descripcion,ubicacion) VALUES (
	2,
	'Nombre Evento 2',
	'Descripcion Evnto 2',
	'El retiro'
);
INSERT INTO evento(id,nombre,descripcion,ubicacion) VALUES (
	3,
	'Nombre Evento 3',
	'Descripcion Evnto 3',
	'El retiro'
);