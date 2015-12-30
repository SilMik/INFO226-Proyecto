--Companias
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Primera','-39.808759','-73.256989')
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Segunda','-39.813705','-73.222247')
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Tercera','-39.820530','-73.229923')
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Cuarta','-39.816869','-73.238551')
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Quinta','-39.812147','-73.244991')
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Sexta','-39.832151','-73.216759')
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Septima','-39.831917','-73.241785')
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Octava','-39.812155','-73.244992')
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Novena','-39.814643','-73.209233')
INSERT INTO COMPANIA(nombre,latitud,longitud) VALUES ('Decima','-39.869958','-73.400171')


--Carros
--Primera Compañia FK=1
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('RH-1','1');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('RX-1','1');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-1','1');
--Segunda Compañia FK=2
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-2','2');
--Tercera Compañia FK=3
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-3','3');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('BX-3','3');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('M-3','3');
--Cuarta Compañia FK=4
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-4','4');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('R-4','4'); --Rescate altura o cuerdas
--Quinta Compañia FK=5
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-5','5');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('Q-5','5');--Porta escalas
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('Z-5','5');--Cisterna
--Sexta Compañia FK=6
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-6','6');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('H-6','6'); --Materiales Peligrosos
--Septima Compañia FK=7
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-7','7');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('BX-7','7');
--Octava Compañia FK=8
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-8','8');
--Novena Compañia FK=9
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-9','9');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('BX-9','9');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('C-9','9'); --Aire
--Decima Compañia FK=10
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('B-10','10');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('BX-10','10');
INSERT INTO CARRO(nombre,Compañia_idCompañia) VALUES ('Z-10','10'); --Cisterna


--Codigos
--10-0 Incendios
INSERT INTO CODIGO(codigo) VALUES('10-0')
INSERT INTO CODIGO(codigo) VALUES('10-0-1') --Q-5 RX-1 C-9 Z-5
INSERT INTO CODIGO(codigo) VALUES('10-0-2') --Q-5, RX-1, C-9 M-3 H-6
INSERT INTO CODIGO(codigo) VALUES('10-0-3') -- Z-5
INSERT INTO CODIGO(codigo) VALUES('10-0-4') -- B-6 B-3 B-7 C-9 RH-1 Z-5
--10-1  rescate personas atrapadas
INSERT INTO CODIGO(codigo) VALUES('10-1')
INSERT INTO CODIGO(codigo) VALUES('10-2')
INSERT INTO CODIGO(codigo) VALUES('10-3-1') --RH-1
INSERT INTO CODIGO(codigo) VALUES('10-3-2')--RH-1 R-4 M-3
INSERT INTO CODIGO(codigo) VALUES('10-3-3') -- RH-1 R-4
INSERT INTO CODIGO(codigo) VALUES('10-3-4') -- RH-1 
-- 10-4 Rescate vehicular
INSERT INTO CODIGO(codigo) VALUES('10-4-1') -- RH-1
INSERT INTO CODIGO(codigo) VALUES('10-4-2') -- RX-1 B-8 R-4 H-6
-- 10-5 Incidente con materiales peligrosos
INSERT INTO CODIGO(codigo) VALUES('10-5') -- H-6  C-9
-- 10-6 emanación de gases
INSERT INTO CODIGO(codigo) VALUES('10-6') 
INSERT INTO CODIGO(codigo) VALUES('10-7')
INSERT INTO CODIGO(codigo) VALUES('10-8')
INSERT INTO CODIGO(codigo) VALUES('10-9') --tipo de servicio
INSERT INTO CODIGO(codigo) VALUES('10-10')
INSERT INTO CODIGO(codigo) VALUES('10-11') -- B-2 BX-3 RX-1 H-6 Z-5
INSERT INTO CODIGO(codigo) VALUES('10-12') -- Condicion diferente. Apoyo a otras localidades
INSERT INTO CODIGO(codigo) VALUES('10-13') -- Ataque terrorista
INSERT INTO CODIGO(codigo) VALUES('10-14') -- H-6 RX-1
INSERT INTO CODIGO(codigo) VALUES('10-15')  -- Simulacro derp


 --Especialidades
 --10-0-1
 INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('2','2') -- RX-1
 INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('11','2') -- Q-5
 INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('20','2') -- C-9
 INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('12','2') -- Z-5 Caso especial rurales.
 --10-0-2
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('2','3') --RX-1
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('11','3') --Q-5
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('20','3') --C-9
-- Condicionales para el 10-0-2
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('7','3')  -- M-3 Estructuras de dos pisos
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('14','3') --  H-6 Material peligroso
--10-0-3
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('12','4') -- Z-5
--10-0-4
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('13','5') --B-6
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('5','5') -- B-3
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('15','5') -- B-7
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('20','5') -- C-9
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('2','5') --RX-1
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('12','5') -- Z-5
--10-3-1
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('1','8') -- RH-1
--10-3-2
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('1','9') -- RH-1
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('9','9') --R-4
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('7','9') -- M-3
--10-3-3
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('1','10') --RH-1
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('9','10')  --R-4
--10-3-4
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('1','11') --RH-1
--10-4-1
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('1','12')  --RH-1
--10-4-2
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('2','13')  --RX-1
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('9','13')  --R-4
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('17','13')  -- B-8
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('14','13')  --H-6
--10-5
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('14','14') --H-6
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('20','14') -- C-9
--10-11
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('4','20') -- B-2 
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('6','20')  --BX-3 
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('2','20')  --RX-1 
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('14','20')  --H-6 
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('12','20')  --Z-5
--10-14
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('2','23') --RX-1
INSERT INTO ESPECIALIDAD(Carro_idCarro, Codigo_idCodigo) VALUES('14','23') -- H-6




/*Otros carros no utilizados en la aplicación

Otros:
J-1 (transporte de superintendencia)
K-1 (transporte de comandancia)
K-2 (transporte de comandancia)

 */