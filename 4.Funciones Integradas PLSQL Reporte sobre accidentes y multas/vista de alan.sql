USE Agencias_De_Seguros;
CREATE VIEW Vista_Personas AS
SELECT concat (nombre,' ',apellido) as nombre_completo,dpi,concat (vehiculo.placa,' ',
vehiculo.marca,' ',vehiculo.modelo) AS placa_marca_modelo,multas.si_no_multas as multas,multas.fecha,multas.costo_multa,
accidente.accidente_si_no as accidente,accidente.lugar,accidente.hora
 FROM Personas
INNER JOIN Vehiculo
ON Personas.id_vehiculo = vehiculo.id_vehiculo
INNER JOIN Accidente 
ON Personas.id_accidente = accidente.id_accidente
INNER JOIN Multas 
ON Personas.id_multa = multas.id_multa;
SELECT * FROM Vista_Personas;
