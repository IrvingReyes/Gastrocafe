ALTER TABLE Receta DROP CONSTRAINT FK_Receta_AreaProduccion_AreaProduccionId;

ALTER TABLE Receta 
	ADD CONSTRAINT FK_Receta_AreaProduccion_AreaProduccionId
	FOREIGN KEY (AreaProduccionId)
	REFERENCES AreaProduccion (id)
	ON DELETE SET NULL;