--SELECT * FROM CLIENTES
--SELECT * FROM EMPRESAS
--SELECT * FROM PRESUPUESTOS
--SELECT * FROM TIPOS_CENTRO
--SELECT * FROM TIPOS_SERVICIO

SELECT CLI.Apellidos, CLI.Nombre, CLI.Direccion, CLI.CP,
	   CLI.Poblacion, CLI.Mail, CLI.Telefono, CLI.Horario,
	   PRES.Empresa AS 'Empresa', PRES.Tipos_Centro, 
	   PRES.Tipos_Servicio, PRES.Consulta
FROM PRESUPUESTOS PRES
INNER JOIN SOLICITANTES CLI ON PRES.Cod_Solicitante = CLI.Codigo

--SELECT * FROM TIPOS_EMPLEO

SELECT * FROM CANDIDATURAS

--DELETE FROM CLIENTES
--DELETE FROM EMPRESAS
--DELETE FROM PRESUPUESTOS
--DELETE FROM TIPOS_CENTRO
--DELETE FROM TIPOS_SERVICIO

