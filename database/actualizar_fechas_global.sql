-- Correccion global de fechas desde fuente Excel
-- Copia fechas reales; no intenta adivinar dia/mes en valores ambiguos.
USE gestio_humana;
START TRANSACTION;

-- empleado 1234340637 | ACEVEDO SILVA ELKIN JULIAN
UPDATE empleado SET fecha_expedicion = '01/08/2017', fecha_ingreso = '07/05/2025', fecha_nacimiento = '08/05/1999' WHERE id_cedula = '1234340637';
-- empleado 1102368534 | AFANADOR PINEDA NELSON
UPDATE empleado SET fecha_expedicion = '29/03/2010', fecha_ingreso = '26/07/2012', fecha_nacimiento = '22/03/1992' WHERE id_cedula = '1102368534';
-- empleado 1007679366 | AGON PEDRAZA JAIRO FABIAN
UPDATE empleado SET fecha_expedicion = '28/01/2019', fecha_ingreso = '09/03/2022', fecha_nacimiento = '26/01/2001' WHERE id_cedula = '1007679366';
-- empleado 1098782376 | AGUILERA PALACIO EDGAR FAVIAN
UPDATE empleado SET fecha_expedicion = '02/04/2014', fecha_ingreso = '06/07/2022', fecha_nacimiento = '19/03/1996' WHERE id_cedula = '1098782376';
-- empleado 91207724 | ALFONSO SANCHEZ ANTONIO MARIA
UPDATE empleado SET fecha_expedicion = '01/12/1978', fecha_ingreso = '22/01/2014', fecha_nacimiento = '18/11/1956' WHERE id_cedula = '91207724';
-- empleado 1095838237 | ALMEIDA JAIMES DANIEL ANDRES
UPDATE empleado SET fecha_expedicion = '08/07/2016', fecha_ingreso = '01/06/2019', fecha_nacimiento = '03/07/1998' WHERE id_cedula = '1095838237';
-- empleado 729244410021987 | ALVAREZ ARVELO ROKY DAVID
UPDATE empleado SET fecha_expedicion = '10/02/2020', fecha_ingreso = '01/12/2020', fecha_nacimiento = '10/02/1987' WHERE id_cedula = '729244410021987';
-- empleado 1096248201 | ALVAREZ RINCON JHON FRANCISCO
UPDATE empleado SET fecha_expedicion = '28/06/2016', fecha_ingreso = '16/12/2020', fecha_nacimiento = '25/06/1998' WHERE id_cedula = '1096248201';
-- empleado 1127947881 | ALVIAREZ CARVAJAL KEVIN GREGORIO
UPDATE empleado SET fecha_expedicion = '10/08/2011', fecha_ingreso = '11/12/2017', fecha_nacimiento = '02/01/1992' WHERE id_cedula = '1127947881';
-- empleado 91258301 | AMADOR SUAN SIXTO
UPDATE empleado SET fecha_expedicion = '19/08/1986', fecha_ingreso = '01/08/2012', fecha_nacimiento = '07/05/1968' WHERE id_cedula = '91258301';
-- empleado 91466051 | AMARIZ RIVERA OMAR
UPDATE empleado SET fecha_expedicion = '13/07/1995', fecha_ingreso = '09/10/2016', fecha_nacimiento = '27/05/1977' WHERE id_cedula = '91466051';
-- empleado 1095917149 | AMAYA TASCO JORGE ALEXIS
UPDATE empleado SET fecha_expedicion = '23/04/2007', fecha_ingreso = '24/08/2020', fecha_nacimiento = '18/02/1989' WHERE id_cedula = '1095917149';
-- empleado 80230965 | AMAYA ZAPATA FABIAN ANCISAR
UPDATE empleado SET fecha_expedicion = '20/08/1998', fecha_ingreso = '15/09/2022', fecha_nacimiento = '11/08/1980' WHERE id_cedula = '80230965';
-- empleado 4926140 | AMUNDARAIN MEDINA LUIS DAVID ISAIAS
UPDATE empleado SET fecha_expedicion = '25/04/2022', fecha_ingreso = '10/08/2022', fecha_nacimiento = '26/12/1994' WHERE id_cedula = '4926140';
-- empleado 91486771 | ANAYA ANAYA JORGE ELIECER
UPDATE empleado SET fecha_expedicion = '20/06/1994', fecha_ingreso = '08/02/2018', fecha_nacimiento = '16/12/1975' WHERE id_cedula = '91486771';
-- empleado 91487619 | ANAYA WILLIAM
UPDATE empleado SET fecha_expedicion = '20/06/1994', fecha_ingreso = '17/01/2014', fecha_nacimiento = '15/01/1976' WHERE id_cedula = '91487619';
-- empleado 1095909192 | ANGARITA CASTILLO HERSON DAVID
UPDATE empleado SET fecha_expedicion = '13/01/2005', fecha_ingreso = '01/11/2019', fecha_nacimiento = '02/06/1986' WHERE id_cedula = '1095909192';
-- empleado 91536065 | APARICIO CHINCHILLA HERNANDO ALBERTO
UPDATE empleado SET fecha_expedicion = '27/01/2003', fecha_ingreso = '01/05/2022', fecha_nacimiento = '11/11/1984' WHERE id_cedula = '91536065';
-- empleado 1148454856 | ARANDA FERRER MARLON GREGORY
UPDATE empleado SET fecha_expedicion = '15/11/2018', fecha_ingreso = '26/09/2022', fecha_nacimiento = '20/05/1993' WHERE id_cedula = '1148454856';
-- empleado 1098618560 | ARAQUE HERRERA DIEGO JAVIER
UPDATE empleado SET fecha_expedicion = '28/07/2004', fecha_ingreso = '08/09/2020', fecha_nacimiento = '01/07/1986' WHERE id_cedula = '1098618560';
-- empleado 91540171 | ARDILA PARRA JOAO CARLOS
UPDATE empleado SET fecha_expedicion = '18/06/2003', fecha_ingreso = '24/08/2020', fecha_nacimiento = '11/05/1985' WHERE id_cedula = '91540171';
-- empleado 1098645575 | ARDILA SALAS EDWARD ALEXANDER
UPDATE empleado SET fecha_expedicion = '25/11/2005', fecha_ingreso = '17/11/2017', fecha_nacimiento = '15/10/1987' WHERE id_cedula = '1098645575';
-- empleado 1098660251 | ARENAS SARMIENTO FAUSTO ANDRES
UPDATE empleado SET fecha_expedicion = '19/10/2006', fecha_ingreso = '17/07/2015', fecha_nacimiento = '18/10/1988' WHERE id_cedula = '1098660251';
-- empleado 1005336879 | ARENIS JAIMES JEISON ANDRES
UPDATE empleado SET fecha_expedicion = '02/11/2018', fecha_ingreso = '05/12/2020', fecha_nacimiento = '01/11/2000' WHERE id_cedula = '1005336879';
-- empleado 1097302025 | ARIZA RODRIGUEZ DANIEL
UPDATE empleado SET fecha_ingreso = '09/12/2022', fecha_nacimiento = '12/10/1985' WHERE id_cedula = '1097302025';
-- empleado 4994640 | AULAR CASTRILLO LEONEL ARNARDO
UPDATE empleado SET fecha_expedicion = '01/12/2021', fecha_ingreso = '26/09/2022', fecha_nacimiento = '08/12/1989' WHERE id_cedula = '4994640';
-- empleado 1095927567 | AVENDAÑO NOBLES CHRISTIAN FABIAN
UPDATE empleado SET fecha_expedicion = '13/01/2010', fecha_ingreso = '03/10/2022', fecha_nacimiento = '09/01/1992' WHERE id_cedula = '1095927567';
-- empleado 1005272415 | AYALA ANGEL GIOVANNY
UPDATE empleado SET fecha_expedicion = '03/09/2014', fecha_ingreso = '01/11/2022', fecha_nacimiento = '31/08/1996' WHERE id_cedula = '1005272415';
-- empleado 1098634542 | AYALA GUTIERREZ JOHN JAIRO
UPDATE empleado SET fecha_expedicion = '16/05/2005', fecha_ingreso = '17/03/2014', fecha_nacimiento = '07/04/1987' WHERE id_cedula = '1098634542';
-- empleado 1090993306 | BALLESTEROS PARADA JOSE GREGORIO
UPDATE empleado SET fecha_expedicion = '23/10/2020', fecha_ingreso = '17/12/2020', fecha_nacimiento = '27/05/1996' WHERE id_cedula = '1090993306';
-- empleado 1130023 | BANDES RAIMER EDUARDO
UPDATE empleado SET fecha_expedicion = '08/03/2022', fecha_ingreso = '12/05/2022', fecha_nacimiento = '29/11/1993' WHERE id_cedula = '1130023';
-- empleado 91223001 | BARAJAS APARICIO FIDEL
UPDATE empleado SET fecha_expedicion = '02/03/1981', fecha_ingreso = '26/07/2012', fecha_nacimiento = '31/12/1962' WHERE id_cedula = '91223001';
-- empleado 1098619262 | BARAJAS GUEVARA EULISIS
UPDATE empleado SET fecha_expedicion = '09/08/2004', fecha_ingreso = '05/09/2019', fecha_nacimiento = '05/08/1986' WHERE id_cedula = '1098619262';
-- empleado 91356514 | BARAJAS REY WILSON
UPDATE empleado SET fecha_expedicion = '21/05/2003', fecha_ingreso = '20/04/2021', fecha_nacimiento = '27/03/1985' WHERE id_cedula = '91356514';
-- empleado 91474893 | BAUTISTA BAUTISTA JHON MARCELINO
UPDATE empleado SET fecha_expedicion = '26/02/1993', fecha_ingreso = '26/07/2012', fecha_nacimiento = '05/08/1974' WHERE id_cedula = '91474893';
-- empleado 1090520256 | BAUTISTA CRUZ JOSE DANIEL
UPDATE empleado SET fecha_expedicion = '24/10/2016', fecha_ingreso = '14/09/2020', fecha_nacimiento = '23/06/1997' WHERE id_cedula = '1090520256';
-- empleado 1098697292 | BAYONA RAMIREZ JAHIR STEVEN
UPDATE empleado SET fecha_expedicion = '26/12/2008', fecha_ingreso = '10/10/2020', fecha_nacimiento = '15/10/1990' WHERE id_cedula = '1098697292';
-- empleado 37557088 | BETANCURT AGUDELO LUZ JASMIN
UPDATE empleado SET fecha_expedicion = '19/06/1996', fecha_ingreso = '26/07/2012', fecha_nacimiento = '10/05/1977' WHERE id_cedula = '37557088';
-- empleado 1005156867 | BLANCO ALQUICHIRE JUAN JOSE
UPDATE empleado SET fecha_expedicion = '27/11/2017', fecha_ingreso = '24/08/2022', fecha_nacimiento = '23/11/1999' WHERE id_cedula = '1005156867';
-- empleado 1098618482 | BLANCO CAVIEDES JOHN EDWIN
UPDATE empleado SET fecha_expedicion = '27/07/2004', fecha_ingreso = '02/02/2016', fecha_nacimiento = '11/04/1986' WHERE id_cedula = '1098618482';
-- empleado 1098703863 | BLANCO NIEVES WILLIAM ALEJANDRO
UPDATE empleado SET fecha_expedicion = '04/05/2009', fecha_ingreso = '27/03/2020', fecha_nacimiento = '02/05/1991' WHERE id_cedula = '1098703863';
-- empleado 28338018 | BOHORQUEZ RODRIGUEZ MARIA EUGENIA
UPDATE empleado SET fecha_expedicion = '31/10/1994', fecha_ingreso = '04/12/2014', fecha_nacimiento = '23/02/1975' WHERE id_cedula = '28338018';
-- empleado 1084732627 | BOLAÑO ALVAREZ HERNAN JOSE
UPDATE empleado SET fecha_expedicion = '15/01/2014', fecha_ingreso = '22/11/2021', fecha_nacimiento = '17/06/1995' WHERE id_cedula = '1084732627';
-- empleado 13542099 | BOTHIA RAMIREZ OMAR
UPDATE empleado SET fecha_expedicion = '27/08/1996', fecha_ingreso = '03/02/2016', fecha_nacimiento = '08/06/1978' WHERE id_cedula = '13542099';
-- empleado 5684958 | CABALLERO MOTTA ELIAS
UPDATE empleado SET fecha_expedicion = '09/07/1985', fecha_ingreso = '22/01/2014', fecha_nacimiento = '08/07/1967' WHERE id_cedula = '5684958';
-- empleado 1005565551 | CABEZA FLOREZ JOHAN STIVEN
UPDATE empleado SET fecha_expedicion = '26/02/2020', fecha_ingreso = '13/03/2024', fecha_nacimiento = '12/10/2001' WHERE id_cedula = '1005565551';
-- empleado 1126427502 | CACERES BALLESTEROS HERNAN DARIO
UPDATE empleado SET fecha_expedicion = '27/08/2015', fecha_ingreso = '19/10/2022', fecha_nacimiento = '16/07/1997' WHERE id_cedula = '1126427502';
-- empleado 13872972 | CACERES CARREÑO FREDDY ALEXANDER
UPDATE empleado SET fecha_expedicion = '04/11/1999', fecha_ingreso = '11/08/2017', fecha_nacimiento = '20/10/1981' WHERE id_cedula = '13872972';
-- empleado 1005373428 | CACERES MURILLO ANDREA DAYANA
UPDATE empleado SET fecha_expedicion = '26/10/2018', fecha_ingreso = '01/11/2022', fecha_nacimiento = '24/10/2000' WHERE id_cedula = '1005373428';
-- empleado 1005623640 | CACERES RAMIREZ LIZETH DAYANA
UPDATE empleado SET fecha_expedicion = '30/06/2017', fecha_ingreso = '01/10/2020', fecha_nacimiento = '19/06/1999' WHERE id_cedula = '1005623640';
-- empleado 1095943754 | CACUA RINCON JOSE GIOVANY
UPDATE empleado SET fecha_expedicion = '05/05/2014', fecha_ingreso = '09/12/2022', fecha_nacimiento = '03/05/1996' WHERE id_cedula = '1095943754';
-- empleado 5297986 | CALDERON ANTON SNEIDER JOSE
UPDATE empleado SET fecha_expedicion = '12/12/2000', fecha_ingreso = '01/12/2022', fecha_nacimiento = '22/08/2000' WHERE id_cedula = '5297986';
-- empleado 1095813788 | CAMACHO DIAZ DIEGO
UPDATE empleado SET fecha_expedicion = '25/09/2010', fecha_ingreso = '20/04/2021', fecha_nacimiento = '12/05/1992' WHERE id_cedula = '1095813788';
-- empleado 1102362259 | CAMACHO MONTAÑES FELIX MANUEL
UPDATE empleado SET fecha_expedicion = '11/01/2008', fecha_ingreso = '13/06/2018', fecha_nacimiento = '25/12/1989' WHERE id_cedula = '1102362259';
-- empleado 1065245739 | CAMELO ESPEJO JOSE ARMANDO
UPDATE empleado SET fecha_expedicion = '13/11/2015', fecha_ingreso = '24/03/2021', fecha_nacimiento = '17/10/1997' WHERE id_cedula = '1065245739';
-- empleado 1010185885 | CAMPOS CARREÑO ALEXANDER
UPDATE empleado SET fecha_expedicion = '23/10/2007', fecha_ingreso = '09/12/2019', fecha_nacimiento = '25/08/1989' WHERE id_cedula = '1010185885';
-- empleado 91347680 | CANCINO WILMAR JAVIER
UPDATE empleado SET fecha_expedicion = '09/08/1992', fecha_ingreso = '16/07/2014', fecha_nacimiento = '03/08/1974' WHERE id_cedula = '91347680';
-- empleado 1095957344 | CANDELA FLOREZ JUAN DAVID
UPDATE empleado SET fecha_expedicion = '10/04/1999', fecha_ingreso = '15/10/2022', fecha_nacimiento = '04/10/1999' WHERE id_cedula = '1095957344';
-- empleado 1098807906 | CANONIGO ORTIZ JESSICA PAOLA
UPDATE empleado SET fecha_expedicion = '13/06/2016', fecha_ingreso = '16/08/2022', fecha_nacimiento = '06/05/1998' WHERE id_cedula = '1098807906';
-- empleado 13748778 | CARDENAS CAICEDO URIEL
UPDATE empleado SET fecha_expedicion = '01/03/1999', fecha_ingreso = '07/10/2014', fecha_nacimiento = '13/01/1981' WHERE id_cedula = '13748778';
-- empleado 91259663 | CARDENAS MELENDEZ FABIO ARNOL
UPDATE empleado SET fecha_expedicion = '23/09/1986', fecha_ingreso = '26/07/2012', fecha_nacimiento = '07/01/1968' WHERE id_cedula = '91259663';
-- empleado 91159389 | CARDENAS MELENDEZ JHON FREDY
UPDATE empleado SET fecha_expedicion = '11/03/1999', fecha_ingreso = '26/07/2012', fecha_nacimiento = '17/07/1980' WHERE id_cedula = '91159389';
-- empleado 37713299 | CARDOZO PABON ANA LUZ
UPDATE empleado SET fecha_expedicion = '02/12/1995', fecha_ingreso = '04/04/2013', fecha_nacimiento = '12/09/1975' WHERE id_cedula = '37713299';
-- empleado 1004161830 | CARRASQUILLA MERCADO EDUARDO JOSE
UPDATE empleado SET fecha_expedicion = '04/04/2018', fecha_ingreso = '13/07/2022', fecha_nacimiento = '27/03/2000' WHERE id_cedula = '1004161830';
-- empleado 1098826186 | CARREÑO MENDOZA JUAN PABLO
UPDATE empleado SET fecha_expedicion = '18/01/2018', fecha_ingreso = '01/08/2022', fecha_nacimiento = '15/01/2000' WHERE id_cedula = '1098826186';
-- empleado 1234340765 | CARRILLO FLOREZ JHONNIER DE NILSON
UPDATE empleado SET fecha_expedicion = '08/09/2017', fecha_ingreso = '05/08/2020', fecha_nacimiento = '07/09/1999' WHERE id_cedula = '1234340765';
-- empleado 1100897117 | CARRILLO RODRIGUEZ JULIAN OSWALDO
UPDATE empleado SET fecha_expedicion = '11/07/2017', fecha_ingreso = '13/03/2021', fecha_nacimiento = '18/04/1999' WHERE id_cedula = '1100897117';
-- empleado 91541543 | CARRILLO SUAREZ YEINSS
UPDATE empleado SET fecha_expedicion = '11/08/2003', fecha_ingreso = '09/10/2016', fecha_nacimiento = '20/05/1985' WHERE id_cedula = '91541543';
-- empleado 88171205 | CARRILLO TARAZONA JOEL
UPDATE empleado SET fecha_expedicion = '30/09/1993', fecha_ingreso = '18/01/2014', fecha_nacimiento = '20/07/1975' WHERE id_cedula = '88171205';
-- empleado 13928910 | CARVAJAL CORREA PEDRO LEANDRO
UPDATE empleado SET fecha_expedicion = '18/01/1999', fecha_ingreso = '02/05/2022', fecha_nacimiento = '22/09/1980' WHERE id_cedula = '13928910';
-- empleado 1093911471 | CASADIEGO SANCHEZ ADEMIR
UPDATE empleado SET fecha_expedicion = '04/02/2009', fecha_ingreso = '08/09/2020', fecha_nacimiento = '22/01/1991' WHERE id_cedula = '1093911471';
-- empleado 1095916723 | CASTAÑEDA RODRIGUEZ YENNY ANDREA
UPDATE empleado SET fecha_expedicion = '16/03/2007', fecha_ingreso = '26/07/2012', fecha_nacimiento = '05/09/1987' WHERE id_cedula = '1095916723';
-- empleado 1065875223 | CASTILLEJO POLANCO KEVIN JAVIER
UPDATE empleado SET fecha_expedicion = '18/12/2015', fecha_ingreso = '09/09/2020', fecha_nacimiento = '15/12/1997' WHERE id_cedula = '1065875223';
-- empleado 1063480733 | CASTILLO JIMENEZ LUIS FERNANDO
UPDATE empleado SET fecha_expedicion = '08/06/2020', fecha_ingreso = '18/04/2022', fecha_nacimiento = '28/11/2001' WHERE id_cedula = '1063480733';
-- empleado 1100893519 | CASTILLO PABON YEIZON IVAN
UPDATE empleado SET fecha_expedicion = '15/10/2010', fecha_ingreso = '03/02/2020', fecha_nacimiento = '17/08/1992' WHERE id_cedula = '1100893519';
-- empleado 1116614679 | CASTILLO VIDES TANIA NICOL
UPDATE empleado SET fecha_expedicion = '06/07/2012', fecha_ingreso = '01/03/2022', fecha_nacimiento = '23/05/1994' WHERE id_cedula = '1116614679';
-- empleado 1117527343 | CHAPAL LARA DIEGO FERNANDO
UPDATE empleado SET fecha_expedicion = '16/05/2011', fecha_ingreso = '03/02/2020', fecha_nacimiento = '15/05/1993' WHERE id_cedula = '1117527343';
-- empleado 1232894792 | CHINCHILLA DIAZ JHON ROMARIO
UPDATE empleado SET fecha_expedicion = '05/11/2019', fecha_ingreso = '14/10/2020', fecha_nacimiento = '22/04/1990' WHERE id_cedula = '1232894792';
-- empleado 1085037288 | CONTRERAS ROJAS ESNEIDER
UPDATE empleado SET fecha_expedicion = '28/05/2021', fecha_ingreso = '06/12/2022', fecha_nacimiento = '05/01/2003' WHERE id_cedula = '1085037288';
-- empleado 6151228 | CONTRERAS ROSALES JUAN CARLOS
UPDATE empleado SET fecha_expedicion = '28/10/2021', fecha_ingreso = '01/11/2022', fecha_nacimiento = '27/07/1996' WHERE id_cedula = '6151228';
-- empleado 1543684 | CORDERO YAGUARAN CHARLE
UPDATE empleado SET fecha_expedicion = '11/05/2021', fecha_ingreso = '26/07/2022', fecha_nacimiento = '22/09/1992' WHERE id_cedula = '1543684';
-- empleado 1100891753 | CORREA MANRIQUE LEONARDO
UPDATE empleado SET fecha_expedicion = '04/03/2008', fecha_ingreso = '19/11/2015', fecha_nacimiento = '26/02/1990' WHERE id_cedula = '1100891753';
-- empleado 91466133 | CORTES NIÑO YENSON ERNESTO
UPDATE empleado SET fecha_expedicion = '25/02/1996', fecha_ingreso = '26/07/2012', fecha_nacimiento = '12/06/1977' WHERE id_cedula = '91466133';
-- empleado 1092389738 | CORVACHO RODRIGUEZ CRISTHIAN ANDRES
UPDATE empleado SET fecha_expedicion = '22/02/2018', fecha_ingreso = '03/11/2022', fecha_nacimiento = '25/10/1999' WHERE id_cedula = '1092389738';
-- empleado 1100222724 | CORZO ESPINOSA JOSE RAMIRO
UPDATE empleado SET fecha_expedicion = '28/04/2015', fecha_ingreso = '10/10/2020', fecha_nacimiento = '13/02/1997' WHERE id_cedula = '1100222724';
-- empleado 1007470538 | CRIADO RANGEL YARITZA
UPDATE empleado SET fecha_expedicion = '27/08/2014', fecha_ingreso = '25/11/2022', fecha_nacimiento = '20/08/1996' WHERE id_cedula = '1007470538';
-- empleado 60264058 | CRISTANCHO PABON RUBY ERLENY
UPDATE empleado SET fecha_expedicion = '03/12/1998', fecha_ingreso = '01/07/2013', fecha_nacimiento = '13/10/1980' WHERE id_cedula = '60264058';
-- empleado 1004364659 | DAZA HERNANDEZ CARLOS DE JESUS
UPDATE empleado SET fecha_expedicion = '30/07/2019', fecha_ingreso = '24/01/2022', fecha_nacimiento = '29/07/2001' WHERE id_cedula = '1004364659';
-- empleado 1100888385 | DELGADO FLOREZ GABRIEL
UPDATE empleado SET fecha_expedicion = '05/05/2004', fecha_ingreso = '03/11/2020', fecha_nacimiento = '05/03/1985' WHERE id_cedula = '1100888385';
-- empleado 1005339880 | DIAZ CANTILLO SAMIR ANDRES
UPDATE empleado SET fecha_expedicion = '23/04/2018', fecha_ingreso = '02/06/2022', fecha_nacimiento = '18/04/2000' WHERE id_cedula = '1005339880';
-- empleado 1002444626 | DIAZ GOMEZ DUBAN ANDRES
UPDATE empleado SET fecha_expedicion = '16/05/2014', fecha_ingreso = '15/12/2020', fecha_nacimiento = '10/04/1996' WHERE id_cedula = '1002444626';
-- empleado 1007769879 | DIAZ LIZARAZO JHIMMI FABIAN
UPDATE empleado SET fecha_expedicion = '14/02/2019', fecha_ingreso = '27/09/2021', fecha_nacimiento = '18/01/2001' WHERE id_cedula = '1007769879';
-- empleado 1098674763 | DIAZ MENDEZ JORGE LUIS
UPDATE empleado SET fecha_expedicion = '04/09/2007', fecha_ingreso = '03/10/2022', fecha_nacimiento = '02/09/1989' WHERE id_cedula = '1098674763';
-- empleado 1098604376 | DIAZ PABON ERWIN
UPDATE empleado SET fecha_expedicion = '04/12/1985', fecha_ingreso = '13/07/2022', fecha_nacimiento = '08/08/1985' WHERE id_cedula = '1098604376';
-- empleado 1005156911 | DIAZ RAMIREZ GILBERT ABDON
UPDATE empleado SET fecha_expedicion = '16/12/2019', fecha_ingreso = '22/11/2021', fecha_nacimiento = '25/11/2001' WHERE id_cedula = '1005156911';
-- empleado 1098740472 | DIAZ VARGAS JAROL ANDRES
UPDATE empleado SET fecha_expedicion = '14/07/2011', fecha_ingreso = '14/09/2020', fecha_nacimiento = '14/07/1993' WHERE id_cedula = '1098740472';
-- empleado 1095929628 | DUARTE ACACIO JHON ALEXANDER
UPDATE empleado SET fecha_expedicion = '10/08/2010', fecha_ingreso = '22/09/2018', fecha_nacimiento = '03/08/1992' WHERE id_cedula = '1095929628';
-- empleado 79626368 | DUARTE PLATA OSCAR OMAR
UPDATE empleado SET fecha_expedicion = '23/06/1992', fecha_ingreso = '02/05/2016', fecha_nacimiento = '13/03/1974' WHERE id_cedula = '79626368';
-- empleado 1082956130 | DUEÑAS AMADOR RICARDO ANDRES
UPDATE empleado SET fecha_expedicion = '30/09/2010', fecha_ingreso = '06/12/2022', fecha_nacimiento = '14/09/1992' WHERE id_cedula = '1082956130';
-- empleado 1102381907 | DURAN BURGOS OSCAR FERNANDO
UPDATE empleado SET fecha_expedicion = '03/12/2014', fecha_ingreso = '15/06/2022', fecha_nacimiento = '29/11/1996' WHERE id_cedula = '1102381907';
-- empleado 1098705943 | DURAN ROPERO ELIECER
UPDATE empleado SET fecha_expedicion = '11/06/2009', fecha_ingreso = '18/04/2022', fecha_nacimiento = '04/06/1991' WHERE id_cedula = '1098705943';
-- empleado 1104184702 | ESTUPIÑAN VELANDIA PEDRO FELIPE
UPDATE empleado SET fecha_expedicion = '29/10/2011', fecha_ingreso = '27/04/2021', fecha_nacimiento = '28/10/1993' WHERE id_cedula = '1104184702';
-- empleado 13510483 | FERNANDEZ LUNA ALEXANDER
UPDATE empleado SET fecha_expedicion = '15/01/1996', fecha_ingreso = '04/03/2021', fecha_nacimiento = '29/05/1977' WHERE id_cedula = '13510483';
-- empleado 1063650266 | FERNANDEZ SOLANO ELIO ANTONIO
UPDATE empleado SET fecha_expedicion = '07/04/2009', fecha_ingreso = '18/12/2020', fecha_nacimiento = '07/04/1988' WHERE id_cedula = '1063650266';
-- empleado 6152272 | FERRER FERRER LENI ALBERTO
UPDATE empleado SET fecha_expedicion = '29/10/2021', fecha_ingreso = '07/10/2022', fecha_nacimiento = '27/11/1996' WHERE id_cedula = '6152272';
-- empleado 1102373658 | FIGUEROA CHINCHILLA YENNY PAOLA
UPDATE empleado SET fecha_expedicion = '18/04/2012', fecha_ingreso = '18/02/2022', fecha_nacimiento = '12/02/1994' WHERE id_cedula = '1102373658';
-- empleado 1050920056 | FLOREZ BADILLO ANDRES MAURICIO
UPDATE empleado SET fecha_expedicion = '25/01/2008', fecha_ingreso = '26/07/2022', fecha_nacimiento = '02/09/1989' WHERE id_cedula = '1050920056';
-- empleado 1098760784 | FLOREZ VILLAMIZAR EDGAR ANDRES
UPDATE empleado SET fecha_expedicion = '09/10/2012', fecha_ingreso = '03/10/2019', fecha_nacimiento = '03/09/1994' WHERE id_cedula = '1098760784';
-- empleado 1005197258 | FORERO BARRAGAN ADRIAN ESTEBAN
UPDATE empleado SET fecha_expedicion = '11/09/2018', fecha_ingreso = '19/09/2019', fecha_nacimiento = '09/09/2000' WHERE id_cedula = '1005197258';
-- empleado 91495076 | FUENTES AYALA FREDY
UPDATE empleado SET fecha_expedicion = '04/04/1995', fecha_ingreso = '26/07/2013', fecha_nacimiento = '02/03/1977' WHERE id_cedula = '91495076';
-- empleado 1094840635 | FUENTES URIBE JOEL JOSUE
UPDATE empleado SET fecha_expedicion = '22/09/2022', fecha_ingreso = '01/12/2022', fecha_nacimiento = '20/12/1994' WHERE id_cedula = '1094840635';
-- empleado 1005539233 | GALVAN CONTRERAS EDUIN EMIRO
UPDATE empleado SET fecha_expedicion = '03/10/2012', fecha_ingreso = '20/12/2018', fecha_nacimiento = '13/09/1994' WHERE id_cedula = '1005539233';
-- empleado 5846618 | GALVIS LARA JONH FRAN
UPDATE empleado SET fecha_expedicion = '27/08/2021', fecha_ingreso = '12/05/2022', fecha_nacimiento = '09/01/2001' WHERE id_cedula = '5846618';
-- empleado 1005447243 | GALVIS RUEDA JULIAN DAVID
UPDATE empleado SET fecha_expedicion = '02/04/2018', fecha_ingreso = '08/08/2022', fecha_nacimiento = '01/04/2000' WHERE id_cedula = '1005447243';
-- empleado 1004966700 | GAMBOA ANGARITA HOSLTMAN ARLEY
UPDATE empleado SET fecha_expedicion = '16/08/2018', fecha_ingreso = '24/01/2020', fecha_nacimiento = '15/08/2000' WHERE id_cedula = '1004966700';
-- empleado 63488969 | GARCIA DAZA MARITZA
UPDATE empleado SET fecha_expedicion = '09/03/1992', fecha_ingreso = '20/09/2017', fecha_nacimiento = '11/08/1973' WHERE id_cedula = '63488969';
-- empleado 1102369280 | GARCIA FIGUEROA GIOVANI
UPDATE empleado SET fecha_expedicion = '28/09/2010', fecha_ingreso = '15/01/2019', fecha_nacimiento = '14/08/1992' WHERE id_cedula = '1102369280';
-- empleado 5717879 | GARCIA LINARES FREILEN BRANYAN
UPDATE empleado SET fecha_expedicion = '16/07/2022', fecha_ingreso = '08/11/2022', fecha_nacimiento = '29/01/1993' WHERE id_cedula = '5717879';
-- empleado 1097092472 | GARNICA VELANDIA JOHAN DAVID
UPDATE empleado SET fecha_expedicion = '31/01/2022', fecha_ingreso = '01/07/2022', fecha_nacimiento = '06/01/2004' WHERE id_cedula = '1097092472';
-- empleado 83092161 | GARRIDO VALDERRAMA EDILSON
UPDATE empleado SET fecha_expedicion = '28/03/2000', fecha_ingreso = '24/01/2014', fecha_nacimiento = '06/12/1981' WHERE id_cedula = '83092161';
-- empleado 1100891087 | GARZON RANGEL LUIS CARLOS
UPDATE empleado SET fecha_expedicion = '05/07/2007', fecha_ingreso = '09/10/2016', fecha_nacimiento = '16/05/1989' WHERE id_cedula = '1100891087';
-- empleado 1102380827 | GELVES CUBILLOS JEAN CARLO
UPDATE empleado SET fecha_expedicion = '22/07/2014', fecha_ingreso = '06/07/2018', fecha_nacimiento = '18/07/1996' WHERE id_cedula = '1102380827';
-- empleado 1140417725 | GOMEZ GRATEROL JORGE ANDRES
UPDATE empleado SET fecha_expedicion = '20/09/2016', fecha_ingreso = '29/12/2018', fecha_nacimiento = '26/08/1998' WHERE id_cedula = '1140417725';
-- empleado 1095951615 | GOMEZ LOPEZ LUIS CARLOS
UPDATE empleado SET fecha_expedicion = '22/03/2016', fecha_ingreso = '24/03/2021', fecha_nacimiento = '14/03/1998' WHERE id_cedula = '1095951615';
-- empleado 37747995 | GOMEZ MARTINEZ NIDIA ROCIO
UPDATE empleado SET fecha_expedicion = '20/02/1998', fecha_ingreso = '01/12/2010', fecha_nacimiento = '28/01/1980' WHERE id_cedula = '37747995';
-- empleado 63537693 | GOMEZ PINTO LINA MARIA
UPDATE empleado SET fecha_expedicion = '06/04/2001', fecha_ingreso = '25/01/2021', fecha_nacimiento = '29/03/1983' WHERE id_cedula = '63537693';
-- empleado 1005179410 | GOMEZ SANDOVAL KAREN MICHELL
UPDATE empleado SET fecha_ingreso = '02/06/2022', fecha_nacimiento = '02/07/1999' WHERE id_cedula = '1005179410';
-- empleado 1121044437 | GONZALES GARCIA NELSON DAVID
UPDATE empleado SET fecha_expedicion = '12/04/2013', fecha_ingreso = '23/10/2020', fecha_nacimiento = '15/02/1995' WHERE id_cedula = '1121044437';
-- empleado 1098612610 | GONZALES SUAREZ MANUEL FERNANDO
UPDATE empleado SET fecha_expedicion = '21/04/2004', fecha_ingreso = '15/12/2020', fecha_nacimiento = '21/09/1985' WHERE id_cedula = '1098612610';
-- empleado 1004925404 | GONZALEZ ALVAREZ ABRAHAN
UPDATE empleado SET fecha_expedicion = '26/11/2020', fecha_ingreso = '15/06/2022', fecha_nacimiento = '15/11/2002' WHERE id_cedula = '1004925404';
-- empleado 91301967 | GONZALEZ DELGADO EDUAR VIRLEY
UPDATE empleado SET fecha_expedicion = '27/06/2003', fecha_ingreso = '13/01/2018', fecha_nacimiento = '12/01/1985' WHERE id_cedula = '91301967';
-- empleado 91517971 | GRASS RODRIGUEZ PEDRO JOSE
UPDATE empleado SET fecha_expedicion = '10/04/2001', fecha_ingreso = '20/05/2021', fecha_nacimiento = '16/01/1983' WHERE id_cedula = '91517971';
-- empleado 1095917411 | GRASS RODRIGUEZ SERGIO
UPDATE empleado SET fecha_expedicion = '14/05/2007', fecha_ingreso = '22/11/2022', fecha_nacimiento = '02/02/1989' WHERE id_cedula = '1095917411';
-- empleado 13277757 | GUALDRON CASTELLANOS NELSON ENRIQUE
UPDATE empleado SET fecha_expedicion = '21/03/2003', fecha_ingreso = '19/09/2019', fecha_nacimiento = '21/02/1985' WHERE id_cedula = '13277757';
-- empleado 1005337802 | GUALDRON DELGADO EDGAR FABIAN
UPDATE empleado SET fecha_expedicion = '19/02/2018', fecha_ingreso = '01/02/2021', fecha_nacimiento = '15/02/2000' WHERE id_cedula = '1005337802';
-- empleado 1100892188 | GUARIN OCAMPO ALEXANDER
UPDATE empleado SET fecha_expedicion = '16/11/2008', fecha_ingreso = '19/06/2024', fecha_nacimiento = '25/07/1988' WHERE id_cedula = '1100892188';
-- empleado 1100893628 | GUERRERO ALMEIDA CRISTIAN JAVIER
UPDATE empleado SET fecha_expedicion = '07/01/2011', fecha_ingreso = '10/10/2020', fecha_nacimiento = '03/12/1992' WHERE id_cedula = '1100893628';
-- empleado 1098770376 | GUERRERO RAMOS LUIS DAVID
UPDATE empleado SET fecha_expedicion = '13/06/2013', fecha_ingreso = '01/02/2018', fecha_nacimiento = '07/06/1995' WHERE id_cedula = '1098770376';
-- empleado 91514544 | GUTIERREZ HERNANDEZ MIGUEL ALEXANDER
UPDATE empleado SET fecha_expedicion = '22/12/2000', fecha_ingreso = '10/10/2022', fecha_nacimiento = '03/12/1982' WHERE id_cedula = '91514544';
-- empleado 91536394 | GUTIERREZ ORTEGA ABEL
UPDATE empleado SET fecha_expedicion = '03/02/2003', fecha_ingreso = '19/12/2019', fecha_nacimiento = '13/12/1984' WHERE id_cedula = '91536394';
-- empleado 1098725439 | GUTIERREZ RAMIREZ DEIVILSON
UPDATE empleado SET fecha_expedicion = '20/08/2010', fecha_ingreso = '26/02/2025', fecha_nacimiento = '19/08/1992' WHERE id_cedula = '1098725439';
-- empleado 1095939269 | HERNANDEZ MORENO JEFFERSON
UPDATE empleado SET fecha_expedicion = '18/02/2013', fecha_ingreso = '06/09/2021', fecha_nacimiento = '06/02/1995' WHERE id_cedula = '1095939269';
-- empleado 1007769720 | HERNANDEZ MORENO YERIS NAYIBE
UPDATE empleado SET fecha_expedicion = '19/07/2018', fecha_ingreso = '03/10/2022', fecha_nacimiento = '05/07/2000' WHERE id_cedula = '1007769720';
-- empleado 1098756695 | HERNANDEZ PICON BRANDON JOHAN
UPDATE empleado SET fecha_expedicion = '05/07/2012', fecha_ingreso = '27/03/2020', fecha_nacimiento = '15/06/1994' WHERE id_cedula = '1098756695';
-- empleado 1097302696 | HERNANDEZ TARAZONA ANGELLO ANDRES
UPDATE empleado SET fecha_expedicion = '16/09/2022', fecha_ingreso = '11/10/2022', fecha_nacimiento = '09/09/2004' WHERE id_cedula = '1097302696';
-- empleado 1098623058 | HERRERA AFANADOR ERWIN
UPDATE empleado SET fecha_expedicion = '11/10/2004', fecha_ingreso = '05/09/2022', fecha_nacimiento = '09/09/1986' WHERE id_cedula = '1098623058';
-- empleado 1098755946 | HERRERA ESPARZA YEIMY PAOLA
UPDATE empleado SET fecha_expedicion = '20/06/2012', fecha_ingreso = '28/05/2018', fecha_nacimiento = '17/06/1994' WHERE id_cedula = '1098755946';
-- empleado 1098773168 | HERRERA RODRIGUEZ BRAYAM ANDREY
UPDATE empleado SET fecha_expedicion = '20/08/2013', fecha_ingreso = '23/08/2021', fecha_nacimiento = '15/07/1995' WHERE id_cedula = '1098773168';
-- empleado 1007412982 | HOYOS NIÑO ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '18/06/2020', fecha_ingreso = '11/03/2024', fecha_nacimiento = '05/06/2001' WHERE id_cedula = '1007412982';
-- empleado 4984503 | HOYOS NIÑO MILTON FERNANDO
UPDATE empleado SET fecha_expedicion = '04/12/2003', fecha_ingreso = '16/01/2016', fecha_nacimiento = '18/05/1985' WHERE id_cedula = '4984503';
-- empleado 1100976668 | IBARRA MOLINA JEAN CARLOS
UPDATE empleado SET fecha_expedicion = '19/12/2018', fecha_ingreso = '26/01/2021', fecha_nacimiento = '10/08/1988' WHERE id_cedula = '1100976668';
-- empleado 1100896725 | JAIMES ALMEIDA EDINSON ANDRES
UPDATE empleado SET fecha_expedicion = '12/09/2016', fecha_ingreso = '01/08/2022', fecha_nacimiento = '11/09/1998' WHERE id_cedula = '1100896725';
-- empleado 91507643 | JAIMES ARENIZ YONNY MAURICIO
UPDATE empleado SET fecha_expedicion = '03/04/2000', fecha_ingreso = '05/01/2021', fecha_nacimiento = '05/03/1982' WHERE id_cedula = '91507643';
-- empleado 91468085 | JAIMES DIAZ ALEXANDER
UPDATE empleado SET fecha_expedicion = '23/11/2000', fecha_ingreso = '22/01/2026', fecha_nacimiento = '09/02/1982' WHERE id_cedula = '91468085';
-- empleado 1102360952 | JAIMES ESPITIA DIEGO ARMANDO
UPDATE empleado SET fecha_expedicion = '15/09/2007', fecha_ingreso = '01/09/2020', fecha_nacimiento = '07/08/1989' WHERE id_cedula = '1102360952';
-- empleado 1096957994 | JAIMES FLOREZ JAIME ALBERTO
UPDATE empleado SET fecha_expedicion = '05/08/2015', fecha_ingreso = '01/06/2021', fecha_nacimiento = '07/06/1997' WHERE id_cedula = '1096957994';
-- empleado 2198734 | JAIMES JAIMES FEDERICO
UPDATE empleado SET fecha_expedicion = '01/09/1987', fecha_ingreso = '12/10/2013', fecha_nacimiento = '21/06/1969' WHERE id_cedula = '2198734';
-- empleado 63343247 | JAIMES VARGAS MARTHA JANETH
UPDATE empleado SET fecha_expedicion = '06/03/1987', fecha_ingreso = '26/07/2012', fecha_nacimiento = '12/08/1968' WHERE id_cedula = '63343247';
-- empleado 1098797421 | JEREZ PEÑA NESTOR FABIAN
UPDATE empleado SET fecha_expedicion = '25/05/2015', fecha_ingreso = '07/02/2023', fecha_nacimiento = '20/05/1997' WHERE id_cedula = '1098797421';
-- empleado 1065609442 | JIMENEZ ALFARO CARLOS MARIO
UPDATE empleado SET fecha_expedicion = '10/09/2007', fecha_ingreso = '24/05/2016', fecha_nacimiento = '14/08/1989' WHERE id_cedula = '1065609442';
-- empleado 1095825899 | LAMUS HERNANDEZ FABIO ALONSO
UPDATE empleado SET fecha_expedicion = '30/09/2013', fecha_ingreso = '16/08/2022', fecha_nacimiento = '18/07/1995' WHERE id_cedula = '1095825899';
-- empleado 1127607041 | LARIOS GALINDO DIDIER JOEL
UPDATE empleado SET fecha_expedicion = '09/03/2015', fecha_ingreso = '02/10/2020', fecha_nacimiento = '28/03/1995' WHERE id_cedula = '1127607041';
-- empleado 1099371711 | LEAL CORZO OSCAR EDUARDO
UPDATE empleado SET fecha_expedicion = '18/02/2013', fecha_ingreso = '01/12/2021', fecha_nacimiento = '13/02/1995' WHERE id_cedula = '1099371711';
-- empleado 1005155826 | LEHERECI CARRASCAL MARYURY LISETH
UPDATE empleado SET fecha_expedicion = '24/01/2019', fecha_ingreso = '01/06/2022', fecha_nacimiento = '22/01/2001' WHERE id_cedula = '1005155826';
-- empleado 1098716179 | LEON SOTO JERSON FERLEY
UPDATE empleado SET fecha_expedicion = '18/01/2010', fecha_ingreso = '22/11/2022', fecha_nacimiento = '27/09/1991' WHERE id_cedula = '1098716179';
-- empleado 5255222 | LINARES PALENCIA YOHENDRY JOSE
UPDATE empleado SET fecha_expedicion = '26/04/2022', fecha_ingreso = '02/06/2022', fecha_nacimiento = '23/11/2000' WHERE id_cedula = '5255222';
-- empleado 1100893759 | LIZARAZO LEON JOSE MANUEL
UPDATE empleado SET fecha_ingreso = '10/10/2022', fecha_nacimiento = '08/03/1993' WHERE id_cedula = '1100893759';
-- empleado 91275933 | LIZCANO MARTINEZ ISIDRO
UPDATE empleado SET fecha_expedicion = '31/03/1989', fecha_ingreso = '26/07/2012', fecha_nacimiento = '05/11/1970' WHERE id_cedula = '91275933';
-- empleado 91363908 | LOPEZ ARIZA PEDRO ANTONIO
UPDATE empleado SET fecha_expedicion = '13/02/2002', fecha_ingreso = '16/01/2014', fecha_nacimiento = '29/06/1983' WHERE id_cedula = '91363908';
-- empleado 91539526 | LOPEZ DELGADO ELICEO
UPDATE empleado SET fecha_expedicion = '27/05/2003', fecha_ingreso = '20/09/2014', fecha_nacimiento = '26/03/1985' WHERE id_cedula = '91539526';
-- empleado 1005328954 | LOPEZ GARCIA BRAYAN SNEIDER
UPDATE empleado SET fecha_expedicion = '18/08/2020', fecha_ingreso = '09/03/2022', fecha_nacimiento = '14/08/2002' WHERE id_cedula = '1005328954';
-- empleado 1098659117 | LOPEZ HURTADO ANDRES FABIAN
UPDATE empleado SET fecha_expedicion = '28/09/2006', fecha_ingreso = '11/07/2019', fecha_nacimiento = '29/05/1988' WHERE id_cedula = '1098659117';
-- empleado 1097304486 | LOPEZ JAIMES LEONARDO FABIO
UPDATE empleado SET fecha_expedicion = '22/01/2010', fecha_ingreso = '15/06/2022', fecha_nacimiento = '23/07/1991' WHERE id_cedula = '1097304486';
-- empleado 1098791772 | LOPEZ MANTILLA JHON FREDDY
UPDATE empleado SET fecha_expedicion = '05/12/2014', fecha_ingreso = '01/08/2022', fecha_nacimiento = '15/11/1996' WHERE id_cedula = '1098791772';
-- empleado 1099365824 | LOPEZ MURILLO JAIRO ANDRES
UPDATE empleado SET fecha_expedicion = '27/07/2007', fecha_ingreso = '29/01/2013', fecha_nacimiento = '04/07/1989' WHERE id_cedula = '1099365824';
-- empleado 1094579631 | LOPEZ PEREZ BRAYAN ENRIQUE
UPDATE empleado SET fecha_expedicion = '25/03/2014', fecha_ingreso = '01/02/2018', fecha_nacimiento = '17/03/1996' WHERE id_cedula = '1094579631';
-- empleado 1005479775 | LOPEZ REATIGA FABIAN DAVID
UPDATE empleado SET fecha_expedicion = '10/01/2020', fecha_ingreso = '20/09/2021', fecha_nacimiento = '06/01/2002' WHERE id_cedula = '1005479775';
-- empleado 91527766 | LOPEZ RINCON JOGUY
UPDATE empleado SET fecha_expedicion = '11/04/2002', fecha_ingreso = '03/10/2022', fecha_nacimiento = '07/03/1984' WHERE id_cedula = '91527766';
-- empleado 37546616 | LOPEZ ROJAS DULAINE MILDRETH
UPDATE empleado SET fecha_expedicion = '19/12/1995', fecha_ingreso = '10/09/2013', fecha_nacimiento = '27/04/1975' WHERE id_cedula = '37546616';
-- empleado 1048992624 | LOZADA GUERRERO DEIVIS ALBERTO
UPDATE empleado SET fecha_expedicion = '20/05/2015', fecha_ingreso = '02/06/2022', fecha_nacimiento = '11/05/1997' WHERE id_cedula = '1048992624';
-- empleado 11235279 | LUQUE RODRIGUEZ FREDY ALEXANDER
UPDATE empleado SET fecha_expedicion = '21/04/1998', fecha_ingreso = '14/12/2020', fecha_nacimiento = '11/04/1980' WHERE id_cedula = '11235279';
-- empleado 1005328311 | MACHADO BARRIOS SEBASTIAN
UPDATE empleado SET fecha_expedicion = '17/04/2018', fecha_ingreso = '15/06/2022', fecha_nacimiento = '12/04/2000' WHERE id_cedula = '1005328311';
-- empleado 1121906426 | MADERA VILORIA DANIEL DANILO
UPDATE empleado SET fecha_expedicion = '16/12/2011', fecha_ingreso = '18/05/2021', fecha_nacimiento = '08/12/1993' WHERE id_cedula = '1121906426';
-- empleado 1007764199 | MALDONADO PIMIENTA ELIAS ALBERTO
UPDATE empleado SET fecha_expedicion = '27/09/2018', fecha_ingreso = '01/12/2022', fecha_nacimiento = '14/09/2000' WHERE id_cedula = '1007764199';
-- empleado 1005448250 | MANCIPE GONZALEZ HUGO ANDRES
UPDATE empleado SET fecha_expedicion = '08/07/2008', fecha_ingreso = '12/05/2022', fecha_nacimiento = '10/04/1990' WHERE id_cedula = '1005448250';
-- empleado 13716407 | MANOSALVA FREDY
UPDATE empleado SET fecha_expedicion = '28/02/1997', fecha_ingreso = '01/09/2022', fecha_nacimiento = '26/01/1979' WHERE id_cedula = '13716407';
-- empleado 91510509 | MANTILLA DELGADO LUIS ERNESTO
UPDATE empleado SET fecha_expedicion = '17/07/2000', fecha_ingreso = '06/10/2020', fecha_nacimiento = '28/05/1982' WHERE id_cedula = '91510509';
-- empleado 1100894296 | MANTILLA SIZA MICHEL ARMANDO
UPDATE empleado SET fecha_expedicion = '06/02/2012', fecha_ingreso = '02/05/2023', fecha_nacimiento = '04/12/1993' WHERE id_cedula = '1100894296';
-- empleado 1098718985 | MANZANO LIZARAZO MANZUR NAIN
UPDATE empleado SET fecha_expedicion = '05/04/2010', fecha_ingreso = '22/11/2021', fecha_nacimiento = '10/03/1992' WHERE id_cedula = '1098718985';
-- empleado 1095946112 | MAYORGA RINCON SERGIO DUVAN
UPDATE empleado SET fecha_expedicion = '28/11/2014', fecha_ingreso = '19/05/2017', fecha_nacimiento = '24/11/1996' WHERE id_cedula = '1095946112';
-- empleado 4948279 | MEDINA GARNICA YOJAN ALBERTO
UPDATE empleado SET fecha_expedicion = '21/12/2021', fecha_ingreso = '22/11/2022', fecha_nacimiento = '27/10/1994' WHERE id_cedula = '4948279';
-- empleado 91248164 | MEJIA GUERRERO FRANCISCO
UPDATE empleado SET fecha_expedicion = '08/11/1984', fecha_ingreso = '09/08/2014', fecha_nacimiento = '07/03/1966' WHERE id_cedula = '91248164';
-- empleado 1098636592 | MEJIA NIÑO NESTOR EDUARDO
UPDATE empleado SET fecha_expedicion = '22/06/2005', fecha_ingreso = '19/05/2017', fecha_nacimiento = '22/06/1987' WHERE id_cedula = '1098636592';
-- empleado 1100893469 | MENDEZ BRAN HECTOR GERARDO
UPDATE empleado SET fecha_expedicion = '21/09/2010', fecha_ingreso = '01/02/2021', fecha_nacimiento = '18/09/1992' WHERE id_cedula = '1100893469';
-- empleado 1098622425 | MENDEZ CALDERON JORGE ARMANDO
UPDATE empleado SET fecha_expedicion = '29/09/1986', fecha_ingreso = '15/12/2020', fecha_nacimiento = '22/07/1886' WHERE id_cedula = '1098622425';
-- empleado 13746278 | MENDOZA MEJIA EYMAR
UPDATE empleado SET fecha_expedicion = '30/11/1998', fecha_ingreso = '26/10/2013', fecha_nacimiento = '23/11/1980' WHERE id_cedula = '13746278';
-- empleado 1095810568 | MIRANDA RAMBAUT AIXA
UPDATE empleado SET fecha_expedicion = '24/11/2009', fecha_ingreso = '01/08/2021', fecha_nacimiento = '12/11/1991' WHERE id_cedula = '1095810568';
-- empleado 1098706254 | MOGOLLON HERRENO JHON FREDY
UPDATE empleado SET fecha_expedicion = '18/06/2009', fecha_ingreso = '17/11/2016', fecha_nacimiento = '17/05/1991' WHERE id_cedula = '1098706254';
-- empleado 1098784096 | MOLANO URIBE ANNY GERLADINE
UPDATE empleado SET fecha_expedicion = '20/05/2014', fecha_ingreso = '01/08/2022', fecha_nacimiento = '14/05/1996' WHERE id_cedula = '1098784096';
-- empleado 1095948443 | MONROY GUTIERREZ JEIMY KATHERINE
UPDATE empleado SET fecha_expedicion = '30/06/2015', fecha_ingreso = '02/05/2022', fecha_nacimiento = '30/05/1997' WHERE id_cedula = '1095948443';
-- empleado 1007917956 | MONTERO MARULANDA BANER SANTIAGO
UPDATE empleado SET fecha_expedicion = '28/03/2000', fecha_ingreso = '22/11/2022', fecha_nacimiento = '28/03/2000' WHERE id_cedula = '1007917956';
-- empleado 12503367 | MONTESINO CHIQUILLO EDELSO
UPDATE empleado SET fecha_expedicion = '17/07/1995', fecha_ingreso = '02/03/2016', fecha_nacimiento = '09/10/1976' WHERE id_cedula = '12503367';
-- empleado 1088265800 | MORALES ARIAS JOHN FREDY
UPDATE empleado SET fecha_expedicion = '05/03/2007', fecha_ingreso = '05/04/2013', fecha_nacimiento = '11/12/1988' WHERE id_cedula = '1088265800';
-- empleado 1095298644 | MORALES VEGA JHAMEL ANDRES
UPDATE empleado SET fecha_expedicion = '26/01/2022', fecha_ingreso = '20/10/2022', fecha_nacimiento = '16/01/2004' WHERE id_cedula = '1095298644';
-- empleado 1097991723 | MORENO GAMA JUAN CARLOS
UPDATE empleado SET fecha_expedicion = '26/03/2006', fecha_ingreso = '19/11/2020', fecha_nacimiento = '15/03/1987' WHERE id_cedula = '1097991723';
-- empleado 1065577704 | MOYA MUÑOZ JHON ALBERTO
UPDATE empleado SET fecha_expedicion = '15/12/2004', fecha_ingreso = '18/09/2018', fecha_nacimiento = '26/05/1986' WHERE id_cedula = '1065577704';
-- empleado 1095944205 | NARANJO RUEDA JUAN JOSE
UPDATE empleado SET fecha_expedicion = '18/06/2014', fecha_ingreso = '15/11/2022', fecha_nacimiento = '04/05/1996' WHERE id_cedula = '1095944205';
-- empleado 1102389527 | NIEVES VERGARA JUAN CAMILO
UPDATE empleado SET fecha_expedicion = '18/04/2017', fecha_ingreso = '05/02/2020', fecha_nacimiento = '10/04/1999' WHERE id_cedula = '1102389527';
-- empleado 1098765061 | NIÑO DIAZ JHORDAN ALEXIS
UPDATE empleado SET fecha_expedicion = '11/02/2013', fecha_ingreso = '29/11/2021', fecha_nacimiento = '12/09/1994' WHERE id_cedula = '1098765061';
-- empleado 91537121 | NIÑO RAMIREZ JHON FREDY
UPDATE empleado SET fecha_expedicion = '26/02/2003', fecha_ingreso = '13/08/2019', fecha_nacimiento = '19/02/1985' WHERE id_cedula = '91537121';
-- empleado 72342162 | OLIVERA FLOREZ JOSE GABRIEL
UPDATE empleado SET fecha_expedicion = '07/10/2003', fecha_ingreso = '26/01/2021', fecha_nacimiento = '14/01/1985' WHERE id_cedula = '72342162';
-- empleado 63534894 | ORDUZ LOPEZ ANYULAY
UPDATE empleado SET fecha_expedicion = '18/01/2001', fecha_ingreso = '24/10/2022', fecha_nacimiento = '15/01/1983' WHERE id_cedula = '63534894';
-- empleado 1098743062 | ORDUZ SOLANO MARLON ALEXIS
UPDATE empleado SET fecha_expedicion = '09/09/2011', fecha_ingreso = '10/07/2017', fecha_nacimiento = '12/08/1993' WHERE id_cedula = '1098743062';
-- empleado 1003335359 | ORTIZ CARRASCAL JOSE IGNACIO
UPDATE empleado SET fecha_expedicion = '27/09/2012', fecha_ingreso = '09/02/2022', fecha_nacimiento = '10/08/1994' WHERE id_cedula = '1003335359';
-- empleado 1234338572 | ORTIZ RUIZ WILLINTON
UPDATE empleado SET fecha_expedicion = '03/11/2015', fecha_ingreso = '12/05/2022', fecha_nacimiento = '10/10/1997' WHERE id_cedula = '1234338572';
-- empleado 43536705 | OSORIO ESTRADA LILIANA MARIA
UPDATE empleado SET fecha_expedicion = '15/07/1987', fecha_ingreso = '06/02/2024', fecha_nacimiento = '09/11/1968' WHERE id_cedula = '43536705';
-- empleado 1005136763 | OSORIO GALVIS LEYDY DAYANA
UPDATE empleado SET fecha_expedicion = '06/01/2021', fecha_ingreso = '03/11/2022', fecha_nacimiento = '20/12/2002' WHERE id_cedula = '1005136763';
-- empleado 1063620900 | OVALLOS OVALLOS YEISON YESID
UPDATE empleado SET fecha_expedicion = '16/05/2011', fecha_ingreso = '27/12/2021', fecha_nacimiento = '07/05/1993' WHERE id_cedula = '1063620900';
-- empleado 1095963764 | PABON ARAQUE JOSE YSAIAS
UPDATE empleado SET fecha_expedicion = '30/08/2021', fecha_ingreso = '20/09/2021', fecha_nacimiento = '20/01/1998' WHERE id_cedula = '1095963764';
-- empleado 91506805 | PABON ARAQUE OCTAVIO
UPDATE empleado SET fecha_expedicion = '01/03/2000', fecha_ingreso = '15/11/2015', fecha_nacimiento = '09/07/1979' WHERE id_cedula = '91506805';
-- empleado 1005346356 | PACHECO MANRIQUE ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '03/02/2016', fecha_ingreso = '20/04/2021', fecha_nacimiento = '26/01/1998' WHERE id_cedula = '1005346356';
-- empleado 37720798 | PALENCIA RAMIREZ CLAUDIA
UPDATE empleado SET fecha_expedicion = '13/12/1996', fecha_ingreso = '04/03/2013', fecha_nacimiento = '06/10/1978' WHERE id_cedula = '37720798';
-- empleado 1232892334 | PALOMINO MARULANDA BRAYAN JAVIER
UPDATE empleado SET fecha_expedicion = '30/10/2017', fecha_ingreso = '03/08/2022', fecha_nacimiento = '26/10/1999' WHERE id_cedula = '1232892334';
-- empleado 1007929887 | PARADA SIERRA FABIO ENRIQUE
UPDATE empleado SET fecha_expedicion = '17/07/2014', fecha_ingreso = '01/02/2018', fecha_nacimiento = '07/05/1996' WHERE id_cedula = '1007929887';
-- empleado 1100895546 | PARADA SILVA ANDREY ALIRIO
UPDATE empleado SET fecha_expedicion = '16/04/2014', fecha_ingreso = '01/08/2022', fecha_nacimiento = '05/04/1996' WHERE id_cedula = '1100895546';
-- empleado 1098700957 | PARRA DURAN JAVIER ORLANDO
UPDATE empleado SET fecha_expedicion = '27/02/2009', fecha_ingreso = '20/04/2021', fecha_nacimiento = '13/01/1991' WHERE id_cedula = '1098700957';
-- empleado 1101211304 | PARRA GUIZA CAMILO ANDRES
UPDATE empleado SET fecha_expedicion = '08/05/2017', fecha_ingreso = '06/07/2022', fecha_nacimiento = '24/04/1999' WHERE id_cedula = '1101211304';
-- empleado 63526063 | PEÑA CASTRO GLORIA AMPARO
UPDATE empleado SET fecha_expedicion = '09/03/2000', fecha_ingreso = '18/04/2022', fecha_nacimiento = '10/02/1982' WHERE id_cedula = '63526063';
-- empleado 1098640982 | PEREIRA MARTINEZ FABIO ANDRES
UPDATE empleado SET fecha_expedicion = '01/09/2005', fecha_ingreso = '05/02/2013', fecha_nacimiento = '30/08/1987' WHERE id_cedula = '1098640982';
-- empleado 1094532085 | PEREZ ALMENDRALES YESID ANTONIO
UPDATE empleado SET fecha_expedicion = '31/05/2022', fecha_ingreso = '24/10/2022', fecha_nacimiento = '24/05/2004' WHERE id_cedula = '1094532085';
-- empleado 1102375619 | PEREZ ZORRILLA ELVER ANDRES
UPDATE empleado SET fecha_expedicion = '04/12/2012', fecha_ingreso = '01/09/2018', fecha_nacimiento = '14/10/1994' WHERE id_cedula = '1102375619';
-- empleado 1098673651 | PINEDA TRIANA VIVIANA ANDREA
UPDATE empleado SET fecha_expedicion = '31/07/2007', fecha_ingreso = '12/07/2010', fecha_nacimiento = '17/04/1989' WHERE id_cedula = '1098673651';
-- empleado 1095946883 | PINILLA GARCIA DUVAN FERLEY
UPDATE empleado SET fecha_expedicion = '05/02/2015', fecha_ingreso = '18/02/2022', fecha_nacimiento = '02/02/1997' WHERE id_cedula = '1095946883';
-- empleado 1005195641 | PINZON ARIZA HECTOR ALEXANDER
UPDATE empleado SET fecha_expedicion = '19/02/2020', fecha_ingreso = '13/07/2021', fecha_nacimiento = '27/01/2002' WHERE id_cedula = '1005195641';
-- empleado 1098716949 | PINZON PEDRAZA GERSON ANDRES
UPDATE empleado SET fecha_expedicion = '01/02/2010', fecha_ingreso = '12/01/2018', fecha_nacimiento = '03/08/1991' WHERE id_cedula = '1098716949';
-- empleado 1095950268 | PORTILLA ROZO ELIANA
UPDATE empleado SET fecha_expedicion = '24/11/2015', fecha_ingreso = '01/08/2017', fecha_nacimiento = '23/11/1997' WHERE id_cedula = '1095950268';
-- empleado 1099374488 | PRADA GODOY JOSE VICENTE
UPDATE empleado SET fecha_expedicion = '31/07/2015', fecha_ingreso = '15/04/2021', fecha_nacimiento = '30/07/1997' WHERE id_cedula = '1099374488';
-- empleado 1098725715 | QUESADA ZORRILLA WILHELM ARLEY
UPDATE empleado SET fecha_expedicion = '26/08/2010', fecha_ingreso = '17/06/2017', fecha_nacimiento = '18/08/1992' WHERE id_cedula = '1098725715';
-- empleado 1004823930 | QUINTERO DURAN HELIAN
UPDATE empleado SET fecha_expedicion = '19/06/2018', fecha_ingreso = '08/11/2021', fecha_nacimiento = '08/06/2000' WHERE id_cedula = '1004823930';
-- empleado 1005333865 | QUINTERO ORTEGA ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '08/02/2018', fecha_ingreso = '27/07/2021', fecha_nacimiento = '30/01/2000' WHERE id_cedula = '1005333865';
-- empleado 91232589 | QUINTERO PIMENTEL JORGE
UPDATE empleado SET fecha_expedicion = '23/09/1982', fecha_ingreso = '15/10/2014', fecha_nacimiento = '06/08/1964' WHERE id_cedula = '91232589';
-- empleado 1098782901 | QUINTERO RADA GELBER JAVIER
UPDATE empleado SET fecha_expedicion = '22/04/2014', fecha_ingreso = '04/03/2021', fecha_nacimiento = '06/01/1996' WHERE id_cedula = '1098782901';
-- empleado 1065240729 | QUINTERO RADA GERSON MANUEL
UPDATE empleado SET fecha_expedicion = '08/04/2011', fecha_ingreso = '24/08/2022', fecha_nacimiento = '11/08/1992' WHERE id_cedula = '1065240729';
-- empleado 1052218087 | QUIÑONES CARCAMO ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '15/11/2019', fecha_ingreso = '24/11/2022', fecha_nacimiento = '08/09/2001' WHERE id_cedula = '1052218087';
-- empleado 1005109559 | QUIÑONEZ CANTILLO DANIEL FELIPE
UPDATE empleado SET fecha_expedicion = '06/12/2019', fecha_ingreso = '15/03/2022', fecha_nacimiento = '30/07/2001' WHERE id_cedula = '1005109559';
-- empleado 1005452210 | QUIROGA DUARTE DIEGO ALEXANDER
UPDATE empleado SET fecha_expedicion = '20/10/2014', fecha_ingreso = '17/04/2017', fecha_nacimiento = '23/04/1996' WHERE id_cedula = '1005452210';
-- empleado 1096951236 | RAMIREZ BOHORQUEZ JULIETH ANDREA
UPDATE empleado SET fecha_expedicion = '12/08/2008', fecha_ingreso = '22/07/2013', fecha_nacimiento = '11/06/1990' WHERE id_cedula = '1096951236';
-- empleado 91176452 | RAMIREZ VARGAS OLINTO
UPDATE empleado SET fecha_expedicion = '19/08/1983', fecha_ingreso = '11/09/2015', fecha_nacimiento = '23/05/1965' WHERE id_cedula = '91176452';
-- empleado 1100896907 | RAMIREZ VILLAMIZAR CIRO ANDREY
UPDATE empleado SET fecha_expedicion = '02/02/2017', fecha_ingreso = '15/05/2021', fecha_nacimiento = '01/02/1999' WHERE id_cedula = '1100896907';
-- empleado 100143304011982 | RAVAGO BASTARDO OSWALDO ANTONIO
UPDATE empleado SET fecha_expedicion = '15/10/2020', fecha_ingreso = '10/02/2021', fecha_nacimiento = '04/01/1982' WHERE id_cedula = '100143304011982';
-- empleado 1126419521 | REMOLINA BALLESTEROS JOSE MANUEL
UPDATE empleado SET fecha_expedicion = '30/03/2007', fecha_ingreso = '10/01/2020', fecha_nacimiento = '11/01/1988' WHERE id_cedula = '1126419521';
-- empleado 1102384611 | REY RODRIGUEZ KEVIN ANDRES
UPDATE empleado SET fecha_expedicion = '09/10/2015', fecha_ingreso = '01/11/2021', fecha_nacimiento = '07/10/1997' WHERE id_cedula = '1102384611';
-- empleado 1047450497 | REYES GOMEZ RAFAEL EDUARDO
UPDATE empleado SET fecha_expedicion = '04/11/2010', fecha_ingreso = '15/01/2021', fecha_nacimiento = '05/10/1992' WHERE id_cedula = '1047450497';
-- empleado 1098741455 | REYES SISA VICTOR ALFONSO
UPDATE empleado SET fecha_expedicion = '04/08/2011', fecha_ingreso = '10/06/2021', fecha_nacimiento = '22/04/1993' WHERE id_cedula = '1098741455';
-- empleado 1127947335 | RINCON BOTELLO YERSON JAVIER
UPDATE empleado SET fecha_expedicion = '13/05/2011', fecha_ingreso = '28/06/2017', fecha_nacimiento = '05/05/1989' WHERE id_cedula = '1127947335';
-- empleado 1097488771 | RINCON CARRILLO JUAN FELIPE
UPDATE empleado SET fecha_expedicion = '16/05/2022', fecha_ingreso = '03/08/2022', fecha_nacimiento = '16/05/2004' WHERE id_cedula = '1097488771';
-- empleado 13743729 | RINCON MURILLO YOIRYN
UPDATE empleado SET fecha_expedicion = '05/08/1998', fecha_ingreso = '18/04/2015', fecha_nacimiento = '29/04/1979' WHERE id_cedula = '13743729';
-- empleado 1098710815 | RINCON PRADA ALVARO
UPDATE empleado SET fecha_expedicion = '22/09/2009', fecha_ingreso = '15/12/2020', fecha_nacimiento = '16/09/1991' WHERE id_cedula = '1098710815';
-- empleado 91185275 | RINCON TORRES JAVIER ENRIQUE
UPDATE empleado SET fecha_expedicion = '23/04/2002', fecha_ingreso = '08/10/2020', fecha_nacimiento = '16/02/1984' WHERE id_cedula = '91185275';
-- empleado 1098634075 | RINCON VALERO JORGE LUIS
UPDATE empleado SET fecha_expedicion = '06/05/2005', fecha_ingreso = '10/04/2018', fecha_nacimiento = '04/05/1987' WHERE id_cedula = '1098634075';
-- empleado 1066093880 | RIVERA COLMENARES JHON NEIDER
UPDATE empleado SET fecha_expedicion = '10/02/2011', fecha_ingreso = '06/03/2020', fecha_nacimiento = '05/02/1993' WHERE id_cedula = '1066093880';
-- empleado 1095829431 | RIVERA TAMARA LUISA FERNANDA
UPDATE empleado SET fecha_expedicion = '17/07/2014', fecha_ingreso = '16/08/2022', fecha_nacimiento = '10/07/1996' WHERE id_cedula = '1095829431';
-- empleado 1232892335 | ROA HERNADEZ NICOLAS
UPDATE empleado SET fecha_expedicion = '30/10/2017', fecha_ingreso = '04/11/2020', fecha_nacimiento = '28/10/1999' WHERE id_cedula = '1232892335';
-- empleado 1005136808 | ROA PARRA HEYLI YULIET
UPDATE empleado SET fecha_expedicion = '04/05/2021', fecha_ingreso = '19/07/2022', fecha_nacimiento = '22/04/2022' WHERE id_cedula = '1005136808';
-- empleado 1098805526 | ROBLES BELEÑO RONALDO
UPDATE empleado SET fecha_expedicion = '30/03/2016', fecha_ingreso = '10/10/2017', fecha_nacimiento = '27/03/1998' WHERE id_cedula = '1098805526';
-- empleado 1098647256 | ROBLES RODRIGUEZ JOSE DARIO
UPDATE empleado SET fecha_expedicion = '03/01/2006', fecha_ingreso = '24/02/2020', fecha_nacimiento = '26/09/1987' WHERE id_cedula = '1098647256';
-- empleado 7363482 | RODRIGUEZ GIL LUIS MIGUEL
UPDATE empleado SET fecha_expedicion = '11/10/2022', fecha_ingreso = '01/11/2022', fecha_nacimiento = '26/11/1990' WHERE id_cedula = '7363482';
-- empleado 91512215 | RODRIGUEZ HERRERA NICOLAS
UPDATE empleado SET fecha_expedicion = '20/09/2000', fecha_ingreso = '27/08/2020', fecha_nacimiento = '30/07/1982' WHERE id_cedula = '91512215';
-- empleado 1098666215 | RODRIGUEZ RUEDA ORLANDO
UPDATE empleado SET fecha_expedicion = '19/02/2007', fecha_ingreso = '15/10/2022', fecha_nacimiento = '10/02/1989' WHERE id_cedula = '1098666215';
-- empleado 1098665901 | RODRIGUEZ RUIZ ALEXANDER
UPDATE empleado SET fecha_expedicion = '12/02/2007', fecha_ingreso = '25/04/2014', fecha_nacimiento = '02/01/1989' WHERE id_cedula = '1098665901';
-- empleado 1005461260 | RODRIGUEZ SIERRA VALENTINA
UPDATE empleado SET fecha_expedicion = '08/10/2019', fecha_ingreso = '26/07/2022', fecha_nacimiento = '05/10/2001' WHERE id_cedula = '1005461260';
-- empleado 1095936284 | RODRIGUEZ TRIANA ANDRES
UPDATE empleado SET fecha_expedicion = '10/05/2012', fecha_ingreso = '11/02/2025', fecha_nacimiento = '02/04/1994' WHERE id_cedula = '1095936284';
-- empleado 1098771486 | RODRIGUEZ WINTERDAL JEFFERSON ANDRES
UPDATE empleado SET fecha_expedicion = '05/07/2013', fecha_ingreso = '23/11/2018', fecha_nacimiento = '30/05/1995' WHERE id_cedula = '1098771486';
-- empleado 1095913618 | ROJAS BARRERA CAMILO ANDRES
UPDATE empleado SET fecha_expedicion = '29/06/2006', fecha_ingreso = '28/09/2015', fecha_nacimiento = '24/06/1988' WHERE id_cedula = '1095913618';
-- empleado 1099367927 | ROJAS HERNANDEZ JUAN CARLOS
UPDATE empleado SET fecha_expedicion = '14/09/2009', fecha_ingreso = '16/02/2026', fecha_nacimiento = '04/06/1991' WHERE id_cedula = '1099367927';
-- empleado 1095838432 | ROJAS SOTO JEFFERSON STEVEN
UPDATE empleado SET fecha_expedicion = '01/08/2016', fecha_ingreso = '09/09/2020', fecha_nacimiento = '27/07/1998' WHERE id_cedula = '1095838432';
-- empleado 1098829810 | ROJAS TORREALBA HAMZEL EZEQUIEL
UPDATE empleado SET fecha_expedicion = '03/04/2019', fecha_ingreso = '14/09/2020', fecha_nacimiento = '06/10/1989' WHERE id_cedula = '1098829810';
-- empleado 1098631100 | ROMAN DIAZ BLEYTER VLADIMIR
UPDATE empleado SET fecha_expedicion = '08/03/2005', fecha_ingreso = '20/01/2023', fecha_nacimiento = '24/07/1986' WHERE id_cedula = '1098631100';
-- empleado 18974435 | ROMERO BERRUECO DAIRO DARIO
UPDATE empleado SET fecha_expedicion = '27/11/1999', fecha_ingreso = '11/09/2015', fecha_nacimiento = '27/11/1981' WHERE id_cedula = '18974435';
-- empleado 1098738467 | ROMERO PEDRAZA SERGIO OMAR
UPDATE empleado SET fecha_expedicion = '01/06/2011', fecha_ingreso = '22/02/2017', fecha_nacimiento = '25/03/1993' WHERE id_cedula = '1098738467';
-- empleado 91355268 | RONDON MEJIA SERGIO FERNANDO
UPDATE empleado SET fecha_expedicion = '09/11/2001', fecha_ingreso = '18/10/2018', fecha_nacimiento = '12/10/1983' WHERE id_cedula = '91355268';
-- empleado 63560912 | RUBIANO LEMUS YUDY ANDREA
UPDATE empleado SET fecha_expedicion = '25/06/2003', fecha_ingreso = '03/01/2017', fecha_nacimiento = '07/02/1985' WHERE id_cedula = '63560912';
-- empleado 1100891232 | RUEDA PARRA EDWIN ORLANDO
UPDATE empleado SET fecha_expedicion = '25/07/2001', fecha_ingreso = '01/04/2025', fecha_nacimiento = '22/06/1989' WHERE id_cedula = '1100891232';
-- empleado 1007673942 | RUEDA RIOS YELITZA TATIANA
UPDATE empleado SET fecha_expedicion = '26/03/2019', fecha_ingreso = '19/10/2022', fecha_nacimiento = '18/11/2000' WHERE id_cedula = '1007673942';
-- empleado 1100893813 | RUEDA RUEDA DANIEL
UPDATE empleado SET fecha_expedicion = '11/04/2011', fecha_ingreso = '05/06/2015', fecha_nacimiento = '17/02/1993' WHERE id_cedula = '1100893813';
-- empleado 1005369910 | RUEDA TARAZONA JUAN MANUEL
UPDATE empleado SET fecha_expedicion = '28/01/2021', fecha_ingreso = '28/05/2025', fecha_nacimiento = '24/01/2003' WHERE id_cedula = '1005369910';
-- empleado 1102353149 | SAAVEDRA SANTISTEBAN LAURA MELISSA
UPDATE empleado SET fecha_expedicion = '12/07/2005', fecha_ingreso = '01/05/2015', fecha_nacimiento = '11/02/1987' WHERE id_cedula = '1102353149';
-- empleado 1095937389 | SANABRIA FLOREZ DEICY TATIANA
UPDATE empleado SET fecha_expedicion = '28/08/2012', fecha_ingreso = '07/09/2020', fecha_nacimiento = '25/08/1994' WHERE id_cedula = '1095937389';
-- empleado 1091676205 | SANABRIA TORRES YEBERSON LEANDRO
UPDATE empleado SET fecha_expedicion = '01/07/2014', fecha_ingreso = '12/11/2025', fecha_nacimiento = '01/03/1996' WHERE id_cedula = '1091676205';
-- empleado 1099368102 | SANCHEZ BERNAL SAULO EDUARDO
UPDATE empleado SET fecha_expedicion = '29/10/2009', fecha_ingreso = '17/01/2020', fecha_nacimiento = '28/10/1991' WHERE id_cedula = '1099368102';
-- empleado 37535672 | SANCHEZ GALVIS MARILUZ
UPDATE empleado SET fecha_expedicion = '11/06/2001', fecha_ingreso = '04/04/2013', fecha_nacimiento = '22/04/1983' WHERE id_cedula = '37535672';
-- empleado 1020467674 | SANCHEZ GUTIERREZ JOHNY ALEJANDRO
UPDATE empleado SET fecha_expedicion = '23/04/2013', fecha_ingreso = '06/10/2025', fecha_nacimiento = '15/04/1995' WHERE id_cedula = '1020467674';
-- empleado 1095950229 | SANCHEZ LONDOÑO JAIME ALEXANDER
UPDATE empleado SET fecha_expedicion = '23/11/2015', fecha_ingreso = '27/09/2021', fecha_nacimiento = '31/10/1997' WHERE id_cedula = '1095950229';
-- empleado 1005108421 | SANCHEZ ORTEGA JUAN PABLO
UPDATE empleado SET fecha_expedicion = '05/09/2018', fecha_ingreso = '24/08/2020', fecha_nacimiento = '20/08/2000' WHERE id_cedula = '1005108421';
-- empleado 812344807011996 | SANCHEZ RODRIGUEZ EUDY JOSE
UPDATE empleado SET fecha_expedicion = '27/08/2018', fecha_ingreso = '21/08/2020', fecha_nacimiento = '07/01/1996' WHERE id_cedula = '812344807011996';
-- empleado 63543638 | SANCHEZ RODRIGUEZ EUGENIA
UPDATE empleado SET fecha_expedicion = '31/10/2001', fecha_ingreso = '08/01/2014', fecha_nacimiento = '27/10/1983' WHERE id_cedula = '63543638';
-- empleado 1095948885 | SANCHEZ TAVERA DIEGO ANDRES
UPDATE empleado SET fecha_expedicion = '05/08/2015', fecha_ingreso = '01/11/2022', fecha_nacimiento = '08/06/1997' WHERE id_cedula = '1095948885';
-- empleado 1098805752 | SANDOVAL JAIMES CRISTHIAN CAMILO
UPDATE empleado SET fecha_expedicion = '06/04/2016', fecha_ingreso = '18/03/2021', fecha_nacimiento = '01/04/1998' WHERE id_cedula = '1098805752';
-- empleado 1102387913 | SANDOVAL MALDONADO BRAYAN JULIAN
UPDATE empleado SET fecha_expedicion = '14/10/2016', fecha_ingreso = '09/12/2019', fecha_nacimiento = '07/10/1998' WHERE id_cedula = '1102387913';
-- empleado 37729142 | SANDOVAL SUAREZ ELIANA YUDDYT
UPDATE empleado SET fecha_expedicion = '22/09/1997', fecha_ingreso = '25/09/2013', fecha_nacimiento = '09/09/1979' WHERE id_cedula = '37729142';
-- empleado 1098707090 | SANTOS AMAYA EDISON ALEXANDER
UPDATE empleado SET fecha_expedicion = '08/07/2009', fecha_ingreso = '08/11/2021', fecha_nacimiento = '04/07/1991' WHERE id_cedula = '1098707090';
-- empleado 1098800312 | SANTOS CORREA FERNEY FABIAN
UPDATE empleado SET fecha_expedicion = '21/09/2015', fecha_ingreso = '11/05/2021', fecha_nacimiento = '30/07/1997' WHERE id_cedula = '1098800312';
-- empleado 1095940767 | SANTOS CORREA YEISON ARNULFO
UPDATE empleado SET fecha_expedicion = '22/07/2013', fecha_ingreso = '01/12/2021', fecha_nacimiento = '03/05/1995' WHERE id_cedula = '1095940767';
-- empleado 1095825463 | SANTOS PEÑUELA SEBASTIAN
UPDATE empleado SET fecha_expedicion = '26/08/2013', fecha_ingreso = '23/08/2021', fecha_nacimiento = '25/07/1995' WHERE id_cedula = '1095825463';
-- empleado 91525181 | SANTOS TORRA CARLOS ALBERTO
UPDATE empleado SET fecha_expedicion = '10/01/2002', fecha_ingreso = '24/08/2020', fecha_nacimiento = '04/01/1984' WHERE id_cedula = '91525181';
-- empleado 1096958437 | SARAVIA HERNANDEZ SERGIO AUGUSTO
UPDATE empleado SET fecha_expedicion = '03/02/2016', fecha_ingreso = '01/02/2018', fecha_nacimiento = '26/01/1998' WHERE id_cedula = '1096958437';
-- empleado 1005336257 | SARMIENTO VASQUEZ LUIS ALEJANDRO
UPDATE empleado SET fecha_expedicion = '26/06/2018', fecha_ingreso = '01/11/2022', fecha_nacimiento = '30/04/2000' WHERE id_cedula = '1005336257';
-- empleado 1098751464 | SEPULVEDA MANRRIQUE MISAEL
UPDATE empleado SET fecha_expedicion = '14/03/2012', fecha_ingreso = '01/12/2020', fecha_nacimiento = '12/01/1994' WHERE id_cedula = '1098751464';
-- empleado 1005188222 | SERNA ECHEVERRI JHON ESTIVEN
UPDATE empleado SET fecha_expedicion = '13/09/2012', fecha_ingreso = '20/05/2021', fecha_nacimiento = '04/07/1994' WHERE id_cedula = '1005188222';
-- empleado 1095807767 | SERRANO ARCINIEGAS ANDRES EDUARDO
UPDATE empleado SET fecha_expedicion = '17/02/2009', fecha_ingreso = '06/07/2022', fecha_nacimiento = '12/02/1991' WHERE id_cedula = '1095807767';
-- empleado 91515676 | SERRANO MARTINEZ MIGUEL ANDRES
UPDATE empleado SET fecha_expedicion = '30/01/2001', fecha_ingreso = '05/02/2021', fecha_nacimiento = '08/03/1982' WHERE id_cedula = '91515676';
-- empleado 91286747 | SIERRA BLANCO ALBERTO
UPDATE empleado SET fecha_expedicion = '30/11/1990', fecha_ingreso = '01/10/2015', fecha_nacimiento = '31/10/1972' WHERE id_cedula = '91286747';
-- empleado 1100896781 | SIERRA LIZARAZO LUIS MIGUEL
UPDATE empleado SET fecha_expedicion = '04/11/2016', fecha_ingreso = '09/03/2022', fecha_nacimiento = '26/10/1998' WHERE id_cedula = '1100896781';
-- empleado 1098763741 | SIERRA SANDOVAL CESAR AUGUSTO
UPDATE empleado SET fecha_expedicion = '17/12/2012', fecha_ingreso = '01/08/2022', fecha_nacimiento = '14/12/1994' WHERE id_cedula = '1098763741';
-- empleado 1095819558 | SIERRA SANTOS SERGIO LEONARDO
UPDATE empleado SET fecha_expedicion = '06/06/2012', fecha_ingreso = '20/05/2021', fecha_nacimiento = '05/06/1994' WHERE id_cedula = '1095819558';
-- empleado 1098611431 | SILVA ANGARITA ERWIN FRANCESCO
UPDATE empleado SET fecha_expedicion = '30/03/2004', fecha_ingreso = '06/07/2022', fecha_nacimiento = '03/02/1986' WHERE id_cedula = '1098611431';
-- empleado 1095831870 | SILVA DURAN NESTOR JAVIER
UPDATE empleado SET fecha_expedicion = '22/01/2015', fecha_ingreso = '24/01/2022', fecha_nacimiento = '06/12/1996' WHERE id_cedula = '1095831870';
-- empleado 1098802219 | SILVA PARDO RAUL FERNANDO
UPDATE empleado SET fecha_expedicion = '17/12/2015', fecha_ingreso = '18/04/2022', fecha_nacimiento = '16/12/1997' WHERE id_cedula = '1098802219';
-- empleado 1005334196 | SILVA QUIJANO ANDERSON JULIAN
UPDATE empleado SET fecha_expedicion = '19/02/2018', fecha_ingreso = '20/05/2021', fecha_nacimiento = '14/02/2000' WHERE id_cedula = '1005334196';
-- empleado 5702064 | SOLANO CALA ELIECER
UPDATE empleado SET fecha_expedicion = '17/01/1976', fecha_ingreso = '16/02/2013', fecha_nacimiento = '07/12/1957' WHERE id_cedula = '5702064';
-- empleado 91539339 | SOLANO GOMEZ VICTOR ALFONSO
UPDATE empleado SET fecha_expedicion = '20/05/2003', fecha_ingreso = '17/02/2016', fecha_nacimiento = '17/05/1985' WHERE id_cedula = '91539339';
-- empleado 1099364262 | SOLANO JAIMES JOHN JAIRO
UPDATE empleado SET fecha_expedicion = '01/02/2006', fecha_ingreso = '14/03/2016', fecha_nacimiento = '24/11/1988' WHERE id_cedula = '1099364262';
-- empleado 91242269 | SOLANO JOSE ELIVEY
UPDATE empleado SET fecha_expedicion = '06/12/1983', fecha_ingreso = '01/08/2012', fecha_nacimiento = '09/11/1963' WHERE id_cedula = '91242269';
-- empleado 1094045809 | SOLER FIGUEROA ALAN JAVIER
UPDATE empleado SET fecha_expedicion = '21/11/2022', fecha_ingreso = '06/12/2022', fecha_nacimiento = '12/10/2004' WHERE id_cedula = '1094045809';
-- empleado 1005157590 | SOSA RUEDA JOSE LUIS
UPDATE empleado SET fecha_expedicion = '04/06/2021', fecha_ingreso = '20/09/2021', fecha_nacimiento = '24/05/2003' WHERE id_cedula = '1005157590';
-- empleado 1234338072 | SOTELO RUBIO CARLOS ANDRES
UPDATE empleado SET fecha_expedicion = '21/05/2015', fecha_ingreso = '27/08/2022', fecha_nacimiento = '15/03/1997' WHERE id_cedula = '1234338072';
-- empleado 8167720 | SOTELO TORCEDILLA ROBINSON
UPDATE empleado SET fecha_expedicion = '20/04/2001', fecha_ingreso = '05/01/2021', fecha_nacimiento = '23/06/1982' WHERE id_cedula = '8167720';
-- empleado 1101520264 | SOTO BASTO LIBARDO
UPDATE empleado SET fecha_expedicion = '07/06/2006', fecha_ingreso = '13/07/2022', fecha_nacimiento = '15/05/1988' WHERE id_cedula = '1101520264';
-- empleado 91467261 | SOTO MATEUS WILMAR
UPDATE empleado SET fecha_expedicion = '29/09/1998', fecha_ingreso = '04/01/2014', fecha_nacimiento = '04/02/1980' WHERE id_cedula = '91467261';
-- empleado 1095820357 | SUAREZ BLANCO LUIS EDUARDO
UPDATE empleado SET fecha_expedicion = '15/08/2012', fecha_ingreso = '23/08/2021', fecha_nacimiento = '07/08/1994' WHERE id_cedula = '1095820357';
-- empleado 1098627667 | SUAREZ CASTAÑO FELIPE
UPDATE empleado SET fecha_expedicion = '07/01/2005', fecha_ingreso = '17/09/2013', fecha_nacimiento = '23/12/1986' WHERE id_cedula = '1098627667';
-- empleado 91452758 | SUAREZ JAIMES ALBERTO
UPDATE empleado SET fecha_expedicion = '18/02/2003', fecha_ingreso = '26/07/2012', fecha_nacimiento = '15/02/1985' WHERE id_cedula = '91452758';
-- empleado 1098780998 | TAMAYO CARRASCAL DAVID FERNANDO
UPDATE empleado SET fecha_expedicion = '20/02/2014', fecha_ingreso = '10/08/2022', fecha_nacimiento = '10/02/1996' WHERE id_cedula = '1098780998';
-- empleado 1102390512 | TARAZONA FIGUEROA ARLEY STIVEN
UPDATE empleado SET fecha_expedicion = '31/07/2017', fecha_ingreso = '23/06/2022', fecha_nacimiento = '04/07/1999' WHERE id_cedula = '1102390512';
-- empleado 1098700274 | TOLOZA JAIMES CLEIVER ERMIDES
UPDATE empleado SET fecha_expedicion = '16/02/2009', fecha_ingreso = '26/01/2021', fecha_nacimiento = '15/02/1991' WHERE id_cedula = '1098700274';
-- empleado 1002276876 | TORRES HERRERA BRAYAN SMITH
UPDATE empleado SET fecha_expedicion = '28/03/2014', fecha_ingreso = '07/10/2022', fecha_nacimiento = '11/01/1996' WHERE id_cedula = '1002276876';
-- empleado 91294734 | TORRES JORGE ELIECER
UPDATE empleado SET fecha_expedicion = '09/03/1992', fecha_ingreso = '04/01/2014', fecha_nacimiento = '05/08/1973' WHERE id_cedula = '91294734';
-- empleado 1098674839 | VANEGAS LEON DANIEL
UPDATE empleado SET fecha_expedicion = '05/09/2007', fecha_ingreso = '05/12/2017', fecha_nacimiento = '06/08/1989' WHERE id_cedula = '1098674839';
-- empleado 91477701 | VARGAS DURAN ROBINSON
UPDATE empleado SET fecha_expedicion = '30/07/1993', fecha_ingreso = '13/08/2015', fecha_nacimiento = '31/05/1975' WHERE id_cedula = '91477701';
-- empleado 1098759821 | VARGAS FLOREZ ANDERSON
UPDATE empleado SET fecha_expedicion = '14/09/2012', fecha_ingreso = '01/06/2020', fecha_nacimiento = '24/07/1994' WHERE id_cedula = '1098759821';
-- empleado 1012363759 | VARGAS OSSES JHON ELKIN
UPDATE empleado SET fecha_expedicion = '10/04/2008', fecha_ingreso = '16/10/2020', fecha_nacimiento = '25/03/1990' WHERE id_cedula = '1012363759';
-- empleado 1098695299 | VARGAS ROJAS LUIS EDUARDO
UPDATE empleado SET fecha_expedicion = '19/11/2022', fecha_ingreso = '19/07/2022', fecha_nacimiento = '04/09/1990' WHERE id_cedula = '1098695299';
-- empleado 1100893378 | VASQUEZ CORREAL JULIO ERNESTO
UPDATE empleado SET fecha_expedicion = '07/08/2010', fecha_ingreso = '03/11/2022', fecha_nacimiento = '16/06/1992' WHERE id_cedula = '1100893378';
-- empleado 1005281666 | VEGA IBAÑEZ DIEGO ANDRES
UPDATE empleado SET fecha_expedicion = '06/12/2018', fecha_ingreso = '18/02/2022', fecha_nacimiento = '02/12/2000' WHERE id_cedula = '1005281666';
-- empleado 91533211 | VERA BUITRAGO EDISON DAYAN
UPDATE empleado SET fecha_expedicion = '11/10/2002', fecha_ingreso = '17/07/2018', fecha_nacimiento = '03/10/1984' WHERE id_cedula = '91533211';
-- empleado 6892928 | VERGARA MARQUEZ JOSE MANUEL
UPDATE empleado SET fecha_expedicion = '27/01/1983', fecha_ingreso = '26/01/2015', fecha_nacimiento = '20/12/1963' WHERE id_cedula = '6892928';
-- empleado 1091132431 | VERGEL TORRADO RONALD YESID
UPDATE empleado SET fecha_expedicion = '10/08/2015', fecha_ingreso = '06/07/2022', fecha_nacimiento = '22/07/1997' WHERE id_cedula = '1091132431';
-- empleado 5278095 | VICENT ROQUE HOANSER LUIS
UPDATE empleado SET fecha_expedicion = '15/12/2021', fecha_ingreso = '18/02/2022', fecha_nacimiento = '08/12/1990' WHERE id_cedula = '5278095';
-- empleado 1096243133 | VIDES MARTINEZ KEVIN JUNEER
UPDATE empleado SET fecha_expedicion = '09/06/2015', fecha_ingreso = '01/09/2021', fecha_nacimiento = '11/02/1997' WHERE id_cedula = '1096243133';
-- empleado 1006822494 | VILLAMIZAR URBINA OMAR ANDRES
UPDATE empleado SET fecha_expedicion = '11/08/2015', fecha_ingreso = '24/01/2022', fecha_nacimiento = '10/08/1997' WHERE id_cedula = '1006822494';
-- empleado 7068396 | ZAVARCE NAVAS JUAN CARLOS
UPDATE empleado SET fecha_expedicion = '04/06/2022', fecha_ingreso = '11/10/2022', fecha_nacimiento = '01/08/1981' WHERE id_cedula = '7068396';
-- empleado 1007439705 | BELLO BLANCO BEURY ALEXANDER
UPDATE empleado SET fecha_expedicion = '18/01/2018', fecha_ingreso = '19/12/2022', fecha_nacimiento = '10/01/2000' WHERE id_cedula = '1007439705';
-- empleado 1066083139 | BONILLA PACHECO ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '27/07/2017', fecha_ingreso = '13/12/2022', fecha_nacimiento = '18/07/1999' WHERE id_cedula = '1066083139';
-- empleado 1098702552 | DELGADO ORJUELA LEIDY MARCELA
UPDATE empleado SET fecha_expedicion = '03/04/2009', fecha_ingreso = '19/12/2022', fecha_nacimiento = '26/03/1991' WHERE id_cedula = '1098702552';
-- empleado 1100971152 | QUECHO LOZANO FABIAN ANDRES
UPDATE empleado SET fecha_expedicion = '16/06/2015', fecha_ingreso = '19/12/2022', fecha_nacimiento = '07/06/1997' WHERE id_cedula = '1100971152';
-- empleado 91533938 | SANCHEZ LOPEZ FLORENTINO
UPDATE empleado SET fecha_expedicion = '08/11/2002', fecha_ingreso = '27/12/2022', fecha_nacimiento = '11/09/1984' WHERE id_cedula = '91533938';
-- empleado 1005108752 | GONZALEZ GARCIA OSCAR ARLEY
UPDATE empleado SET fecha_expedicion = '16/05/2019', fecha_ingreso = '01/12/2022', fecha_nacimiento = '26/04/2001' WHERE id_cedula = '1005108752';
-- empleado 1007667600 | BRAVO SAJONERO ANDREA CAMILA
UPDATE empleado SET fecha_expedicion = '01/04/2019', fecha_ingreso = '01/12/2022', fecha_nacimiento = '30/03/2001' WHERE id_cedula = '1007667600';
-- empleado 1099735372 | PUENTES ROJAS OSCAR SNEIDER
UPDATE empleado SET fecha_expedicion = '03/10/2022', fecha_ingreso = '06/10/2022', fecha_nacimiento = '08/09/2004' WHERE id_cedula = '1099735372';
-- empleado 1003246386 | RAMIREZ VEGA LUIS FERNANDO
UPDATE empleado SET fecha_expedicion = '18/09/2020', fecha_ingreso = '26/11/2022', fecha_nacimiento = '14/12/2001' WHERE id_cedula = '1003246386';
-- empleado 1094266549 | CAPACHO RONDON JESUS DANIEL
UPDATE empleado SET fecha_expedicion = '18/05/2009', fecha_ingreso = '22/04/2024', fecha_nacimiento = '28/03/1991' WHERE id_cedula = '1094266549';
-- empleado 1095817542 | GALVIS DIAZ BRAYAN SNEYDER
UPDATE empleado SET fecha_expedicion = '30/11/2011', fecha_ingreso = '07/01/2023', fecha_nacimiento = '31/10/1993' WHERE id_cedula = '1095817542';
-- empleado 1098800178 | ARCHILA DIAZ RAUL ANDRES
UPDATE empleado SET fecha_expedicion = '16/09/2015', fecha_ingreso = '10/01/2023', fecha_nacimiento = '26/08/1997' WHERE id_cedula = '1098800178';
-- empleado 1007715302 | BLANCO ALVIARES MARIA FERNANDA
UPDATE empleado SET fecha_expedicion = '27/06/2018', fecha_ingreso = '01/08/2023', fecha_nacimiento = '13/05/2000' WHERE id_cedula = '1007715302';
-- empleado 1102387740 | LIZARAZO PARADA DIEGO FERNANDO
UPDATE empleado SET fecha_expedicion = '27/09/2016', fecha_ingreso = '16/01/2023', fecha_nacimiento = '21/09/1998' WHERE id_cedula = '1102387740';
-- empleado 1098722582 | FONSECA SILVA LUDYN GABRIELA
UPDATE empleado SET fecha_expedicion = '15/06/2010', fecha_ingreso = '16/01/2023', fecha_nacimiento = '26/05/1992' WHERE id_cedula = '1098722582';
-- empleado 1098606170 | ARIZA QUITIAN LEONARDO
UPDATE empleado SET fecha_expedicion = '14/01/2004', fecha_ingreso = '16/01/2023', fecha_nacimiento = '27/11/1985' WHERE id_cedula = '1098606170';
-- empleado 1095947531 | URIBE JAIMES VLADIMIR
UPDATE empleado SET fecha_expedicion = '06/04/2015', fecha_ingreso = '16/01/2023', fecha_nacimiento = '29/03/1997' WHERE id_cedula = '1095947531';
-- empleado 1095828837 | VELASCO CASTRO JHON MICHAEL
UPDATE empleado SET fecha_expedicion = '09/06/2014', fecha_ingreso = '21/01/2023', fecha_nacimiento = '06/06/1996' WHERE id_cedula = '1095828837';
-- empleado 2677781 | NARVAEZ RONDON DOUGLAS EZEQUIEL
UPDATE empleado SET fecha_expedicion = '04/12/2021', fecha_ingreso = '16/01/2023', fecha_nacimiento = '01/02/2003' WHERE id_cedula = '2677781';
-- empleado 1005324457 | PINTO RANGEL LUDDAILLAMON
UPDATE empleado SET fecha_expedicion = '05/09/2019', fecha_ingreso = '20/01/2023', fecha_nacimiento = '05/08/2001' WHERE id_cedula = '1005324457';
-- empleado 1005505533 | SEQUEDA REATIGA ELBER ANDRES
UPDATE empleado SET fecha_expedicion = '25/09/2019', fecha_ingreso = '02/02/2023', fecha_nacimiento = '19/08/2001' WHERE id_cedula = '1005505533';
-- empleado 1098782929 | ESPITIA LANDAZABAL JAHIR FABIAN
UPDATE empleado SET fecha_expedicion = '23/04/2014', fecha_ingreso = '12/01/2023', fecha_nacimiento = '20/03/1996' WHERE id_cedula = '1098782929';
-- empleado 1098815659 | GUIZA HERRERA YULI KATHERINE
UPDATE empleado SET fecha_expedicion = '31/01/2017', fecha_ingreso = '17/01/2023', fecha_nacimiento = '21/01/1999' WHERE id_cedula = '1098815659';
-- empleado 1001815858 | DIAZ ROJAS DAVINSON
UPDATE empleado SET fecha_expedicion = '14/12/2020', fecha_ingreso = '12/01/2023', fecha_nacimiento = '12/12/2002' WHERE id_cedula = '1001815858';
-- empleado 1096243471 | REYES ALVAREZ JORGE ENRIQUE
UPDATE empleado SET fecha_expedicion = '02/07/2015', fecha_ingreso = '01/02/2023', fecha_nacimiento = '18/06/1997' WHERE id_cedula = '1096243471';
-- empleado 1102805921 | CORENA MENDOZA CARMEN CARINA
UPDATE empleado SET fecha_expedicion = '04/04/2005', fecha_ingreso = '01/02/2023', fecha_nacimiento = '03/12/1986' WHERE id_cedula = '1102805921';
-- empleado 1064728458 | ROMERO PEREZ OSCAR EDUARDO
UPDATE empleado SET fecha_expedicion = '28/08/2019', fecha_ingreso = '01/02/2023', fecha_nacimiento = '02/07/1993' WHERE id_cedula = '1064728458';
-- empleado 1102360234 | CARRILLO CHAPARRO LEIDY MILENA
UPDATE empleado SET fecha_expedicion = '07/06/2007', fecha_ingreso = '01/02/2023', fecha_nacimiento = '20/05/1989' WHERE id_cedula = '1102360234';
-- empleado 1098666170 | ARIZA QUITIAN LEONARDO
UPDATE empleado SET fecha_expedicion = '14/01/2004', fecha_ingreso = '06/02/2023', fecha_nacimiento = '27/11/1985' WHERE id_cedula = '1098666170';
-- empleado 1101204999 | CARRERO RINCON GONZALO
UPDATE empleado SET fecha_expedicion = '12/04/2010', fecha_ingreso = '09/02/2023', fecha_nacimiento = '29/03/1992' WHERE id_cedula = '1101204999';
-- empleado 1095832126 | ERIKA GERALDINE SANTOYO
UPDATE empleado SET fecha_expedicion = '11/02/2015', fecha_ingreso = '07/02/2023', fecha_nacimiento = '07/02/1997' WHERE id_cedula = '1095832126';
-- empleado 1005375360 | CONDE VILLAMIZAR YENNIFER ROCIO
UPDATE empleado SET fecha_expedicion = '31/07/2019', fecha_ingreso = '01/02/2023', fecha_nacimiento = '28/06/2001' WHERE id_cedula = '1005375360';
-- empleado 1093767979 | VICTOR MANUEL CALDERON PEREZ
UPDATE empleado SET fecha_expedicion = '22/06/2011', fecha_ingreso = '14/02/2023', fecha_nacimiento = '22/06/1993' WHERE id_cedula = '1093767979';
-- empleado 1100695854 | BENAVIDES PABA NAVIN LEONARDIS
UPDATE empleado SET fecha_expedicion = '18/03/2015', fecha_ingreso = '14/02/2023', fecha_nacimiento = '14/03/1997' WHERE id_cedula = '1100695854';
-- empleado 1095907137 | AGUILAR SAAVEDRA LUIS DAVID
UPDATE empleado SET fecha_expedicion = '22/04/2022', fecha_ingreso = '14/02/2023', fecha_nacimiento = '31/03/2004' WHERE id_cedula = '1095907137';
-- empleado 91541834 | MARULANDA MEJIA JOSE ANTONIO
UPDATE empleado SET fecha_expedicion = '28/08/2003', fecha_ingreso = '14/02/2023', fecha_nacimiento = '14/04/1985' WHERE id_cedula = '91541834';
-- empleado 1098724961 | BECERRA JAIMES DIEGO ARMANDO
UPDATE empleado SET fecha_expedicion = '09/08/2010', fecha_ingreso = '21/02/2023', fecha_nacimiento = '27/06/1992' WHERE id_cedula = '1098724961';
-- empleado 1098672597 | CAMACHO SANCHEZ DANIEL
UPDATE empleado SET fecha_expedicion = '10/07/2007', fecha_ingreso = '21/02/2023', fecha_nacimiento = '07/07/1989' WHERE id_cedula = '1098672597';
-- empleado 1102726333 | DELGADO GARCIA CESAR YESSY
UPDATE empleado SET fecha_expedicion = '03/01/2018', fecha_ingreso = '21/02/2023', fecha_nacimiento = '30/12/1999' WHERE id_cedula = '1102726333';
-- empleado 1098784694 | QUINTERO CORREA JUAN PABLO
UPDATE empleado SET fecha_expedicion = '09/06/2014', fecha_ingreso = '21/02/2023', fecha_nacimiento = '06/06/1996' WHERE id_cedula = '1098784694';
-- empleado 1098769935 | COLEY VELANDIA OSCAR GIOVANNI
UPDATE empleado SET fecha_expedicion = '04/06/2013', fecha_ingreso = '23/02/2023', fecha_nacimiento = '03/06/1995' WHERE id_cedula = '1098769935';
-- empleado 1100896906 | RODRIGUEZ GUERRERO EDILMER
UPDATE empleado SET fecha_expedicion = '01/02/2017', fecha_ingreso = '24/02/2023', fecha_nacimiento = '03/01/1999' WHERE id_cedula = '1100896906';
-- empleado 1005136829 | LANCHEROS TORRES BRANDON SNEIDEER
UPDATE empleado SET fecha_expedicion = '01/09/2020', fecha_ingreso = '02/03/2023', fecha_nacimiento = '26/08/2002' WHERE id_cedula = '1005136829';
-- empleado 1095822040 | RAMOS LAMUR FREDY ALEJANDRO
UPDATE empleado SET fecha_expedicion = '19/12/2012', fecha_ingreso = '02/03/2023', fecha_nacimiento = '19/12/1994' WHERE id_cedula = '1095822040';
-- empleado 1098719431 | PICO VARGAS NATALIA EUGENIA
UPDATE empleado SET fecha_expedicion = '07/04/2010', fecha_ingreso = '16/03/2023', fecha_nacimiento = '03/04/1992' WHERE id_cedula = '1098719431';
-- empleado 1020758240 | NIVIA ROCIO TAMAYO SANTAMARIA
UPDATE empleado SET fecha_expedicion = '25/01/2009', fecha_ingreso = '24/03/2023', fecha_nacimiento = '07/12/1990' WHERE id_cedula = '1020758240';
-- empleado 1 | NATALIA EUGENIA PICO VARGAS
UPDATE empleado SET fecha_expedicion = '07/04/2010', fecha_ingreso = '16/03/2023', fecha_nacimiento = '03/04/1992' WHERE id_cedula = '1';
-- empleado 1098698779 | SIERRA RIVERA HORLEY
UPDATE empleado SET fecha_expedicion = '23/01/2009', fecha_ingreso = '14/03/2023', fecha_nacimiento = '25/05/1987' WHERE id_cedula = '1098698779';
-- empleado 1007678100 | DUARTE PARADA KELLY JASNIDES
UPDATE empleado SET fecha_expedicion = '13/09/2018', fecha_ingreso = '27/03/2023', fecha_nacimiento = '26/05/2000' WHERE id_cedula = '1007678100';
-- empleado 1042436560 | PADILLA BRIEVA MILEXANDE
UPDATE empleado SET fecha_expedicion = '09/03/2009', fecha_ingreso = '23/03/2023', fecha_nacimiento = '26/11/1990' WHERE id_cedula = '1042436560';
-- empleado 1098705695 | ROJAS HERNANDEZ VICTOR ALFONSO
UPDATE empleado SET fecha_expedicion = '08/06/2009', fecha_ingreso = '06/06/2023', fecha_nacimiento = '04/06/1991' WHERE id_cedula = '1098705695';
-- empleado 1005293842 | NIEVES HERREÑO HINDERMAN
UPDATE empleado SET fecha_expedicion = '05/03/2007', fecha_ingreso = '06/06/2023', fecha_nacimiento = '20/11/1986' WHERE id_cedula = '1005293842';
-- empleado 1095913856 | VILLAMIZAR RODRIGUEZ IVAN
UPDATE empleado SET fecha_expedicion = '14/07/2006', fecha_ingreso = '06/06/2023', fecha_nacimiento = '27/06/1988' WHERE id_cedula = '1095913856';
-- empleado 1098821878 | NIÑO LEON FERNEY
UPDATE empleado SET fecha_expedicion = '11/08/2017', fecha_ingreso = '06/06/2023', fecha_nacimiento = '27/07/1999' WHERE id_cedula = '1098821878';
-- empleado 1097612814 | GOMEZ BARRERA YEIRON ALDAIR
UPDATE empleado SET fecha_expedicion = '25/09/2017', fecha_ingreso = '07/12/2023', fecha_nacimiento = '19/07/1999' WHERE id_cedula = '1097612814';
-- empleado 1098808629 | CACERES BAUTISTA KEVIN FABRICIO
UPDATE empleado SET fecha_expedicion = '05/07/2016', fecha_ingreso = '06/06/2023', fecha_nacimiento = '14/06/1998' WHERE id_cedula = '1098808629';
-- empleado 1095935838 | VILLANOVA CALDERON LEYDI VANESSA
UPDATE empleado SET fecha_expedicion = '23/03/2012', fecha_ingreso = '05/06/2023', fecha_nacimiento = '22/03/1994' WHERE id_cedula = '1095935838';
-- empleado 1098151044 | SUAREZ HERNANDEZ DANITZA CAROLINA
UPDATE empleado SET fecha_expedicion = '26/10/2009', fecha_ingreso = '23/05/2023', fecha_nacimiento = '15/09/1991' WHERE id_cedula = '1098151044';
-- empleado 1095937341 | SANDOVAL ALQUICHIRE MAGALY
UPDATE empleado SET fecha_expedicion = '24/08/2012', fecha_ingreso = '16/05/2023', fecha_nacimiento = '17/08/1994' WHERE id_cedula = '1095937341';
-- empleado 1093920753 | RINCON MENDOZA DUBIAN ERNEY
UPDATE empleado SET fecha_expedicion = '17/06/2023', fecha_ingreso = '03/05/2023', fecha_nacimiento = '17/01/1997' WHERE id_cedula = '1093920753';
-- empleado 1193567011 | MALAGON GAMEZ ANDERSON RONALDO
UPDATE empleado SET fecha_expedicion = '04/01/2021', fecha_ingreso = '23/05/2023', fecha_nacimiento = '02/10/2002' WHERE id_cedula = '1193567011';
-- empleado 1095907091 | BLANCO SEPULVEDA IVAN ANDRES
UPDATE empleado SET fecha_expedicion = '03/05/2002', fecha_ingreso = '16/06/2023', fecha_nacimiento = '29/03/2004' WHERE id_cedula = '1095907091';
-- empleado 1232892424 | JAIMES FONSECA IVAN RAMIRO
UPDATE empleado SET fecha_expedicion = '14/11/2017', fecha_ingreso = '16/06/2023', fecha_nacimiento = '22/10/1999' WHERE id_cedula = '1232892424';
-- empleado 1095788824 | QUINTERO GOMEZ LUIS SEBASTIAN
UPDATE empleado SET fecha_expedicion = '18/03/2022', fecha_ingreso = '16/06/2023', fecha_nacimiento = '07/10/2003' WHERE id_cedula = '1095788824';
-- empleado 1129485327 | ARIZA MOLINA DEIWIS MANUEL
UPDATE empleado SET fecha_expedicion = '15/06/2017', fecha_ingreso = '15/05/2023', fecha_nacimiento = '08/06/1999' WHERE id_cedula = '1129485327';
-- empleado 4769521 | ANZOATEGUI LARA DANIEL JACINTO
UPDATE empleado SET fecha_expedicion = '14/06/2022', fecha_ingreso = '23/05/2023', fecha_nacimiento = '02/04/1992' WHERE id_cedula = '4769521';
-- empleado 1005369411 | ALMANZA MANRIQUE DILSON STIWARD
UPDATE empleado SET fecha_expedicion = '15/02/2021', fecha_ingreso = '25/04/2023', fecha_nacimiento = '17/01/2003' WHERE id_cedula = '1005369411';
-- empleado 1005371766 | VALDERRAMA PINEDA KEVIN STEVEN
UPDATE empleado SET fecha_expedicion = '22/12/2020', fecha_ingreso = '23/05/2023', fecha_nacimiento = '19/10/2002' WHERE id_cedula = '1005371766';
-- empleado 1005372360 | CONDE VILLAMIZAR YENNIFER ROCIO
UPDATE empleado SET fecha_expedicion = '31/07/2019', fecha_ingreso = '25/01/2024', fecha_nacimiento = '28/06/2001' WHERE id_cedula = '1005372360';
-- empleado 1234339501 | VELEZ HERNANDEZ FRANVEL GEOVANNY
UPDATE empleado SET fecha_expedicion = '22/07/2016', fecha_ingreso = '11/05/2023', fecha_nacimiento = '20/02/1998' WHERE id_cedula = '1234339501';
-- empleado 1101682728 | SUAREZ DUARTE LUIS CARLOS
UPDATE empleado SET fecha_expedicion = '09/06/2004', fecha_ingreso = '27/06/2023', fecha_nacimiento = '22/04/1986' WHERE id_cedula = '1101682728';
-- empleado 1055449415 | RINCON DIAZ MILTON YESID
UPDATE empleado SET fecha_expedicion = '14/06/2018', fecha_ingreso = '23/05/2023', fecha_nacimiento = '10/06/2000' WHERE id_cedula = '1055449415';
-- empleado 1005178601 | PEÑALOZA VILLARREAL EDGAR ENRIQUE
UPDATE empleado SET fecha_expedicion = '27/11/2014', fecha_ingreso = '25/04/2023', fecha_nacimiento = '15/03/1996' WHERE id_cedula = '1005178601';
-- empleado 5135419 | MENDOZA ALFARO FAUSTINO CALLETANO
UPDATE empleado SET fecha_expedicion = '27/01/1999', fecha_ingreso = '03/05/2023', fecha_nacimiento = '02/12/1979' WHERE id_cedula = '5135419';
-- empleado 1116799172 | MEJIA MONTESINO MIGUEL ANDRES
UPDATE empleado SET fecha_expedicion = '21/08/2012', fecha_ingreso = '15/05/2023', fecha_nacimiento = '02/07/1994' WHERE id_cedula = '1116799172';
-- empleado 1102723821 | NORIEGA CUBILLOS CARLOS ANDRES
UPDATE empleado SET fecha_expedicion = '30/04/2014', fecha_ingreso = '30/06/2023', fecha_nacimiento = '22/04/1996' WHERE id_cedula = '1102723821';
-- empleado 1110576442 | VALLEJO CAICEDO CRISTIAN ANDRES
UPDATE empleado SET fecha_expedicion = '05/11/2014', fecha_ingreso = '23/05/2023', fecha_nacimiento = '02/11/1996' WHERE id_cedula = '1110576442';
-- empleado 1095795504 | VALBUENA DAMIAN LEONARDO
UPDATE empleado SET fecha_expedicion = '16/05/2006', fecha_ingreso = '25/04/2023', fecha_nacimiento = '07/04/1988' WHERE id_cedula = '1095795504';
-- empleado 1065245775 | HURTADO QUINTERO ORLANDO AQUILES
UPDATE empleado SET fecha_expedicion = '23/11/2015', fecha_ingreso = '15/05/2023', fecha_nacimiento = '10/11/1997' WHERE id_cedula = '1065245775';
-- empleado 1096538631 | CARVAJAL ARDILA JOHAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '13/03/2023', fecha_ingreso = '09/05/2023', fecha_nacimiento = '10/03/2005' WHERE id_cedula = '1096538631';
-- empleado 1100888638 | MOLINA RINCON LUIS MANUEL
UPDATE empleado SET fecha_expedicion = '09/08/2004', fecha_ingreso = '25/04/2023', fecha_nacimiento = '26/05/1986' WHERE id_cedula = '1100888638';
-- empleado 1005153680 | PEÑA RODRIGUEZ JEIDER ESSTIVEN
UPDATE empleado SET fecha_expedicion = '12/03/2021', fecha_ingreso = '25/04/2023', fecha_nacimiento = '02/03/2003' WHERE id_cedula = '1005153680';
-- empleado 1095788624 | QUINTERO GOMEZ LUIS SEBASTIAN
UPDATE empleado SET fecha_expedicion = '18/03/2022', fecha_ingreso = '16/06/2023', fecha_nacimiento = '07/10/2003' WHERE id_cedula = '1095788624';
-- empleado 1005449415 | RINCON DIAZ MILTON YESID
UPDATE empleado SET fecha_expedicion = '14/06/2018', fecha_ingreso = '23/05/2023', fecha_nacimiento = '10/06/2000' WHERE id_cedula = '1005449415';
-- empleado 1095835855 | ISIDRO ARCILA PAULA ANDREA
UPDATE empleado SET fecha_expedicion = '24/11/2015', fecha_ingreso = '25/04/2024', fecha_nacimiento = '25/10/1997' WHERE id_cedula = '1095835855';
-- empleado 1095836031 | QUIÑONEZ ARENAS SHARON TATIANA
UPDATE empleado SET fecha_expedicion = '03/12/2015', fecha_ingreso = '04/07/2023', fecha_nacimiento = '26/11/1997' WHERE id_cedula = '1095836031';
-- empleado 1005338427 | MIRANDA HERNANDEZ KAREN JOHANNA
UPDATE empleado SET fecha_expedicion = '03/04/2018', fecha_ingreso = '01/01/2024', fecha_nacimiento = '04/03/2000' WHERE id_cedula = '1005338427';
-- empleado 1005107733 | ARIZA LOPEZ JISNEY
UPDATE empleado SET fecha_expedicion = '05/08/2009', fecha_ingreso = '11/07/2023', fecha_nacimiento = '03/08/2001' WHERE id_cedula = '1005107733';
-- empleado 3085315 | PEREZ JIMENEZ JAVIER JOSUE
UPDATE empleado SET fecha_expedicion = '09/03/2022', fecha_ingreso = '11/07/2023', fecha_nacimiento = '23/04/1995' WHERE id_cedula = '3085315';
-- empleado 1005040763 | GALVIZ GALVIS EVER MILCIADES
UPDATE empleado SET fecha_expedicion = '11/06/2020', fecha_ingreso = '14/07/2023', fecha_nacimiento = '05/03/2002' WHERE id_cedula = '1005040763';
-- empleado 1005295361 | NIEVES HERREÑO JOSE PEREGRINO
UPDATE empleado SET fecha_expedicion = '24/03/2009', fecha_ingreso = '11/07/2023', fecha_nacimiento = '27/02/1981' WHERE id_cedula = '1005295361';
-- empleado 4868423 | TORRES BARRIOS WUEFFER ANYUMER
UPDATE empleado SET fecha_expedicion = '21/05/2021', fecha_ingreso = '11/07/2023', fecha_nacimiento = '20/07/1994' WHERE id_cedula = '4868423';
-- empleado 1007579361 | RODRIGUEZ SILVA BRAYAN CAMILO
UPDATE empleado SET fecha_expedicion = '06/12/2018', fecha_ingreso = '14/07/2023', fecha_nacimiento = '25/11/2000' WHERE id_cedula = '1007579361';
-- empleado 1081787784 | PACHECO SELIN BALDOMERO
UPDATE empleado SET fecha_expedicion = '18/11/2008', fecha_ingreso = '21/07/2023', fecha_nacimiento = '18/02/1989' WHERE id_cedula = '1081787784';
-- empleado 1065918801 | TORO VELEZ JESUS MANUEL
UPDATE empleado SET fecha_expedicion = '15/11/2017', fecha_ingreso = '27/07/2023', fecha_nacimiento = '06/10/1999' WHERE id_cedula = '1065918801';
-- empleado 1098772942 | MIRANDA ROJAS JHOANN ANDRES
UPDATE empleado SET fecha_expedicion = '14/08/2013', fecha_ingreso = '02/09/2024', fecha_nacimiento = '29/07/1995' WHERE id_cedula = '1098772942';
-- empleado 1098670905 | DIAZ GARCIA SERGIO ANDRES
UPDATE empleado SET fecha_expedicion = '21/06/2023', fecha_ingreso = '01/08/2023', fecha_nacimiento = '19/03/2005' WHERE id_cedula = '1098670905';
-- empleado 1095932394 | PARADA ORTEGA GUSTAVO ADOLFO
UPDATE empleado SET fecha_expedicion = '09/08/2023', fecha_ingreso = '01/08/2023', fecha_nacimiento = '28/04/1993' WHERE id_cedula = '1095932394';
-- empleado 1098822966 | BERNAL LOPEZ ANDREA ELIANA
UPDATE empleado SET fecha_expedicion = '29/09/2017', fecha_ingreso = '01/02/2024', fecha_nacimiento = '05/08/1999' WHERE id_cedula = '1098822966';
-- empleado 1082999714 | CASTILLO JIMENEZ EDGAR ALEXANDER
UPDATE empleado SET fecha_expedicion = '18/06/2013', fecha_ingreso = '08/08/2023', fecha_nacimiento = '12/06/1995' WHERE id_cedula = '1082999714';
-- empleado 1005280727 | ARIZA PAREDES JUAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '20/12/2019', fecha_ingreso = '08/08/2023', fecha_nacimiento = '19/12/2001' WHERE id_cedula = '1005280727';
-- empleado 7360723 | FRONTADO FUENTES CESAR JAVIER
UPDATE empleado SET fecha_expedicion = '28/11/2022', fecha_ingreso = '27/07/2023', fecha_nacimiento = '06/03/1986' WHERE id_cedula = '7360723';
-- empleado 1094579227 | TORRADO ALBA DANIEL JESUS
UPDATE empleado SET fecha_expedicion = '11/09/2013', fecha_ingreso = '18/08/2023', fecha_nacimiento = '11/09/1995' WHERE id_cedula = '1094579227';
-- empleado 1007439697 | RODRIGUEZ PULIDO CAMILO
UPDATE empleado SET fecha_expedicion = '13/07/2016', fecha_ingreso = '25/08/2023', fecha_nacimiento = '07/07/1998' WHERE id_cedula = '1007439697';
-- empleado 1005564048 | MANCILLA FIGUEREDO LUIS FERNANDO
UPDATE empleado SET fecha_expedicion = '25/11/2019', fecha_ingreso = '25/08/2023', fecha_nacimiento = '07/10/2001' WHERE id_cedula = '1005564048';
-- empleado 1095827638 | DURAN AVILA ANDERSON HARLEY
UPDATE empleado SET fecha_expedicion = '10/02/2014', fecha_ingreso = '04/09/2023', fecha_nacimiento = '01/02/1996' WHERE id_cedula = '1095827638';
-- empleado 1095828524 | DURAN REMOLINA GUSTAVO ADOLFO
UPDATE empleado SET fecha_expedicion = '30/04/2014', fecha_ingreso = '04/09/2023', fecha_nacimiento = '11/04/1996' WHERE id_cedula = '1095828524';
-- empleado 1002599899 | MORENO RAMIREZ ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '25/11/2019', fecha_ingreso = '04/09/2023', fecha_nacimiento = '17/11/2001' WHERE id_cedula = '1002599899';
-- empleado 1101598119 | MEDINA HERNANDEZ WILSON EDUARDO
UPDATE empleado SET fecha_expedicion = '13/05/2014', fecha_ingreso = '04/09/2023', fecha_nacimiento = '05/07/1996' WHERE id_cedula = '1101598119';
-- empleado 1100223026 | BARRERA REYES DEEYNE YURIANI
UPDATE empleado SET fecha_expedicion = '02/11/2016', fecha_ingreso = '04/09/2023', fecha_nacimiento = '12/09/1998' WHERE id_cedula = '1100223026';
-- empleado 1095940311 | OSORIO ZANDUA JUAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '06/06/2013', fecha_ingreso = '04/03/2024', fecha_nacimiento = '09/05/1995' WHERE id_cedula = '1095940311';
-- empleado 1098695216 | ORTIZ ORTIZ JUAN ELISEO
UPDATE empleado SET fecha_expedicion = '18/11/2008', fecha_ingreso = '12/09/2023', fecha_nacimiento = '13/08/1990' WHERE id_cedula = '1098695216';
-- empleado 1095830827 | RINCON PAEZ IZHAR DAVID
UPDATE empleado SET fecha_expedicion = '30/10/2014', fecha_ingreso = '12/09/2023', fecha_nacimiento = '09/05/1996' WHERE id_cedula = '1095830827';
-- empleado 1232888572 | SANDOVAL PEREZ ANDERSON JULIAN
UPDATE empleado SET fecha_expedicion = '19/08/2015', fecha_ingreso = '12/09/2023', fecha_nacimiento = '31/07/1997' WHERE id_cedula = '1232888572';
-- empleado 1095950032 | CARO MURALLA CARLOS ADRIAN
UPDATE empleado SET fecha_expedicion = '06/11/2015', fecha_ingreso = '22/09/2023', fecha_nacimiento = '07/10/1997' WHERE id_cedula = '1095950032';
-- empleado 1095821450 | QUIJANO ARAQUE JAIRO YEZID
UPDATE empleado SET fecha_expedicion = '07/11/2012', fecha_ingreso = '22/09/2023', fecha_nacimiento = '02/11/1994' WHERE id_cedula = '1095821450';
-- empleado 1098731860 | CASTELLANOS TORRES EDINSON
UPDATE empleado SET fecha_expedicion = '06/01/2011', fecha_ingreso = '22/09/2023', fecha_nacimiento = '03/11/1992' WHERE id_cedula = '1098731860';
-- empleado 7209323 | TORREALBA LOPEZ CARLOS JAVIER
UPDATE empleado SET fecha_expedicion = '13/07/2022', fecha_ingreso = '23/09/2023', fecha_nacimiento = '08/11/1979' WHERE id_cedula = '7209323';
-- empleado 1095812471 | MEDINA MALDONADO DARWIN JULIAN
UPDATE empleado SET fecha_expedicion = '09/08/2021', fecha_ingreso = '22/09/2023', fecha_nacimiento = '06/08/2003' WHERE id_cedula = '1095812471';
-- empleado 1005271622 | RIVERO CAMACHO JHOAN GABRIEL
UPDATE empleado SET fecha_expedicion = '22/11/2019', fecha_ingreso = '30/12/2024', fecha_nacimiento = '05/10/2001' WHERE id_cedula = '1005271622';
-- empleado 1005329972 | SANCHEZ FUENTES JUAN MANUEL
UPDATE empleado SET fecha_expedicion = '24/11/2020', fecha_ingreso = '19/09/2023', fecha_nacimiento = '14/11/2002' WHERE id_cedula = '1005329972';
-- empleado 1142915174 | LEZAMA BAUTISTA JHON EDWIN
UPDATE empleado SET fecha_expedicion = '27/06/2023', fecha_ingreso = '23/09/2023', fecha_nacimiento = '20/05/2005' WHERE id_cedula = '1142915174';
-- empleado 1098765043 | BLANCO LOPEZ CARLOS DANIEL
UPDATE empleado SET fecha_expedicion = '11/02/2013', fecha_ingreso = '14/11/2024', fecha_nacimiento = '10/02/1995' WHERE id_cedula = '1098765043';
-- empleado 1095937814 | CASTILLA PEREIRA JIMMY JOSE
UPDATE empleado SET fecha_expedicion = '04/12/2012', fecha_ingreso = '24/08/2023', fecha_nacimiento = '01/10/1994' WHERE id_cedula = '1095937814';
-- empleado 1099622755 | RODRIGUEZ LIZCANO EDINSON FERNEY
UPDATE empleado SET fecha_expedicion = '21/11/2016', fecha_ingreso = '15/02/2024', fecha_nacimiento = '11/10/1998' WHERE id_cedula = '1099622755';
-- empleado 1005324198 | MORENO ALVAREZ RUBEN DARIO
UPDATE empleado SET fecha_expedicion = '22/07/2019', fecha_ingreso = '08/08/2023', fecha_nacimiento = '17/07/2001' WHERE id_cedula = '1005324198';
-- empleado 1063948811 | GAZABON PEREZ MARIA ISABEL
UPDATE empleado SET fecha_expedicion = '17/04/2018', fecha_ingreso = '02/10/2023', fecha_nacimiento = '12/04/2000' WHERE id_cedula = '1063948811';
-- empleado 1005136377 | HERNANDEZ PARRA SILVIA JULIANA
UPDATE empleado SET fecha_expedicion = '18/12/2020', fecha_ingreso = '03/10/2023', fecha_nacimiento = '16/12/2002' WHERE id_cedula = '1005136377';
-- empleado 1095822038 | JAIMES GOMEZ FABIAN
UPDATE empleado SET fecha_expedicion = '19/12/2012', fecha_ingreso = '10/10/2023', fecha_nacimiento = '29/11/1994' WHERE id_cedula = '1095822038';
-- empleado 1005259277 | PRADA RUEDA ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '23/02/2021', fecha_ingreso = '12/10/2023', fecha_nacimiento = '25/01/2003' WHERE id_cedula = '1005259277';
-- empleado 1063482428 | SALAS JIMENEZ CAMILO JESUS
UPDATE empleado SET fecha_expedicion = '06/07/2021', fecha_ingreso = '12/10/2023', fecha_nacimiento = '26/06/2003' WHERE id_cedula = '1063482428';
-- empleado 1005327585 | SANTOS GOMEZ ANGEL ALBERTO
UPDATE empleado SET fecha_expedicion = '02/10/2020', fecha_ingreso = '12/10/2023', fecha_nacimiento = '15/04/2002' WHERE id_cedula = '1005327585';
-- empleado 1234340651 | CEBALLOS SERRANO DIEGO ANDREY
UPDATE empleado SET fecha_expedicion = '04/08/2017', fecha_ingreso = '12/10/2023', fecha_nacimiento = '30/07/1999' WHERE id_cedula = '1234340651';
-- empleado 1095838464 | RAMIREZ PEÑA NICOLL JULIANA
UPDATE empleado SET fecha_expedicion = '02/08/2016', fecha_ingreso = '24/10/2023', fecha_nacimiento = '22/05/1998' WHERE id_cedula = '1095838464';
-- empleado 1005209826 | ZORRILLA GALEANO EDWIN DUBAN
UPDATE empleado SET fecha_expedicion = '30/06/2020', fecha_ingreso = '24/10/2023', fecha_nacimiento = '30/04/2002' WHERE id_cedula = '1005209826';
-- empleado 1005280634 | PATIÑO MUÑOZ BRAYAN STIVEN
UPDATE empleado SET fecha_expedicion = '02/07/2020', fecha_ingreso = '24/10/2023', fecha_nacimiento = '14/11/2001' WHERE id_cedula = '1005280634';
-- empleado 1098814140 | TOBO GARCIA EDINSON DARIO
UPDATE empleado SET fecha_expedicion = '19/12/2016', fecha_ingreso = '12/10/2023', fecha_nacimiento = '19/12/1998' WHERE id_cedula = '1098814140';
-- empleado 1005289022 | ARDILA ROSAS NICOLAS
UPDATE empleado SET fecha_expedicion = '21/08/2020', fecha_ingreso = '10/10/2023', fecha_nacimiento = '04/08/2002' WHERE id_cedula = '1005289022';
-- empleado 1005151938 | PINTO BRICEÑO ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '25/08/2002', fecha_ingreso = '02/11/2023', fecha_nacimiento = '25/08/2002' WHERE id_cedula = '1005151938';
-- empleado 1098764768 | TORRA BUSTOS SERGIO ENRIQUE
UPDATE empleado SET fecha_expedicion = '06/02/2013', fecha_ingreso = '02/11/2023', fecha_nacimiento = '02/01/1995' WHERE id_cedula = '1098764768';
-- empleado 1066093663 | RODRIGUEZ BARROS LUIS EDUARDO
UPDATE empleado SET fecha_expedicion = '24/11/2010', fecha_ingreso = '02/11/2023', fecha_nacimiento = '07/10/1992' WHERE id_cedula = '1066093663';
-- empleado 1066084106 | PEDROZA DUARTE JORGE ELIECER
UPDATE empleado SET fecha_expedicion = '13/10/2023', fecha_ingreso = '02/11/2023', fecha_nacimiento = '13/10/2005' WHERE id_cedula = '1066084106';
-- empleado 91535197 | SOTO MATEUS WILLIAM
UPDATE empleado SET fecha_expedicion = '20/12/2002', fecha_ingreso = '02/11/2023', fecha_nacimiento = '20/12/1984' WHERE id_cedula = '91535197';
-- empleado 4925589 | MARCANO GUZMAN JOSE ERNESTO
UPDATE empleado SET fecha_expedicion = '09/06/2023', fecha_ingreso = '16/11/2023', fecha_nacimiento = '12/12/1994' WHERE id_cedula = '4925589';
-- empleado 6202600 | HERNANDEZ ALEXIS JOSE
UPDATE empleado SET fecha_expedicion = '04/03/2022', fecha_ingreso = '16/11/2023', fecha_nacimiento = '12/03/1977' WHERE id_cedula = '6202600';
-- empleado 1176763 | RAVAGO HERNANDEZ MIGUEL ANTONIO
UPDATE empleado SET fecha_expedicion = '04/12/2021', fecha_ingreso = '16/11/2023', fecha_nacimiento = '27/10/2005' WHERE id_cedula = '1176763';
-- empleado 1102385966 | OROZCO BAYONA JORGE ANDRES
UPDATE empleado SET fecha_expedicion = '25/02/2016', fecha_ingreso = '21/11/2023', fecha_nacimiento = '23/02/1998' WHERE id_cedula = '1102385966';
-- empleado 1010049417 | CALDERON GELVES WILDER
UPDATE empleado SET fecha_expedicion = '27/11/2012', fecha_ingreso = '21/11/2023', fecha_nacimiento = '28/06/1994' WHERE id_cedula = '1010049417';
-- empleado 1100895396 | NIÑO NIÑO JOSE ALEXANDER
UPDATE empleado SET fecha_expedicion = '26/12/2013', fecha_ingreso = '23/11/2023', fecha_nacimiento = '03/10/1995' WHERE id_cedula = '1100895396';
-- empleado 1094778035 | FLOREZ CAMACHO JHON HENRY
UPDATE empleado SET fecha_expedicion = '07/07/2022', fecha_ingreso = '21/11/2023', fecha_nacimiento = '25/10/2003' WHERE id_cedula = '1094778035';
-- empleado 5472091 | PIÑANGO ARISTIMUÑO CRISTIAN GABRIEL
UPDATE empleado SET fecha_expedicion = '10/03/2022', fecha_ingreso = '23/11/2023', fecha_nacimiento = '30/10/2001' WHERE id_cedula = '5472091';
-- empleado 1092671213 | BALLESTEROS NUÑEZ DERSO
UPDATE empleado SET fecha_expedicion = '23/05/2019', fecha_ingreso = '23/11/2023', fecha_nacimiento = '18/10/2000' WHERE id_cedula = '1092671213';
-- empleado 1005541986 | ROJAS MORENO JEFERSON STIVEN
UPDATE empleado SET fecha_expedicion = '16/03/2021', fecha_ingreso = '21/11/2023', fecha_nacimiento = '26/02/2003' WHERE id_cedula = '1005541986';
-- empleado 1005281278 | DIAZ VARGAS CAROL VANESSA
UPDATE empleado SET fecha_expedicion = '20/11/2020', fecha_ingreso = '16/11/2023', fecha_nacimiento = '30/10/2002' WHERE id_cedula = '1005281278';
-- empleado 1099377191 | MENDOZA SOLANO JORGE ENRIQUE
UPDATE empleado SET fecha_expedicion = '02/01/2018', fecha_ingreso = '27/11/2023', fecha_nacimiento = '01/01/2000' WHERE id_cedula = '1099377191';
-- empleado 1095826663 | AGUILLON ZIYAD CARLOS HERNANDO
UPDATE empleado SET fecha_expedicion = '28/11/2013', fecha_ingreso = '27/11/2023', fecha_nacimiento = '25/11/1995' WHERE id_cedula = '1095826663';
-- empleado 1005371592 | GUTIERREZ MUÑOZ LUIS MIGUEL
UPDATE empleado SET fecha_expedicion = '18/01/2021', fecha_ingreso = '27/11/2023', fecha_nacimiento = '03/12/2002' WHERE id_cedula = '1005371592';
-- empleado 1095940472 | PEREZ BARRAGAN JAVIER ESTEVAN
UPDATE empleado SET fecha_expedicion = '24/06/2013', fecha_ingreso = '27/11/2023', fecha_nacimiento = '16/01/1995' WHERE id_cedula = '1095940472';
-- empleado 1098688051 | GUTIERREZ GARCIA EDUAR ALEXIS
UPDATE empleado SET fecha_expedicion = '17/06/2008', fecha_ingreso = '05/12/2023', fecha_nacimiento = '05/06/1990' WHERE id_cedula = '1098688051';
-- empleado 1102362432 | CARVAJAL ORDUZ JULIAN ANDRES
UPDATE empleado SET fecha_expedicion = '24/01/2008', fecha_ingreso = '05/12/2023', fecha_nacimiento = '30/11/1989' WHERE id_cedula = '1102362432';
-- empleado 91353575 | PEÑA FUENTES EDWIN ANTONIO
UPDATE empleado SET fecha_expedicion = '05/12/2023', fecha_ingreso = '05/12/2023', fecha_nacimiento = '20/12/1981' WHERE id_cedula = '91353575';
-- empleado 1099734814 | ACEVEDO CORTES LUDWING OSWALDO
UPDATE empleado SET fecha_expedicion = '13/05/2022', fecha_ingreso = '05/12/2023', fecha_nacimiento = '11/05/2004' WHERE id_cedula = '1099734814';
-- empleado 1007371337 | DOMINGUEZ TORDECILLA JOSE SEBASTIAN
UPDATE empleado SET fecha_expedicion = '08/05/2018', fecha_ingreso = '05/12/2023', fecha_nacimiento = '04/05/2000' WHERE id_cedula = '1007371337';
-- empleado 80842536 | MARTINEZ RAMIREZ MARIO ALEXANDER
UPDATE empleado SET fecha_expedicion = '06/06/2002', fecha_ingreso = '14/12/2023', fecha_nacimiento = '02/04/1984' WHERE id_cedula = '80842536';
-- empleado 1005209693 | MEDINA GARZON IAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '18/03/2019', fecha_ingreso = '14/12/2023', fecha_nacimiento = '16/03/2001' WHERE id_cedula = '1005209693';
-- empleado 1005237343 | SANTANDER ROJAS ADRIANA VALENTINA
UPDATE empleado SET fecha_expedicion = '23/12/2020', fecha_ingreso = '14/12/2023', fecha_nacimiento = '20/12/2002' WHERE id_cedula = '1005237343';
-- empleado 1095917873 | AMARIS VEGA DEIVIS
UPDATE empleado SET fecha_expedicion = '22/06/2007', fecha_ingreso = '14/12/2023', fecha_nacimiento = '11/05/1989' WHERE id_cedula = '1095917873';
-- empleado 1005327469 | CARDENAS RONDON DANIEL SANTIAGO
UPDATE empleado SET fecha_expedicion = '07/02/2020', fecha_ingreso = '27/03/2025', fecha_nacimiento = '27/01/2002' WHERE id_cedula = '1005327469';
-- empleado 91539846 | RENGIFO MORA OSCAR ALEJANDRO
UPDATE empleado SET fecha_expedicion = '09/06/2003', fecha_ingreso = '19/12/2023', fecha_nacimiento = '19/05/1985' WHERE id_cedula = '91539846';
-- empleado 1094962899 | VILLA CORTES JUAN DIEGO
UPDATE empleado SET fecha_expedicion = '08/07/2015', fecha_ingreso = '19/12/2023', fecha_nacimiento = '11/05/1997' WHERE id_cedula = '1094962899';
-- empleado 1095909053 | DELGADO RUEDA DANIEL RICARDO
UPDATE empleado SET fecha_expedicion = '15/12/2022', fecha_ingreso = '19/12/2023', fecha_nacimiento = '11/12/2004' WHERE id_cedula = '1095909053';
-- empleado 5425331 | CARRILLO FAMA JESUS YOEL
UPDATE empleado SET fecha_expedicion = '10/03/2022', fecha_ingreso = '21/12/2023', fecha_nacimiento = '19/05/2000' WHERE id_cedula = '5425331';
-- empleado 1062904842 | PEREZ QUINTERO FREDYS
UPDATE empleado SET fecha_expedicion = '14/12/2022', fecha_ingreso = '16/01/2024', fecha_nacimiento = '16/10/2004' WHERE id_cedula = '1062904842';
-- empleado 1096538111 | PEREZ CEDIEL JAIDER ALEJANDRO
UPDATE empleado SET fecha_expedicion = '11/04/2022', fecha_ingreso = '11/01/2024', fecha_nacimiento = '27/02/2004' WHERE id_cedula = '1096538111';
-- empleado 1091683312 | SEPULVEDA BENITEZ ANDERSON FABIAN
UPDATE empleado SET fecha_expedicion = '18/01/2018', fecha_ingreso = '11/01/2024', fecha_nacimiento = '18/07/1999' WHERE id_cedula = '1091683312';
-- empleado 1098775415 | RUIZ ZAPATA ANDRES MAURICIO
UPDATE empleado SET fecha_expedicion = '09/10/2013', fecha_ingreso = '11/01/2024', fecha_nacimiento = '23/02/1995' WHERE id_cedula = '1098775415';
-- empleado 1098708548 | GIL RODRIGUEZ WILMER
UPDATE empleado SET fecha_expedicion = '03/08/2009', fecha_ingreso = '11/01/2024', fecha_nacimiento = '18/07/1991' WHERE id_cedula = '1098708548';
-- empleado 1005386544 | GARCIA GOMEZ HUGO ARMANDO
UPDATE empleado SET fecha_expedicion = '17/08/2021', fecha_ingreso = '16/01/2024', fecha_nacimiento = '21/12/2002' WHERE id_cedula = '1005386544';
-- empleado 4588561 | ANTON RODRIGUEZ HECTOR LUIS
UPDATE empleado SET fecha_expedicion = '30/11/2022', fecha_ingreso = '16/01/2024', fecha_nacimiento = '16/06/1984' WHERE id_cedula = '4588561';
-- empleado 1098673104 | CALDERON PABON JAVIER EDUARDO
UPDATE empleado SET fecha_expedicion = '19/07/2007', fecha_ingreso = '11/01/2024', fecha_nacimiento = '16/07/1989' WHERE id_cedula = '1098673104';
-- empleado 91536699 | ALBARRACIN CARREÑO EDINSON
UPDATE empleado SET fecha_expedicion = '12/02/2003', fecha_ingreso = '16/01/2024', fecha_nacimiento = '23/10/1984' WHERE id_cedula = '91536699';
-- empleado 1095933752 | SUAREZ REYES YORDY FABIAN
UPDATE empleado SET fecha_expedicion = '07/09/2011', fecha_ingreso = '11/01/2024', fecha_nacimiento = '09/08/1993' WHERE id_cedula = '1095933752';
-- empleado 1004824012 | CASTILLO PABON OMAR JAVIER
UPDATE empleado SET fecha_expedicion = '14/04/2015', fecha_ingreso = '11/01/2024', fecha_nacimiento = '09/04/1997' WHERE id_cedula = '1004824012';
-- empleado 1098703920 | PABON CELIS JHON JAIRO
UPDATE empleado SET fecha_expedicion = '04/05/2009', fecha_ingreso = '17/01/2024', fecha_nacimiento = '03/05/1991' WHERE id_cedula = '1098703920';
-- empleado 1005061514 | MEJIA GONZALEZ ANYELA DAYANA
UPDATE empleado SET fecha_expedicion = '04/03/2021', fecha_ingreso = '23/01/2024', fecha_nacimiento = '02/03/2003' WHERE id_cedula = '1005061514';
-- empleado 1098627154 | RUEDA RUEDA FABIO ANDRES
UPDATE empleado SET fecha_expedicion = '28/12/2004', fecha_ingreso = '17/01/2024', fecha_nacimiento = '02/02/2006' WHERE id_cedula = '1098627154';
-- empleado 1007673743 | AYALA PARRA YEISON FABIAN
UPDATE empleado SET fecha_expedicion = '12/07/2018', fecha_ingreso = '23/01/2024', fecha_nacimiento = '10/07/2000' WHERE id_cedula = '1007673743';
-- empleado 1095944724 | SALAMANCA MARTINEZ LUIS ARMANDO
UPDATE empleado SET fecha_expedicion = '28/07/2014', fecha_ingreso = '23/01/2024', fecha_nacimiento = '21/07/1996' WHERE id_cedula = '1095944724';
-- empleado 1251543 | GIRON ALBARRAN JORKENIS JOHAN
UPDATE empleado SET fecha_expedicion = '29/01/2024', fecha_ingreso = '13/08/2024', fecha_nacimiento = '25/09/1992' WHERE id_cedula = '1251543';
-- empleado 1003258570 | PRADO MONTERO RAUL RICARDO
UPDATE empleado SET fecha_expedicion = '10/09/2020', fecha_ingreso = '29/01/2024', fecha_nacimiento = '24/06/2002' WHERE id_cedula = '1003258570';
-- empleado 1102363801 | ARENAS CORDERO EDWIN
UPDATE empleado SET fecha_expedicion = '16/06/2008', fecha_ingreso = '31/01/2024', fecha_nacimiento = '08/06/1990' WHERE id_cedula = '1102363801';
-- empleado 1095916241 | CORONEL ORTEGA YAMID
UPDATE empleado SET fecha_expedicion = '08/02/2007', fecha_ingreso = '01/02/2024', fecha_nacimiento = '31/01/1989' WHERE id_cedula = '1095916241';
-- empleado 1122409117 | BARROS VEGA RAFAEL DAVID
UPDATE empleado SET fecha_expedicion = '03/02/2024', fecha_ingreso = '01/02/2024', fecha_nacimiento = '28/02/1994' WHERE id_cedula = '1122409117';
-- empleado 1005162501 | OCHOA HERNANDEZ ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '01/07/2020', fecha_ingreso = '01/02/2024', fecha_nacimiento = '04/04/2002' WHERE id_cedula = '1005162501';
-- empleado 6158509 | RODRIGUEZ RODRIGUEZ ANTONY GABRIEL
UPDATE empleado SET fecha_expedicion = '01/02/2023', fecha_ingreso = '06/02/2024', fecha_nacimiento = '17/05/2000' WHERE id_cedula = '6158509';
-- empleado 1095835587 | SILVA CARDOZO DEISON ALEXANDER
UPDATE empleado SET fecha_expedicion = '11/11/2015', fecha_ingreso = '06/02/2024', fecha_nacimiento = '21/10/1997' WHERE id_cedula = '1095835587';
-- empleado 1098649865 | TORRES SANCHEZ YURI ANDREA
UPDATE empleado SET fecha_expedicion = '02/03/2006', fecha_ingreso = '06/02/2024', fecha_nacimiento = '21/02/1988' WHERE id_cedula = '1098649865';
-- empleado 1098200294 | CARREÑO LOZANO CARLOS FERNANDO
UPDATE empleado SET fecha_expedicion = '24/10/2008', fecha_ingreso = '08/02/2024', fecha_nacimiento = '17/10/1990' WHERE id_cedula = '1098200294';
-- empleado 1000046788 | AMOROCHO TAMI JOAQUIN
UPDATE empleado SET fecha_expedicion = '20/11/2018', fecha_ingreso = '08/02/2024', fecha_nacimiento = '04/11/2000' WHERE id_cedula = '1000046788';
-- empleado 1065234496 | GUTIERREZ MOLINA BRAYAN
UPDATE empleado SET fecha_expedicion = '12/06/2017', fecha_ingreso = '06/02/2024', fecha_nacimiento = '01/06/1999' WHERE id_cedula = '1065234496';
-- empleado 1042211348 | FLOREZ SALCEDO JOHN FREDY
UPDATE empleado SET fecha_expedicion = '02/03/2007', fecha_ingreso = '13/02/2024', fecha_nacimiento = '21/12/1987' WHERE id_cedula = '1042211348';
-- empleado 1098762009 | OLAVE MANTILLA RAUL FERNEY
UPDATE empleado SET fecha_expedicion = '07/11/2012', fecha_ingreso = '13/02/2024', fecha_nacimiento = '18/09/1994' WHERE id_cedula = '1098762009';
-- empleado 1003167676 | ROMERO GUERRERO ANDRES CAMILO
UPDATE empleado SET fecha_expedicion = '22/08/2018', fecha_ingreso = '13/02/2024', fecha_nacimiento = '12/11/1998' WHERE id_cedula = '1003167676';
-- empleado 1003334809 | GARCIA BELEÑO JADER
UPDATE empleado SET fecha_expedicion = '02/05/2013', fecha_ingreso = '13/02/2024', fecha_nacimiento = '29/04/1995' WHERE id_cedula = '1003334809';
-- empleado 6990572 | RAMIREZ GONZALES ANTONIO RAFAEL
UPDATE empleado SET fecha_expedicion = '06/06/2022', fecha_ingreso = '13/02/2024', fecha_nacimiento = '15/12/1995' WHERE id_cedula = '6990572';
-- empleado 1005329357 | AGUILERA MONOGA CAMILA ANDREA
UPDATE empleado SET fecha_expedicion = '03/01/2020', fecha_ingreso = '20/02/2024', fecha_nacimiento = '24/11/2001' WHERE id_cedula = '1005329357';
-- empleado 1010049419 | CALDERON GELVES DELBYS
UPDATE empleado SET fecha_expedicion = '14/06/2016', fecha_ingreso = '02/12/2024', fecha_nacimiento = '18/11/1997' WHERE id_cedula = '1010049419';
-- empleado 1005539650 | PAEZ ADARME DIEGO ANDRES
UPDATE empleado SET fecha_expedicion = '22/03/2019', fecha_ingreso = '15/02/2024', fecha_nacimiento = '21/03/2001' WHERE id_cedula = '1005539650';
-- empleado 1005371446 | HERRERA MANRIQUE JOSEPT SMITH
UPDATE empleado SET fecha_expedicion = '22/11/2021', fecha_ingreso = '15/02/2024', fecha_nacimiento = '28/10/2003' WHERE id_cedula = '1005371446';
-- empleado 1005297906 | VILLAMIZAR RAMIREZ JAHIR DANIEL
UPDATE empleado SET fecha_expedicion = '07/03/2019', fecha_ingreso = '15/02/2024', fecha_nacimiento = '15/02/2001' WHERE id_cedula = '1005297906';
-- empleado 1124055390 | CELEDON AVILA ELIAS RAFAEL
UPDATE empleado SET fecha_expedicion = '18/07/2013', fecha_ingreso = '26/02/2024', fecha_nacimiento = '12/06/1995' WHERE id_cedula = '1124055390';
-- empleado 1098609372 | SANTOS CORREA JUAN DAVID
UPDATE empleado SET fecha_expedicion = '18/02/2022', fecha_ingreso = '26/02/2024', fecha_nacimiento = '14/02/2007' WHERE id_cedula = '1098609372';
-- empleado 1098779918 | HERNANDEZ VARGAS JUAN PABLO
UPDATE empleado SET fecha_expedicion = '24/01/2014', fecha_ingreso = '26/02/2024', fecha_nacimiento = '09/01/1996' WHERE id_cedula = '1098779918';
-- empleado 1098604466 | MUÑOZ SOLANO DAVID FERNANDO
UPDATE empleado SET fecha_expedicion = '07/01/2022', fecha_ingreso = '26/02/2024', fecha_nacimiento = '24/11/2003' WHERE id_cedula = '1098604466';
-- empleado 1234340747 | JAIMES ALVAREZ GUSTAVO ADOLFO
UPDATE empleado SET fecha_expedicion = '04/09/2017', fecha_ingreso = '26/02/2024', fecha_nacimiento = '23/08/1999' WHERE id_cedula = '1234340747';
-- empleado 1098750363 | TORRES FLOREZ FABIAN EDUARDO
UPDATE empleado SET fecha_expedicion = '20/02/2012', fecha_ingreso = '18/03/2024', fecha_nacimiento = '16/12/1993' WHERE id_cedula = '1098750363';
-- empleado 1097095153 | OVIEDO PABON JUAN DAVID
UPDATE empleado SET fecha_expedicion = '22/11/2023', fecha_ingreso = '06/03/2024', fecha_nacimiento = '15/09/2005' WHERE id_cedula = '1097095153';
-- empleado 1005340217 | SARABIA GRIMALDOS ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '06/09/2018', fecha_ingreso = '06/03/2024', fecha_nacimiento = '18/08/2000' WHERE id_cedula = '1005340217';
-- empleado 1065232462 | CHAPARRO AREVALO LUIS ABEL
UPDATE empleado SET fecha_expedicion = '22/03/2022', fecha_ingreso = '06/03/2024', fecha_nacimiento = '21/03/2004' WHERE id_cedula = '1065232462';
-- empleado 1005152959 | CALDERON SANCHEZ DANIEL JAVIER
UPDATE empleado SET fecha_expedicion = '11/03/2021', fecha_ingreso = '06/03/2024', fecha_nacimiento = '06/03/2003' WHERE id_cedula = '1005152959';
-- empleado 1004823758 | DURAN LEON JHON JEIBER
UPDATE empleado SET fecha_expedicion = '23/05/2019', fecha_ingreso = '06/03/2024', fecha_nacimiento = '10/11/2000' WHERE id_cedula = '1004823758';
-- empleado 1067036723 | RAMOS OROZCO RONAL DAVID
UPDATE empleado SET fecha_expedicion = '23/07/2015', fecha_ingreso = '04/03/2024', fecha_nacimiento = '27/12/1996' WHERE id_cedula = '1067036723';
-- empleado 1193143191 | RAMIREZ ZAFRA DAVINSON
UPDATE empleado SET fecha_expedicion = '09/01/2019', fecha_ingreso = '06/03/2024', fecha_nacimiento = '20/11/2000' WHERE id_cedula = '1193143191';
-- empleado 1095936020 | PORRAS DUEÑEZ DEINER ALEXANDER
UPDATE empleado SET fecha_expedicion = '12/04/2012', fecha_ingreso = '20/03/2024', fecha_nacimiento = '29/01/1994' WHERE id_cedula = '1095936020';
-- empleado 6833704 | HERRERA FLORES STARLYN JOSE
UPDATE empleado SET fecha_expedicion = '26/04/2022', fecha_ingreso = '20/03/2024', fecha_nacimiento = '18/09/1998' WHERE id_cedula = '6833704';
-- empleado 1005162790 | REYES NARANJO MICHAEL STIWEN
UPDATE empleado SET fecha_expedicion = '23/06/2017', fecha_ingreso = '20/03/2024', fecha_nacimiento = '05/02/1999' WHERE id_cedula = '1005162790';
-- empleado 1007401213 | ACERO AGUDELO LESSLLY TATIANA
UPDATE empleado SET fecha_expedicion = '13/04/2018', fecha_ingreso = '20/03/2024', fecha_nacimiento = '02/04/2000' WHERE id_cedula = '1007401213';
-- empleado 1192743216 | PRADILLA TAPIAS JUAN CAMILO
UPDATE empleado SET fecha_expedicion = '02/12/2020', fecha_ingreso = '20/03/2024', fecha_nacimiento = '27/11/2002' WHERE id_cedula = '1192743216';
-- empleado 1097609443 | ROJAS DIAZ JOSE DE JESUS
UPDATE empleado SET fecha_expedicion = '05/12/2007', fecha_ingreso = '20/03/2024', fecha_nacimiento = '23/09/1989' WHERE id_cedula = '1097609443';
-- empleado 1003091389 | GARCIA DIAZ CAMILO ANDRES
UPDATE empleado SET fecha_expedicion = '12/03/2021', fecha_ingreso = '20/03/2024', fecha_nacimiento = '18/01/2003' WHERE id_cedula = '1003091389';
-- empleado 1095957238 | PAEZ SMITH MARCELA FERNANDA
UPDATE empleado SET fecha_expedicion = '02/10/2017', fecha_ingreso = '12/03/2024', fecha_nacimiento = '19/08/1999' WHERE id_cedula = '1095957238';
-- empleado 1096245140 | ROJAS CUEVAS JAIME
UPDATE empleado SET fecha_expedicion = '17/11/2015', fecha_ingreso = '10/04/2024', fecha_nacimiento = '04/03/1996' WHERE id_cedula = '1096245140';
-- empleado 1098676271 | AGUILLON PABON ELKIN
UPDATE empleado SET fecha_expedicion = '27/09/2007', fecha_ingreso = '10/04/2024', fecha_nacimiento = '24/09/1989' WHERE id_cedula = '1098676271';
-- empleado 5496677 | BELISARIO CARVAJAL ELIESER JOSE
UPDATE empleado SET fecha_expedicion = '25/10/2022', fecha_ingreso = '10/04/2024', fecha_nacimiento = '14/12/2002' WHERE id_cedula = '5496677';
-- empleado 1014182306 | HERNANDEZ SAAVEDRA ANDRES
UPDATE empleado SET fecha_expedicion = '21/01/2005', fecha_ingreso = '08/04/2024', fecha_nacimiento = '14/01/1987' WHERE id_cedula = '1014182306';
-- empleado 1098476083 | VILLABONA LOZANO MAGDA SOFIA
UPDATE empleado SET fecha_expedicion = '24/01/2024', fecha_ingreso = '22/04/2024', fecha_nacimiento = '25/12/2005' WHERE id_cedula = '1098476083';
-- empleado 1005236832 | ALBARRACIN CABALLERO JOSE SEBASTIAN
UPDATE empleado SET fecha_expedicion = '30/01/2020', fecha_ingreso = '22/04/2024', fecha_nacimiento = '27/01/2002' WHERE id_cedula = '1005236832';
-- empleado 1096246897 | MOGOLLON TOLOZA JESUS DAVID
UPDATE empleado SET fecha_expedicion = '16/03/2016', fecha_ingreso = '22/04/2024', fecha_nacimiento = '27/01/1998' WHERE id_cedula = '1096246897';
-- empleado 1067036744 | MARMOL CAPATAZ JOSE MIGUEL
UPDATE empleado SET fecha_expedicion = '25/11/2015', fecha_ingreso = '22/04/2024', fecha_nacimiento = '27/08/1997' WHERE id_cedula = '1067036744';
-- empleado 1098071560 | GOMEZ MONCADA DANIEL ENRIQUE
UPDATE empleado SET fecha_expedicion = '19/10/2023', fecha_ingreso = '02/05/2024', fecha_nacimiento = '18/10/2005' WHERE id_cedula = '1098071560';
-- empleado 1098648284 | MORALES TORRECILLA JOHAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '15/01/2024', fecha_ingreso = '02/05/2024', fecha_nacimiento = '13/01/2006' WHERE id_cedula = '1098648284';
-- empleado 1095949619 | ACEVEDO SILVA SANDRA MILENA
UPDATE empleado SET fecha_expedicion = '01/10/2015', fecha_ingreso = '02/05/2024', fecha_nacimiento = '12/09/1997' WHERE id_cedula = '1095949619';
-- empleado 4883960 | MENDEZ ORTIZ GLEIGER ABRAHAM
UPDATE empleado SET fecha_expedicion = '04/08/2023', fecha_ingreso = '02/05/2024', fecha_nacimiento = '18/10/1989' WHERE id_cedula = '4883960';
-- empleado 63325400 | REYES SALAZAR LINA ROSALBA
UPDATE empleado SET fecha_expedicion = '27/09/1984', fecha_ingreso = '22/04/2024', fecha_nacimiento = '21/07/1966' WHERE id_cedula = '63325400';
-- empleado 1003335012 | MARMOL OLIVEROS DANIS MANUEL
UPDATE empleado SET fecha_expedicion = '15/07/1992', fecha_ingreso = '08/05/2024', fecha_nacimiento = '15/07/1992' WHERE id_cedula = '1003335012';
-- empleado 1098767064 | MARQUEZ RODRIGUEZ SILVIA JULIANA
UPDATE empleado SET fecha_expedicion = '22/03/2013', fecha_ingreso = '08/05/2024', fecha_nacimiento = '23/02/1995' WHERE id_cedula = '1098767064';
-- empleado 1098221752 | BUITRAGO MENDEZ ADRIANA ROCIO
UPDATE empleado SET fecha_expedicion = '14/06/2017', fecha_ingreso = '11/06/2024', fecha_nacimiento = '27/05/1999' WHERE id_cedula = '1098221752';
-- empleado 37749526 | MENDEZ SERRANO ZAIRA YOLIMA
UPDATE empleado SET fecha_expedicion = '24/04/1998', fecha_ingreso = '11/06/2024', fecha_nacimiento = '08/04/1980' WHERE id_cedula = '37749526';
-- empleado 1007900909 | MEDINA MARTINEZ MICHAEL ANDRES
UPDATE empleado SET fecha_expedicion = '24/01/2019', fecha_ingreso = '11/06/2024', fecha_nacimiento = '18/01/2001' WHERE id_cedula = '1007900909';
-- empleado 1127913059 | AVILA NAVARRO LUIS ALFONSO
UPDATE empleado SET fecha_expedicion = '10/09/2009', fecha_ingreso = '11/06/2024', fecha_nacimiento = '08/08/1991' WHERE id_cedula = '1127913059';
-- empleado 1065881437 | JACOME GOMEZ ANTONY
UPDATE empleado SET fecha_expedicion = '29/02/2008', fecha_ingreso = '11/06/2024', fecha_nacimiento = '13/01/1990' WHERE id_cedula = '1065881437';
-- empleado 10077357486 | DIAZ FRANCO DIEGO ANDRES
UPDATE empleado SET fecha_expedicion = '08/11/2018', fecha_ingreso = '28/05/2024', fecha_nacimiento = '24/10/2000' WHERE id_cedula = '10077357486';
-- empleado 1098765011 | RONCALLO RADA JOSE LUIS
UPDATE empleado SET fecha_expedicion = '08/02/2013', fecha_ingreso = '19/06/2024', fecha_nacimiento = '01/02/1995' WHERE id_cedula = '1098765011';
-- empleado 1064838167 | MEJIA QUINTERO JHONATAN
UPDATE empleado SET fecha_expedicion = '16/05/2023', fecha_ingreso = '19/06/2024', fecha_nacimiento = '19/04/2005' WHERE id_cedula = '1064838167';
-- empleado 1098819686 | BONILLA CORREA GERSON DAVID
UPDATE empleado SET fecha_expedicion = '02/06/2017', fecha_ingreso = '19/06/2024', fecha_nacimiento = '29/05/1999' WHERE id_cedula = '1098819686';
-- empleado 1065872598 | PEREZ DE LA ROSA JOHAN ANDRES
UPDATE empleado SET fecha_expedicion = '02/05/2024', fecha_ingreso = '19/06/2024', fecha_nacimiento = '08/04/2006' WHERE id_cedula = '1065872598';
-- empleado 1232891574 | AREVALO AMAYA JUNNIOR ELIECER
UPDATE empleado SET fecha_expedicion = '30/06/2017', fecha_ingreso = '19/06/2024', fecha_nacimiento = '14/04/1999' WHERE id_cedula = '1232891574';
-- empleado 1065244507 | GELVEZ SANCHEZ JHOAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '12/08/2014', fecha_ingreso = '19/06/2024', fecha_nacimiento = '02/08/1996' WHERE id_cedula = '1065244507';
-- empleado 1098733100 | ERAZO OLIVEROS DARIO JESUS
UPDATE empleado SET fecha_expedicion = '25/04/2024', fecha_ingreso = '24/06/2024', fecha_nacimiento = '29/03/2006' WHERE id_cedula = '1098733100';
-- empleado 1046426818 | BENITEZ VIDES YOSNEIDER
UPDATE empleado SET fecha_expedicion = '02/02/2022', fecha_ingreso = '24/06/2024', fecha_nacimiento = '29/08/2003' WHERE id_cedula = '1046426818';
-- empleado 1095832883 | CASTELLANOS OLIVEROS NEIDER IVAN
UPDATE empleado SET fecha_expedicion = '22/04/2015', fecha_ingreso = '20/05/2024', fecha_nacimiento = '19/04/1997' WHERE id_cedula = '1095832883';
-- empleado 1005156696 | OREJARENA BARAJAS BRAYAN JULIAN
UPDATE empleado SET fecha_expedicion = '08/07/2020', fecha_ingreso = '26/06/2024', fecha_nacimiento = '13/06/2002' WHERE id_cedula = '1005156696';
-- empleado 1005108235 | GOMEZ HERNANDEZ EDINSON SNEYDER
UPDATE empleado SET fecha_expedicion = '14/03/2019', fecha_ingreso = '26/06/2024', fecha_nacimiento = '02/03/2001' WHERE id_cedula = '1005108235';
-- empleado 1007735388 | MARTINEZ RAMIREZ MAICOL ESTIVEN
UPDATE empleado SET fecha_expedicion = '10/07/2018', fecha_ingreso = '04/07/2024', fecha_nacimiento = '02/06/2000' WHERE id_cedula = '1007735388';
-- empleado 1004823812 | PABON SERRANO DIOMEDES
UPDATE empleado SET fecha_expedicion = '12/07/2016', fecha_ingreso = '04/07/2024', fecha_nacimiento = '08/07/1998' WHERE id_cedula = '1004823812';
-- empleado 1098824148 | ORTIZ RANGEL DENNIS LIZETH
UPDATE empleado SET fecha_expedicion = '03/11/2017', fecha_ingreso = '04/07/2024', fecha_nacimiento = '02/11/1999' WHERE id_cedula = '1098824148';
-- empleado 1102722473 | RUEDA DIAZ JORGE CLETO
UPDATE empleado SET fecha_expedicion = '26/06/2012', fecha_ingreso = '04/07/2024', fecha_nacimiento = '03/06/1994' WHERE id_cedula = '1102722473';
-- empleado 1095298628 | ROJAS SANCHEZ KEBIN YOBANY
UPDATE empleado SET fecha_expedicion = '19/11/2021', fecha_ingreso = '24/07/2024', fecha_nacimiento = '16/11/2003' WHERE id_cedula = '1095298628';
-- empleado 1005153018 | LIZARAZO SANCHEZ SEBASTIAN ANDRES
UPDATE empleado SET fecha_expedicion = '06/05/2021', fecha_ingreso = '24/07/2024', fecha_nacimiento = '23/04/2003' WHERE id_cedula = '1005153018';
-- empleado 91185357 | TORRES RUEDA ROBINSON
UPDATE empleado SET fecha_expedicion = '06/06/2002', fecha_ingreso = '24/07/2024', fecha_nacimiento = '17/03/1984' WHERE id_cedula = '91185357';
-- empleado 1095934331 | AFANADOR MENDEZ OSCAR FERNANDO
UPDATE empleado SET fecha_expedicion = '15/11/2011', fecha_ingreso = '24/07/2024', fecha_nacimiento = '28/10/1993' WHERE id_cedula = '1095934331';
-- empleado 1098742348 | MORALES QUIÑONES JEIVER ANDRES
UPDATE empleado SET fecha_expedicion = '25/07/2024', fecha_ingreso = '18/07/2024', fecha_nacimiento = '15/08/1993' WHERE id_cedula = '1098742348';
-- empleado 39580914 | CAMAÑO RODRIGUEZ LEYDY MARCEL
UPDATE empleado SET fecha_expedicion = '06/12/2000', fecha_ingreso = '25/07/2024', fecha_nacimiento = '10/09/1982' WHERE id_cedula = '39580914';
-- empleado 1118861488 | SANCHEZ RODRIGUEZ SONIA SANDRITH
UPDATE empleado SET fecha_expedicion = '12/09/2014', fecha_ingreso = '29/07/2024', fecha_nacimiento = '19/08/1996' WHERE id_cedula = '1118861488';
-- empleado 1095914235 | ARRIETA MORENO JUAN DAVID
UPDATE empleado SET fecha_expedicion = '23/07/2024', fecha_ingreso = '05/08/2024', fecha_nacimiento = '18/07/2006' WHERE id_cedula = '1095914235';
-- empleado 1232892509 | PICO ROMAN DANIEL FELIPE
UPDATE empleado SET fecha_expedicion = '27/11/2017', fecha_ingreso = '05/08/2024', fecha_nacimiento = '24/11/1999' WHERE id_cedula = '1232892509';
-- empleado 1007545416 | LAGUNA MEJIA JOSUE DAVID
UPDATE empleado SET fecha_expedicion = '16/05/2019', fecha_ingreso = '05/08/2024', fecha_nacimiento = '10/05/2001' WHERE id_cedula = '1007545416';
-- empleado 13870192 | RAMIREZ GALVIS JULIAN ALBERTO
UPDATE empleado SET fecha_expedicion = '12/07/1999', fecha_ingreso = '05/08/2024', fecha_nacimiento = '04/05/1981' WHERE id_cedula = '13870192';
-- empleado 1005221017 | SIERRA DE LA CRUZ LEONEL ENRIQUE
UPDATE empleado SET fecha_expedicion = '04/06/2021', fecha_ingreso = '05/08/2024', fecha_nacimiento = '02/06/2003' WHERE id_cedula = '1005221017';
-- empleado 1002101466 | VASQUEZ GRANADO MILTON ANDRES
UPDATE empleado SET fecha_expedicion = '13/12/2001', fecha_ingreso = '15/08/2024', fecha_nacimiento = '13/12/2001' WHERE id_cedula = '1002101466';
-- empleado 4932955 | LEAL MARCHAN JESUS MIGUEL
UPDATE empleado SET fecha_expedicion = '08/03/2022', fecha_ingreso = '15/08/2024', fecha_nacimiento = '05/05/1991' WHERE id_cedula = '4932955';
-- empleado 1005161625 | HERNANDEZ CAICEDO LUIS HORACIO
UPDATE empleado SET fecha_expedicion = '04/12/2019', fecha_ingreso = '15/08/2024', fecha_nacimiento = '09/10/2001' WHERE id_cedula = '1005161625';
-- empleado 1056908061 | SEGURA BARRERA MARIA FILOMENA
UPDATE empleado SET fecha_expedicion = '15/04/2005', fecha_ingreso = '20/08/2024', fecha_nacimiento = '23/02/1987' WHERE id_cedula = '1056908061';
-- empleado 1095298739 | CACERES ARENAS CAMILO ANDRES
UPDATE empleado SET fecha_expedicion = '21/02/2022', fecha_ingreso = '20/08/2024', fecha_nacimiento = '14/02/2004' WHERE id_cedula = '1095298739';
-- empleado 1098763171 | SUAREZ QUIÑONES JEFFERSON ALEXANDER
UPDATE empleado SET fecha_expedicion = '04/12/2012', fecha_ingreso = '20/08/2024', fecha_nacimiento = '03/12/1994' WHERE id_cedula = '1098763171';
-- empleado 1098785188 | CORREA FIGUEROA JOSE ENRIQUE
UPDATE empleado SET fecha_expedicion = '26/06/2014', fecha_ingreso = '20/08/2024', fecha_nacimiento = '23/04/1996' WHERE id_cedula = '1098785188';
-- empleado 37721274 | CARVAJAL RODRIGUEZ MARTHA ROCIO
UPDATE empleado SET fecha_expedicion = '21/12/1996', fecha_ingreso = '20/08/2024', fecha_nacimiento = '26/09/1978' WHERE id_cedula = '37721274';
-- empleado 1006426401 | CARDENAS GARCIA ARZEY MANUEL
UPDATE empleado SET fecha_expedicion = '16/12/2019', fecha_ingreso = '13/08/2024', fecha_nacimiento = '03/12/2001' WHERE id_cedula = '1006426401';
-- empleado 1005541785 | SANTOS JAIMES JORGE
UPDATE empleado SET fecha_expedicion = '22/01/2021', fecha_ingreso = '13/08/2024', fecha_nacimiento = '17/12/2002' WHERE id_cedula = '1005541785';
-- empleado 1094581619 | CLAVIJO TORRADO HEIDER JOHAN
UPDATE empleado SET fecha_expedicion = '01/11/2016', fecha_ingreso = '13/08/2024', fecha_nacimiento = '20/10/1998' WHERE id_cedula = '1094581619';
-- empleado 1095936888 | BECERRA RODRIGUEZ JOHAN ALEJANDRO
UPDATE empleado SET fecha_expedicion = '10/07/2012', fecha_ingreso = '13/08/2024', fecha_nacimiento = '02/07/1994' WHERE id_cedula = '1095936888';
-- empleado 1091132817 | PABON SERRANO ANDERSON
UPDATE empleado SET fecha_expedicion = '05/01/2021', fecha_ingreso = '19/06/2025', fecha_nacimiento = '03/01/2002' WHERE id_cedula = '1091132817';
-- empleado 1101211012 | JAIMES JAIMES JHON ALBEIRO
UPDATE empleado SET fecha_expedicion = '13/12/2016', fecha_ingreso = '13/08/2024', fecha_nacimiento = '23/10/1998' WHERE id_cedula = '1101211012';
-- empleado 1097093432 | GOMEZ MARTINEZ LUIS MARIO
UPDATE empleado SET fecha_expedicion = '27/09/2022', fecha_ingreso = '13/08/2024', fecha_nacimiento = '24/09/2004' WHERE id_cedula = '1097093432';
-- empleado 1097911604 | FLOREZ ACEROS JUAN STEVAN
UPDATE empleado SET fecha_expedicion = '31/07/2024', fecha_ingreso = '20/03/2024', fecha_nacimiento = '29/07/2006' WHERE id_cedula = '1097911604';
-- empleado 1102367641 | GOMEZ BLANCO NANCY PATRICIA
UPDATE empleado SET fecha_expedicion = '23/10/2009', fecha_ingreso = '13/08/2024', fecha_nacimiento = '30/11/1990' WHERE id_cedula = '1102367641';
-- empleado 13542263 | SERRANO ARDILA DIEGO FERNANDO
UPDATE empleado SET fecha_expedicion = '01/10/1996', fecha_ingreso = '09/09/2024', fecha_nacimiento = '06/06/1978' WHERE id_cedula = '13542263';
-- empleado 1095828769 | MEJIA ACACIO SUGAR ANTONIO
UPDATE empleado SET fecha_expedicion = '04/06/2014', fecha_ingreso = '04/09/2024', fecha_nacimiento = '10/05/1996' WHERE id_cedula = '1095828769';
-- empleado 80424220 | HERNANDEZ URZOLA ROBERTO CARLOS
UPDATE empleado SET fecha_expedicion = '07/09/1990', fecha_ingreso = '10/09/2024', fecha_nacimiento = '22/02/1972' WHERE id_cedula = '80424220';
-- empleado 1097096339 | SANCHEZ TORRES SANTIAGO
UPDATE empleado SET fecha_expedicion = '13/08/2024', fecha_ingreso = '10/10/2024', fecha_nacimiento = '10/06/2006' WHERE id_cedula = '1097096339';
-- empleado 1097494058 | BASTO MORENO BRAYAN STEVEN
UPDATE empleado SET fecha_expedicion = '15/08/2024', fecha_ingreso = '10/10/2024', fecha_nacimiento = '08/08/2006' WHERE id_cedula = '1097494058';
-- empleado 1005321068 | CALVO PEREZ ANDRES LEONARDO
UPDATE empleado SET fecha_expedicion = '02/02/2017', fecha_ingreso = '10/10/2024', fecha_nacimiento = '18/05/1998' WHERE id_cedula = '1005321068';
-- empleado 1101753855 | MOGOLLON SUAREZ JHOSMAN JULIAN
UPDATE empleado SET fecha_expedicion = '22/10/2018', fecha_ingreso = '10/10/2024', fecha_nacimiento = '07/10/2000' WHERE id_cedula = '1101753855';
-- empleado 1234339324 | JAIMES QUINTERO MAICOL DAVIAN
UPDATE empleado SET fecha_expedicion = '08/04/1998', fecha_ingreso = '07/10/2024', fecha_nacimiento = '08/04/1998' WHERE id_cedula = '1234339324';
-- empleado 63531676 | MORENO JIMENEZ YUSELLY
UPDATE empleado SET fecha_expedicion = '11/09/2000', fecha_ingreso = '07/10/2024', fecha_nacimiento = '08/11/1981' WHERE id_cedula = '63531676';
-- empleado 4610716 | CALDERON MANTILLA DARWIN JHOAN
UPDATE empleado SET fecha_expedicion = '11/03/2022', fecha_ingreso = '01/10/2024', fecha_nacimiento = '28/11/2003' WHERE id_cedula = '4610716';
-- empleado 1095915984 | BAEZ GOMEZ JEFFERSON ALEXANDER
UPDATE empleado SET fecha_expedicion = '23/01/2007', fecha_ingreso = '01/10/2024', fecha_nacimiento = '03/09/1988' WHERE id_cedula = '1095915984';
-- empleado 1005654916 | GUERRERO CACERES JUAN JOSE
UPDATE empleado SET fecha_expedicion = '23/09/2013', fecha_ingreso = '25/09/2024', fecha_nacimiento = '23/08/1995' WHERE id_cedula = '1005654916';
-- empleado 1397200 | ALVAREZ MARCHAN ELIBER YANNIEL
UPDATE empleado SET fecha_expedicion = '08/06/2023', fecha_ingreso = '25/09/2024', fecha_nacimiento = '01/09/2003' WHERE id_cedula = '1397200';
-- empleado 1401664 | RODRIGUEZ MARCHAN ANGEL DAVID
UPDATE empleado SET fecha_expedicion = '23/06/2022', fecha_ingreso = '23/09/2024', fecha_nacimiento = '12/04/2002' WHERE id_cedula = '1401664';
-- empleado 1005183907 | GOMEZ SUAREZ BRAYAN FELIPE
UPDATE empleado SET fecha_expedicion = '11/12/2020', fecha_ingreso = '15/12/2025', fecha_nacimiento = '02/12/2002' WHERE id_cedula = '1005183907';
-- empleado 1005108327 | HERRERA GALVIS JUAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '05/07/2019', fecha_ingreso = '24/07/2025', fecha_nacimiento = '30/06/2001' WHERE id_cedula = '1005108327';
-- empleado 1099736437 | VASQUEZ CASTAÑEDA CARLOS DAVID
UPDATE empleado SET fecha_expedicion = '19/05/2023', fecha_ingreso = '28/10/2024', fecha_nacimiento = '27/04/2005' WHERE id_cedula = '1099736437';
-- empleado 1005106745 | LEON HERNANDEZ OSCAR ENRIQUE
UPDATE empleado SET fecha_expedicion = '14/07/2020', fecha_ingreso = '28/10/2024', fecha_nacimiento = '20/06/2002' WHERE id_cedula = '1005106745';
-- empleado 5005845 | MARQUEZ ZERPA YAMPIER JESUS
UPDATE empleado SET fecha_expedicion = '07/07/2022', fecha_ingreso = '28/10/2024', fecha_nacimiento = '30/03/1997' WHERE id_cedula = '5005845';
-- empleado 7563328 | ALVAREZ PINEDA YOALVIS YUNIOR
UPDATE empleado SET fecha_expedicion = '13/06/2023', fecha_ingreso = '28/10/2024', fecha_nacimiento = '19/10/1997' WHERE id_cedula = '7563328';
-- empleado 1193239803 | VASQUEZ GRANADOS YUBER JOSE
UPDATE empleado SET fecha_expedicion = '11/02/2021', fecha_ingreso = '10/10/2024', fecha_nacimiento = '05/12/2002' WHERE id_cedula = '1193239803';
-- empleado 1005154159 | HERRERA PINTO LUIS ANTONIO
UPDATE empleado SET fecha_expedicion = '22/11/2024', fecha_ingreso = '20/11/2024', fecha_nacimiento = '25/10/1998' WHERE id_cedula = '1005154159';
-- empleado 1005339808 | DURAN PINTO BRAYAN STIVEN
UPDATE empleado SET fecha_expedicion = '21/03/2018', fecha_ingreso = '20/11/2024', fecha_nacimiento = '01/03/2000' WHERE id_cedula = '1005339808';
-- empleado 1003248197 | TORO VACCA YHOJAN ALEJANDRO
UPDATE empleado SET fecha_expedicion = '09/06/2020', fecha_ingreso = '14/11/2024', fecha_nacimiento = '16/04/2002' WHERE id_cedula = '1003248197';
-- empleado 1003204077 | NIÑO GOMEZ CESAR LUIS
UPDATE empleado SET fecha_expedicion = '29/07/2020', fecha_ingreso = '14/11/2024', fecha_nacimiento = '04/03/2002' WHERE id_cedula = '1003204077';
-- empleado 1002580637 | PLAZAS ROJAS MICHAEL DAVID
UPDATE empleado SET fecha_expedicion = '28/09/2020', fecha_ingreso = '14/11/2024', fecha_nacimiento = '14/09/2002' WHERE id_cedula = '1002580637';
-- empleado 1005539482 | PEÑA ARENAS PEDRO ARMANDO
UPDATE empleado SET fecha_expedicion = '22/05/2019', fecha_ingreso = '14/11/2024', fecha_nacimiento = '16/02/2001' WHERE id_cedula = '1005539482';
-- empleado 1098698435 | RAMIREZ VEGA FABIAN STWEN
UPDATE empleado SET fecha_expedicion = '20/01/2009', fecha_ingreso = '14/11/2024', fecha_nacimiento = '16/01/1991' WHERE id_cedula = '1098698435';
-- empleado 1095840246 | ARIZA MANTILLA JEISON DAVID
UPDATE empleado SET fecha_expedicion = '28/02/2017', fecha_ingreso = '14/11/2024', fecha_nacimiento = '27/02/1999' WHERE id_cedula = '1095840246';
-- empleado 1005331332 | ACOSTA CARREÑO JAIDER JOHAN
UPDATE empleado SET fecha_expedicion = '27/04/2021', fecha_ingreso = '26/11/2024', fecha_nacimiento = '01/04/2003' WHERE id_cedula = '1005331332';
-- empleado 1099364041 | ECHEVERRIA FLOREZ EDWAR STIVEN
UPDATE empleado SET fecha_expedicion = '10/05/2023', fecha_ingreso = '26/11/2024', fecha_nacimiento = '06/12/2004' WHERE id_cedula = '1099364041';
-- empleado 1097911574 | NIÑO ORTEGA JOHAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '03/07/2024', fecha_ingreso = '12/12/2024', fecha_nacimiento = '28/06/2006' WHERE id_cedula = '1097911574';
-- empleado 1098071680 | BADILLO LIZARAZO JOHAN SNEYDER
UPDATE empleado SET fecha_expedicion = '19/12/2023', fecha_ingreso = '12/12/2024', fecha_nacimiento = '16/12/2005' WHERE id_cedula = '1098071680';
-- empleado 1005776694 | RUIZ VELASQUEZ HAWER ANDRES
UPDATE empleado SET fecha_expedicion = '26/08/2021', fecha_ingreso = '12/12/2024', fecha_nacimiento = '24/08/2003' WHERE id_cedula = '1005776694';
-- empleado 1102384824 | OCHOA URIBE KAREN DAYANA
UPDATE empleado SET fecha_expedicion = '05/11/2015', fecha_ingreso = '10/12/2024', fecha_nacimiento = '30/10/1997' WHERE id_cedula = '1102384824';
-- empleado 1005540770 | KAISER ABELLO JHOAN NICOLAS
UPDATE empleado SET fecha_expedicion = '04/08/2020', fecha_ingreso = '10/12/2024', fecha_nacimiento = '15/03/2002' WHERE id_cedula = '1005540770';
-- empleado 1007080130 | ARCHILA ORTEGA DIEGO ALEJANDRO
UPDATE empleado SET fecha_expedicion = '11/03/2019', fecha_ingreso = '10/12/2024', fecha_nacimiento = '10/03/2001' WHERE id_cedula = '1007080130';
-- empleado 1102383462 | OLARTE QUINTERO MAICOL DAVID
UPDATE empleado SET fecha_expedicion = '11/06/2015', fecha_ingreso = '10/12/2024', fecha_nacimiento = '09/06/1997' WHERE id_cedula = '1102383462';
-- empleado 1097608286 | SILVA ALDANA VICTOR ALFONSO
UPDATE empleado SET fecha_expedicion = '19/03/2008', fecha_ingreso = '10/12/2024', fecha_nacimiento = '02/10/1985' WHERE id_cedula = '1097608286';
-- empleado 1098766167 | DELGADO GUARIN MIGUEL ANGEL
UPDATE empleado SET fecha_expedicion = '04/03/2013', fecha_ingreso = '16/12/2024', fecha_nacimiento = '02/03/1995' WHERE id_cedula = '1098766167';
-- empleado 1098642201 | GOMEZ BARRERA DANIEL AUGUSTO
UPDATE empleado SET fecha_expedicion = '22/09/2005', fecha_ingreso = '28/12/2024', fecha_nacimiento = '21/09/1987' WHERE id_cedula = '1098642201';
-- empleado 1098721083 | RODRIGUEZ HERNANDEZ ANDRES MAURICIO
UPDATE empleado SET fecha_expedicion = '04/05/2010', fecha_ingreso = '28/12/2024', fecha_nacimiento = '27/02/1992' WHERE id_cedula = '1098721083';
-- empleado 91538812 | RIOS MEDINA IVAN JOSEPH
UPDATE empleado SET fecha_expedicion = '30/04/2003', fecha_ingreso = '28/12/2024', fecha_nacimiento = '24/04/1985' WHERE id_cedula = '91538812';
-- empleado 91542227 | ANAYA LANDAZABAL SERGIO ANDRES
UPDATE empleado SET fecha_expedicion = '04/09/2003', fecha_ingreso = '19/12/2024', fecha_nacimiento = '24/06/1985' WHERE id_cedula = '91542227';
-- empleado 1004858769 | OBREGON SANCHEZ JOSE LUIS
UPDATE empleado SET fecha_expedicion = '23/12/2015', fecha_ingreso = '28/12/2024', fecha_nacimiento = '05/12/1997' WHERE id_cedula = '1004858769';
-- empleado 1099737472 | CADENA MARTINEZ PABLO ANDRES
UPDATE empleado SET fecha_expedicion = '04/12/2023', fecha_ingreso = '30/12/2024', fecha_nacimiento = '02/12/2005' WHERE id_cedula = '1099737472';
-- empleado 1098661407 | VERA MORA CINDY LEOMAR
UPDATE empleado SET fecha_expedicion = '14/11/2006', fecha_ingreso = '16/12/2024', fecha_nacimiento = '15/09/1988' WHERE id_cedula = '1098661407';
-- empleado 1098658021 | BLANCO MEJIA JOSUAM GABRIEL
UPDATE empleado SET fecha_expedicion = '17/09/2024', fecha_ingreso = '19/12/2024', fecha_nacimiento = '30/06/2006' WHERE id_cedula = '1098658021';
-- empleado 1093792999 | RIVERA CELIS DIEGO FABRICIO
UPDATE empleado SET fecha_expedicion = '30/11/2015', fecha_ingreso = '19/12/2024', fecha_nacimiento = '21/09/1997' WHERE id_cedula = '1093792999';
-- empleado 1002255861 | BOTERO JIMENEZ WILDER ANDRES
UPDATE empleado SET fecha_expedicion = '10/11/2015', fecha_ingreso = '03/01/2025', fecha_nacimiento = '01/06/1997' WHERE id_cedula = '1002255861';
-- empleado 1234340451 | CARVAJAL DIAZ EMERSON NICOLAS
UPDATE empleado SET fecha_expedicion = '07/06/2017', fecha_ingreso = '07/01/2025', fecha_nacimiento = '19/05/1999' WHERE id_cedula = '1234340451';
-- empleado 1003237624 | GONZALEZ AYALA CARLA ALEJANDRA
UPDATE empleado SET fecha_expedicion = '26/01/2021', fecha_ingreso = '07/01/2025', fecha_nacimiento = '10/01/2003' WHERE id_cedula = '1003237624';
-- empleado 1081836061 | MENDINUETA AROCA ANDREA CAROLINA
UPDATE empleado SET fecha_expedicion = '21/12/2017', fecha_ingreso = '07/01/2025', fecha_nacimiento = '19/12/1999' WHERE id_cedula = '1081836061';
-- empleado 1005156461 | CAÑAS MEJIA KAROLINA
UPDATE empleado SET fecha_expedicion = '16/06/2020', fecha_ingreso = '07/01/2025', fecha_nacimiento = '06/04/2002' WHERE id_cedula = '1005156461';
-- empleado 1096538880 | SAENZ AYALA JONATHAN STEVEN
UPDATE empleado SET fecha_expedicion = '02/08/2023', fecha_ingreso = '03/01/2025', fecha_nacimiento = '28/07/2005' WHERE id_cedula = '1096538880';
-- empleado 1003091352 | DE AVILA ARIAS JUNIOR ANDRES
UPDATE empleado SET fecha_expedicion = '11/02/2021', fecha_ingreso = '03/01/2025', fecha_nacimiento = '11/12/2002' WHERE id_cedula = '1003091352';
-- empleado 1002255860 | BOTERO JIMENEZ ESNEIDER
UPDATE empleado SET fecha_expedicion = '02/04/2014', fecha_ingreso = '03/01/2025', fecha_nacimiento = '21/04/1995' WHERE id_cedula = '1002255860';
-- empleado 1005199882 | ARENAS MARTINEZ JHOON DAREN
UPDATE empleado SET fecha_expedicion = '14/12/2018', fecha_ingreso = '07/01/2025', fecha_nacimiento = '11/12/2000' WHERE id_cedula = '1005199882';
-- empleado 1095841931 | MENDEZ GONZALEZ DAVID FERNANDO
UPDATE empleado SET fecha_expedicion = '25/08/2017', fecha_ingreso = '10/01/2025', fecha_nacimiento = '17/08/1999' WHERE id_cedula = '1095841931';
-- empleado 1102350072 | ANDRADES IBAÑEZ JOSE FRANCISCO
UPDATE empleado SET fecha_expedicion = '28/07/2004', fecha_ingreso = '01/08/2025', fecha_nacimiento = '15/04/1986' WHERE id_cedula = '1102350072';
-- empleado 1099322247 | AGUDELO MONTAÑEZ MARY LORENA
UPDATE empleado SET fecha_expedicion = '22/12/2023', fecha_ingreso = '01/10/2024', fecha_nacimiento = '29/11/2005' WHERE id_cedula = '1099322247';
-- empleado 1093592907 | JAIMES RAMIREZ FRANKLIN ALBERTO
UPDATE empleado SET fecha_expedicion = '25/10/2003', fecha_ingreso = '27/01/2025', fecha_nacimiento = '23/10/2005' WHERE id_cedula = '1093592907';
-- empleado 1090421328 | RAMIREZ RODRIGUEZ LUIS FABIAN
UPDATE empleado SET fecha_expedicion = '16/02/2023', fecha_ingreso = '27/01/2025', fecha_nacimiento = '02/02/2005' WHERE id_cedula = '1090421328';
-- empleado 1005107178 | DIAZ CARRILLO GELVER ARMANDO
UPDATE empleado SET fecha_expedicion = '23/06/2020', fecha_ingreso = '20/01/2025', fecha_nacimiento = '26/04/2002' WHERE id_cedula = '1005107178';
-- empleado 73583061 | SUAREZ FREDDY GIOVANNY
UPDATE empleado SET fecha_expedicion = '29/11/1995', fecha_ingreso = '20/01/2025', fecha_nacimiento = '22/12/1976' WHERE id_cedula = '73583061';
-- empleado 1005326525 | RINCON SANDOVAL DANIEL FELIPE
UPDATE empleado SET fecha_expedicion = '25/02/2020', fecha_ingreso = '23/01/2025', fecha_nacimiento = '17/01/2002' WHERE id_cedula = '1005326525';
-- empleado 1005260386 | MARTINEZ FIGUEROA JUAN CAMILO
UPDATE empleado SET fecha_expedicion = '09/04/2019', fecha_ingreso = '23/01/2025', fecha_nacimiento = '06/04/2001' WHERE id_cedula = '1005260386';
-- empleado 1098802594 | ARANDA RONDON ANGELICA MARIA
UPDATE empleado SET fecha_expedicion = '29/12/2015', fecha_ingreso = '20/01/2025', fecha_nacimiento = '28/12/1997' WHERE id_cedula = '1098802594';
-- empleado 1005181424 | ROSADO GARCIA DARWIN ALEXIS
UPDATE empleado SET fecha_expedicion = '22/04/2019', fecha_ingreso = '15/01/2025', fecha_nacimiento = '19/02/2001' WHERE id_cedula = '1005181424';
-- empleado 1095838844 | CARVAJAL FERNANDEZ MARTIN CAMILO
UPDATE empleado SET fecha_expedicion = '16/09/2016', fecha_ingreso = '03/02/2025', fecha_nacimiento = '21/08/1998' WHERE id_cedula = '1095838844';
-- empleado 1073321214 | MORENO MARTINEZ JESUS ANTONIO
UPDATE empleado SET fecha_expedicion = '10/05/2006', fecha_ingreso = '03/02/2025', fecha_nacimiento = '01/03/1988' WHERE id_cedula = '1073321214';
-- empleado 1001920490 | RIVERA GOMEZ CAMILO ANDRES
UPDATE empleado SET fecha_expedicion = '12/03/2021', fecha_ingreso = '11/02/2025', fecha_nacimiento = '28/02/2003' WHERE id_cedula = '1001920490';
-- empleado 1005340129 | OSORIO PARADA DIEGO ANDRES
UPDATE empleado SET fecha_expedicion = '21/02/2019', fecha_ingreso = '11/02/2025', fecha_nacimiento = '10/10/2000' WHERE id_cedula = '1005340129';
-- empleado 1104071452 | PEÑA PEÑA LUIS DAVID
UPDATE empleado SET fecha_expedicion = '15/06/2016', fecha_ingreso = '17/02/2025', fecha_nacimiento = '06/06/1998' WHERE id_cedula = '1104071452';
-- empleado 1040048224 | SANTAMARIA SUAREZ JORGE
UPDATE empleado SET fecha_expedicion = '18/03/2015', fecha_ingreso = '17/02/2025', fecha_nacimiento = '08/07/1996' WHERE id_cedula = '1040048224';
-- empleado 1100893914 | ROJAS GUTIERREZ JHON FREDY
UPDATE empleado SET fecha_expedicion = '21/06/2011', fecha_ingreso = '17/02/2025', fecha_nacimiento = '08/06/1993' WHERE id_cedula = '1100893914';
-- empleado 1023947977 | AVILA ARAQUE CINDY ELIZABETH
UPDATE empleado SET fecha_expedicion = '09/01/2014', fecha_ingreso = '17/02/2025', fecha_nacimiento = '10/12/1995' WHERE id_cedula = '1023947977';
-- empleado 1005449575 | HIGUERA JAIMES ADRIANA LICETH
UPDATE empleado SET fecha_expedicion = '21/05/2021', fecha_ingreso = '26/08/2025', fecha_nacimiento = '14/05/2003' WHERE id_cedula = '1005449575';
-- empleado 1100894583 | MARIMON RUZ JAVIER
UPDATE empleado SET fecha_expedicion = '31/07/2012', fecha_ingreso = '24/02/2025', fecha_nacimiento = '20/07/1994' WHERE id_cedula = '1100894583';
-- empleado 1095302964 | ROBLES BLANCO JUAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '21/03/2024', fecha_ingreso = '24/02/2025', fecha_nacimiento = '20/03/2006' WHERE id_cedula = '1095302964';
-- empleado 667463 | TERAN GARCIA PEDRO ALEXANDER
UPDATE empleado SET fecha_expedicion = '09/06/2022', fecha_ingreso = '24/02/2025', fecha_nacimiento = '19/03/1997' WHERE id_cedula = '667463';
-- empleado 1005340449 | VILLALBA ORTEGA JOHAN FERNANDO
UPDATE empleado SET fecha_expedicion = '22/06/2018', fecha_ingreso = '09/10/2025', fecha_nacimiento = '01/06/2000' WHERE id_cedula = '1005340449';
-- empleado 1123890608 | HERNANDEZ CUELLO ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '27/04/2023', fecha_ingreso = '26/02/2025', fecha_nacimiento = '26/04/2005' WHERE id_cedula = '1123890608';
-- empleado 58494289 | MARTINEZ HERNANDEZ MARIA ANDREINA
UPDATE empleado SET fecha_expedicion = '08/03/2022', fecha_ingreso = '22/02/2025', fecha_nacimiento = '16/06/1991' WHERE id_cedula = '58494289';
-- empleado 1102725370 | MARTINEZ HERNANDEZ JENNY ROCIO
UPDATE empleado SET fecha_expedicion = '23/06/2016', fecha_ingreso = '22/02/2025', fecha_nacimiento = '26/02/1998' WHERE id_cedula = '1102725370';
-- empleado 1005150728 | QUIROZ AMAYA YULY JANETH
UPDATE empleado SET fecha_expedicion = '22/07/2014', fecha_ingreso = '22/02/2025', fecha_nacimiento = '01/07/1996' WHERE id_cedula = '1005150728';
-- empleado 1048555639 | PIMIENTA HERNANDEZ YODIS JANETH
UPDATE empleado SET fecha_expedicion = '18/09/2008', fecha_ingreso = '16/09/2025', fecha_nacimiento = '21/06/1990' WHERE id_cedula = '1048555639';
-- empleado 90087044 | PARRA HERNANDEZ ROSEMBER
UPDATE empleado SET fecha_expedicion = '05/01/2010', fecha_ingreso = '06/03/2025', fecha_nacimiento = '01/01/1992' WHERE id_cedula = '90087044';
-- empleado 1095810864 | PARRA HERNANDEZ  ROSEMBER
UPDATE empleado SET fecha_expedicion = '05/01/2010', fecha_ingreso = '06/03/2025', fecha_nacimiento = '18/03/2007' WHERE id_cedula = '1095810864';
-- empleado 79625408 | OTERO VASQUEZ  JOSE AGUSTIN
UPDATE empleado SET fecha_expedicion = '28/02/1991', fecha_ingreso = '12/03/2025', fecha_nacimiento = '23/05/1972' WHERE id_cedula = '79625408';
-- empleado 1005025701 | SANCHEZ URIBE EDIVAN
UPDATE empleado SET fecha_expedicion = '05/01/2018', fecha_ingreso = '10/03/2025', fecha_nacimiento = '04/01/2000' WHERE id_cedula = '1005025701';
-- empleado 1007773765 | TRIGOS ALVAREZ FEIBER
UPDATE empleado SET fecha_expedicion = '24/04/2014', fecha_ingreso = '06/03/2025', fecha_nacimiento = '23/01/1996' WHERE id_cedula = '1007773765';
-- empleado 1007439822 | DIAZ VILLAMIZAR JAVIER ESTEVEN
UPDATE empleado SET fecha_expedicion = '22/05/2000', fecha_ingreso = '06/03/2025', fecha_nacimiento = '22/05/2000' WHERE id_cedula = '1007439822';
-- empleado 1101201557 | TRIGOS ALVAREZ JANNER
UPDATE empleado SET fecha_expedicion = '10/01/2024', fecha_ingreso = '13/03/2025', fecha_nacimiento = '09/01/2006' WHERE id_cedula = '1101201557';
-- empleado 1007917784 | TOVAR HORMIGA MICHAEL SNEYDER
UPDATE empleado SET fecha_expedicion = '30/08/2000', fecha_ingreso = '13/03/2025', fecha_nacimiento = '24/08/2000' WHERE id_cedula = '1007917784';
-- empleado 91532028 | CASTAÑO MANCERA SAMUEL LEONARDO
UPDATE empleado SET fecha_expedicion = '29/08/2002', fecha_ingreso = '10/03/2025', fecha_nacimiento = '25/08/1984' WHERE id_cedula = '91532028';
-- empleado 1095956006 | CADENA CRIADO EDWIN ALEXANDER
UPDATE empleado SET fecha_expedicion = '12/06/2017', fecha_ingreso = '13/03/2025', fecha_nacimiento = '10/05/1999' WHERE id_cedula = '1095956006';
-- empleado 1095951119 | MALAGON SANCHEZ NICOLAS ENRIQUE
UPDATE empleado SET fecha_expedicion = '28/01/2016', fecha_ingreso = '03/03/2025', fecha_nacimiento = '23/01/1998' WHERE id_cedula = '1095951119';
-- empleado 1095954423 | LAMUS MENDEZ NICOLAS DAVID
UPDATE empleado SET fecha_expedicion = '28/12/2016', fecha_ingreso = '03/03/2025', fecha_nacimiento = '18/12/1998' WHERE id_cedula = '1095954423';
-- empleado 1095798791 | MONTERO BUITRAGO JIMMY ANDRES
UPDATE empleado SET fecha_expedicion = '13/12/2021', fecha_ingreso = '26/01/2026', fecha_nacimiento = '14/11/2003' WHERE id_cedula = '1095798791';
-- empleado 1063625262 | ORTIZ MORALES EFRAIN
UPDATE empleado SET fecha_expedicion = '22/11/2017', fecha_ingreso = '17/03/2025', fecha_nacimiento = '22/10/1999' WHERE id_cedula = '1063625262';
-- empleado 1095807041 | BARAJAS MAYORGA WILMER DARIO
UPDATE empleado SET fecha_expedicion = '15/12/2008', fecha_ingreso = '17/03/2025', fecha_nacimiento = '15/12/1990' WHERE id_cedula = '1095807041';
-- empleado 1102723602 | CASTILLO RUEDA CRISTIAN ALFREDO
UPDATE empleado SET fecha_expedicion = '07/01/2014', fecha_ingreso = '17/03/2025', fecha_nacimiento = '12/12/1995' WHERE id_cedula = '1102723602';
-- empleado 1098661799 | RUEDA MADERO PAOLA CAROLINA
UPDATE empleado SET fecha_expedicion = '22/11/2006', fecha_ingreso = '19/03/2025', fecha_nacimiento = '11/06/1988' WHERE id_cedula = '1098661799';
-- empleado 91532495 | BUITRAGO CASTRO ALFONSO
UPDATE empleado SET fecha_expedicion = '16/09/2009', fecha_ingreso = '19/03/2025', fecha_nacimiento = '06/09/1984' WHERE id_cedula = '91532495';
-- empleado 1007579486 | ALVAREZ SAAVEDRA YADIRA
UPDATE empleado SET fecha_expedicion = '03/09/2018', fecha_ingreso = '01/04/2025', fecha_nacimiento = '25/08/2000' WHERE id_cedula = '1007579486';
-- empleado 1068346034 | SOLIS BELEÑO EDUARDO JOSE
UPDATE empleado SET fecha_expedicion = '13/01/2022', fecha_ingreso = '01/04/2025', fecha_nacimiento = '12/12/2003' WHERE id_cedula = '1068346034';
-- empleado 1098720774 | ORTIZ GONZALEZ GERSON
UPDATE empleado SET fecha_expedicion = '27/03/2010', fecha_ingreso = '01/04/2025', fecha_nacimiento = '05/04/1992' WHERE id_cedula = '1098720774';
-- empleado 1128449677 | CELIS ARDILA JHON FREDY
UPDATE empleado SET fecha_expedicion = '19/08/1988', fecha_ingreso = '01/04/2025', fecha_nacimiento = '19/10/1988' WHERE id_cedula = '1128449677';
-- empleado 1098773861 | ROJAS MEJIA JOSE DOMINGO
UPDATE empleado SET fecha_expedicion = '04/09/2013', fecha_ingreso = '03/04/2025', fecha_nacimiento = '04/11/1994' WHERE id_cedula = '1098773861';
-- empleado 1098738228 | NIÑO GARCES JORGE
UPDATE empleado SET fecha_expedicion = '08/04/2025', fecha_ingreso = '07/04/2025', fecha_nacimiento = '20/05/1993' WHERE id_cedula = '1098738228';
-- empleado 1102392032 | BARRAZA GARCIA ALEXIS DARIO
UPDATE empleado SET fecha_expedicion = '23/01/2018', fecha_ingreso = '07/04/2025', fecha_nacimiento = '27/07/1999' WHERE id_cedula = '1102392032';
-- empleado 1095834911 | RAMIREZ BELTRAN JORGE ANDREY
UPDATE empleado SET fecha_expedicion = '31/08/2015', fecha_ingreso = '07/04/2025', fecha_nacimiento = '26/08/1997' WHERE id_cedula = '1095834911';
-- empleado 1003259508 | ANDRADE PEDRAZA YEISON
UPDATE empleado SET fecha_expedicion = '08/09/2018', fecha_ingreso = '08/04/2025', fecha_nacimiento = '13/04/2000' WHERE id_cedula = '1003259508';
-- empleado 1066094081 | GARCIA ANDRADES VICTOR ALFONSO
UPDATE empleado SET fecha_expedicion = '09/05/2011', fecha_ingreso = '14/04/2025', fecha_nacimiento = '02/02/1993' WHERE id_cedula = '1066094081';
-- empleado 1005160796 | PINZON MEDINA BRAYAN
UPDATE empleado SET fecha_expedicion = '01/06/2014', fecha_ingreso = '14/04/2025', fecha_nacimiento = '06/07/1996' WHERE id_cedula = '1005160796';
-- empleado 1083034896 | BRAVO MARTINEZ DUBAN DAVID
UPDATE empleado SET fecha_expedicion = '27/05/2016', fecha_ingreso = '14/04/2025', fecha_nacimiento = '05/04/1998' WHERE id_cedula = '1083034896';
-- empleado 1095843896 | SUAREZ BASTO ELKYN ANDREY
UPDATE empleado SET fecha_expedicion = '01/05/2016', fecha_ingreso = '21/04/2025', fecha_nacimiento = '06/09/1999' WHERE id_cedula = '1095843896';
-- empleado 1098706612 | BIANCHA REYES MARIO ANDRES
UPDATE empleado SET fecha_expedicion = '25/06/2009', fecha_ingreso = '21/04/2025', fecha_nacimiento = '15/07/1991' WHERE id_cedula = '1098706612';
-- empleado 1085098049 | FLOREZ PEDRAZO HELVER JOSE
UPDATE empleado SET fecha_expedicion = '22/04/2025', fecha_ingreso = '21/04/2025', fecha_nacimiento = '02/08/1991' WHERE id_cedula = '1085098049';
-- empleado 1095700665 | MEDINA CARLOS SNEYDER
UPDATE empleado SET fecha_expedicion = '20/02/2008', fecha_ingreso = '21/04/2025', fecha_nacimiento = '10/02/1990' WHERE id_cedula = '1095700665';
-- empleado 1098171692 | MORENO PARDO ELVER ARTURO
UPDATE empleado SET fecha_expedicion = '06/09/2015', fecha_ingreso = '14/04/2025', fecha_nacimiento = '30/08/1997' WHERE id_cedula = '1098171692';
-- empleado 1007463015 | SALAZAR PEREZ YOSMAN STIVEN
UPDATE empleado SET fecha_expedicion = '16/06/2018', fecha_ingreso = '03/04/2025', fecha_nacimiento = '05/06/2000' WHERE id_cedula = '1007463015';
-- empleado 1098636933 | TELLEZ ORTIZ JHOAN MAURICIO
UPDATE empleado SET fecha_expedicion = '31/05/2023', fecha_ingreso = '07/05/2025', fecha_nacimiento = '24/05/2005' WHERE id_cedula = '1098636933';
-- empleado 1052220288 | CASTAÑEDA CAÑAS DAVID ALEXANDER
UPDATE empleado SET fecha_expedicion = '03/09/2015', fecha_ingreso = '07/05/2025', fecha_nacimiento = '14/05/1997' WHERE id_cedula = '1052220288';
-- empleado 6206186 | RIVAS LUGO YOAN MANUEL
UPDATE empleado SET fecha_expedicion = '29/03/2022', fecha_ingreso = '15/05/2025', fecha_nacimiento = '24/05/2007' WHERE id_cedula = '6206186';
-- empleado 1098171478 | FAJARDO GUIZA  ALBEIRO
UPDATE empleado SET fecha_expedicion = '14/08/2013', fecha_ingreso = '15/05/2025', fecha_nacimiento = '08/07/1995' WHERE id_cedula = '1098171478';
-- empleado 1100340174 | SANTERO SUAREZ EVELIO ISAAC
UPDATE empleado SET fecha_expedicion = '15/02/2017', fecha_ingreso = '15/05/2025', fecha_nacimiento = '14/02/1999' WHERE id_cedula = '1100340174';
-- empleado 91108496 | CASTRO NIÑO CAMILO ANDRES
UPDATE empleado SET fecha_expedicion = '07/02/1994', fecha_ingreso = '19/03/2025', fecha_nacimiento = '25/12/1975' WHERE id_cedula = '91108496';
-- empleado 6016865 | SILVERA FLORES LUIGY OBRAYAN
UPDATE empleado SET fecha_expedicion = '26/04/2022', fecha_ingreso = '22/05/2025', fecha_nacimiento = '01/02/2002' WHERE id_cedula = '6016865';
-- empleado 1004756344 | MARIN BRANDON STIVEN
UPDATE empleado SET fecha_expedicion = '03/09/2021', fecha_ingreso = '22/05/2025', fecha_nacimiento = '31/05/2007' WHERE id_cedula = '1004756344';
-- empleado 1095957578 | LAITON MARIN JOAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '31/10/2017', fecha_ingreso = '28/05/2025', fecha_nacimiento = '30/10/1999' WHERE id_cedula = '1095957578';
-- empleado 1004501556 | LOBO VELASQUEZ LUIS HERNANDO
UPDATE empleado SET fecha_expedicion = '09/05/2018', fecha_ingreso = '18/11/2025', fecha_nacimiento = '03/02/2000' WHERE id_cedula = '1004501556';
-- empleado 1121966014 | HERNANDEZ PEÑA JORGE HERNANDO
UPDATE empleado SET fecha_expedicion = '13/09/2017', fecha_ingreso = '03/06/2025', fecha_nacimiento = '04/09/1999' WHERE id_cedula = '1121966014';
-- empleado 1098706604 | BALAGUERA BARRIOS EDUARDO JULIAN
UPDATE empleado SET fecha_expedicion = '25/06/2009', fecha_ingreso = '09/06/2025', fecha_nacimiento = '12/10/1990' WHERE id_cedula = '1098706604';
-- empleado 1020103115 | MARIN ARANGO MAICOL ESTIWAR
UPDATE empleado SET fecha_expedicion = '25/08/2021', fecha_ingreso = '09/06/2025', fecha_nacimiento = '18/10/2003' WHERE id_cedula = '1020103115';
-- empleado 1000348817 | GARZON CHARRY JONATAN ARMANDO
UPDATE empleado SET fecha_expedicion = '07/11/2018', fecha_ingreso = '09/06/2025', fecha_nacimiento = '08/08/2000' WHERE id_cedula = '1000348817';
-- empleado 1088256554 | OTALVARO TABORDA ELVER ESNEIDER
UPDATE empleado SET fecha_expedicion = '04/12/2023', fecha_ingreso = '11/06/2025', fecha_nacimiento = '28/11/2005' WHERE id_cedula = '1088256554';
-- empleado 106573904 | GONZALEZ FUENTES ARTURO JESUS
UPDATE empleado SET fecha_expedicion = '05/03/2020', fecha_ingreso = '16/06/2025', fecha_nacimiento = '22/06/2007' WHERE id_cedula = '106573904';
-- empleado 1095934699 | OROZCO ACEVEDO HAMER YESID
UPDATE empleado SET fecha_expedicion = '12/12/2011', fecha_ingreso = '16/06/2025', fecha_nacimiento = '22/06/2007' WHERE id_cedula = '1095934699';
-- empleado 1065812474 | SEGOVIA MARRUGO CARLOS IVAN
UPDATE empleado SET fecha_expedicion = '04/02/2013', fecha_ingreso = '16/06/2025', fecha_nacimiento = '22/01/1995' WHERE id_cedula = '1065812474';
-- empleado 1098740267 | BARRIOS RUIZ MIGUEL ANGEL
UPDATE empleado SET fecha_expedicion = '11/07/2011', fecha_ingreso = '19/06/2025', fecha_nacimiento = '13/06/1993' WHERE id_cedula = '1098740267';
-- empleado 1072752876 | HERNANDEZ VERA JAVER ANDRES
UPDATE empleado SET fecha_expedicion = '10/01/2018', fecha_ingreso = '19/06/2025', fecha_nacimiento = '10/12/1999' WHERE id_cedula = '1072752876';
-- empleado 1095837427 | GONZALEZ RUEDA TANIA ALEXANDRA
UPDATE empleado SET fecha_expedicion = '29/03/2016', fecha_ingreso = '25/06/2025', fecha_nacimiento = '12/02/1998' WHERE id_cedula = '1095837427';
-- empleado 1005240065 | ROMERO DIAZ IVAN RAMIRO
UPDATE empleado SET fecha_expedicion = '13/10/2020', fecha_ingreso = '01/07/2025', fecha_nacimiento = '12/08/2002' WHERE id_cedula = '1005240065';
-- empleado 1094778812 | CELIS PEREZ PABLO ARLEY
UPDATE empleado SET fecha_expedicion = '18/01/2024', fecha_ingreso = '01/07/2025', fecha_nacimiento = '15/01/2006' WHERE id_cedula = '1094778812';
-- empleado 1096252867 | OLIVEROS LAMUS MAGGALY SOFIA
UPDATE empleado SET fecha_expedicion = '22/06/2017', fecha_ingreso = '01/07/2025', fecha_nacimiento = '16/06/1999' WHERE id_cedula = '1096252867';
-- empleado 1095298459 | MARIÑO MANTILLA JUAN PABLO
UPDATE empleado SET fecha_expedicion = '24/12/2021', fecha_ingreso = '01/07/2025', fecha_nacimiento = '08/07/2007' WHERE id_cedula = '1095298459';
-- empleado 1005563424 | CARDENAS BLANCO OSCAR JAVIER
UPDATE empleado SET fecha_expedicion = '27/07/2029', fecha_ingreso = '03/07/2025', fecha_nacimiento = '09/07/1991' WHERE id_cedula = '1005563424';
-- empleado 1007669515 | JIMENEZ ABELLA JEFERSON ANDRES
UPDATE empleado SET fecha_expedicion = '07/06/2017', fecha_ingreso = '03/07/2025', fecha_nacimiento = '08/07/2007' WHERE id_cedula = '1007669515';
-- empleado 1116811061 | VARGAS BERROTERAN DARWIN ARVEY
UPDATE empleado SET fecha_expedicion = '24/04/2017', fecha_ingreso = '03/07/2025', fecha_nacimiento = '16/04/1999' WHERE id_cedula = '1116811061';
-- empleado 1098755647 | LOZADA ORTIZ OLIVER SEBASTIAN
UPDATE empleado SET fecha_expedicion = '14/06/2012', fecha_ingreso = '08/07/2025', fecha_nacimiento = '20/01/1994' WHERE id_cedula = '1098755647';
-- empleado 1095952499 | TRISTANCHO GARCIA CARLOS MARIO
UPDATE empleado SET fecha_expedicion = '20/06/2016', fecha_ingreso = '08/07/2025', fecha_nacimiento = '11/06/1998' WHERE id_cedula = '1095952499';
-- empleado 1065673904 | GONZALEZ FUENTES ARTURO JESUS
UPDATE empleado SET fecha_expedicion = '05/03/2020', fecha_ingreso = '16/06/2025', fecha_nacimiento = '21/02/1994' WHERE id_cedula = '1065673904';
-- empleado 1005340980 | RODRIGUEZ TOLOZA JOHAN JULIAN
UPDATE empleado SET fecha_expedicion = '03/10/2019', fecha_ingreso = '14/07/2025', fecha_nacimiento = '01/10/2001' WHERE id_cedula = '1005340980';
-- empleado 1005298167 | MENDIETA PIMIENTO JUAN PABLO
UPDATE empleado SET fecha_expedicion = '24/01/2019', fecha_ingreso = '14/07/2025', fecha_nacimiento = '03/01/2001' WHERE id_cedula = '1005298167';
-- empleado 1007595416 | LAGUNA MEJIA JOSUE DAVID
UPDATE empleado SET fecha_expedicion = '16/05/2019', fecha_ingreso = '17/07/2025', fecha_nacimiento = '10/05/2001' WHERE id_cedula = '1007595416';
-- empleado 1005157454 | PARRA CUADROS JUAN FELIPE
UPDATE empleado SET fecha_expedicion = '07/07/2017', fecha_ingreso = '17/07/2025', fecha_nacimiento = '04/07/1999' WHERE id_cedula = '1005157454';
-- empleado 91528922 | CRUZ QUIROGA MAYKIN ALIRIO
UPDATE empleado SET fecha_expedicion = '31/05/2002', fecha_ingreso = '22/07/2025', fecha_nacimiento = '12/05/1984' WHERE id_cedula = '91528922';
-- empleado 1007900690 | COTE HERNANDEZ MARIA CAMILA
UPDATE empleado SET fecha_expedicion = '25/01/2018', fecha_ingreso = '22/07/2025', fecha_nacimiento = '21/01/2000' WHERE id_cedula = '1007900690';
-- empleado 1005198910 | CALA CARVAJAL JAIDER ASDRUVAL
UPDATE empleado SET fecha_expedicion = '05/08/2021', fecha_ingreso = '28/07/2025', fecha_nacimiento = '19/05/2003' WHERE id_cedula = '1005198910';
-- empleado 1098707156 | PARRA VELEZ JULIAN ANDRES
UPDATE empleado SET fecha_expedicion = '06/07/2009', fecha_ingreso = '28/07/2025', fecha_nacimiento = '01/07/1991' WHERE id_cedula = '1098707156';
-- empleado 1095907218 | RINCON VERDUGO JEISON ESTIVEN
UPDATE empleado SET fecha_expedicion = '26/04/2022', fecha_ingreso = '28/07/2025', fecha_nacimiento = '06/04/2004' WHERE id_cedula = '1095907218';
-- empleado 1095956697 | PLATA RUEDA JEAN CARLOS
UPDATE empleado SET fecha_expedicion = '16/08/2017', fecha_ingreso = '28/07/2025', fecha_nacimiento = '13/08/1999' WHERE id_cedula = '1095956697';
-- empleado 5446735 | SANCHEZ VIVAS EMANUEL JOSUE
UPDATE empleado SET fecha_expedicion = '11/06/2021', fecha_ingreso = '28/07/2025', fecha_nacimiento = '16/09/2004' WHERE id_cedula = '5446735';
-- empleado 1098772749 | ROJAS RAMIREZ DIEGO ANDRES
UPDATE empleado SET fecha_expedicion = '09/08/2013', fecha_ingreso = '04/08/2025', fecha_nacimiento = '08/08/1995' WHERE id_cedula = '1098772749';
-- empleado 1095838678 | HIGUERA BETANCURT LAURA MARCELA
UPDATE empleado SET fecha_expedicion = '30/08/2016', fecha_ingreso = '04/08/2025', fecha_nacimiento = '15/08/1998' WHERE id_cedula = '1095838678';
-- empleado 73579178 | LARA LUNA LEONARDO LUIS
UPDATE empleado SET fecha_expedicion = '28/01/1995', fecha_ingreso = '04/08/2025', fecha_nacimiento = '11/10/1976' WHERE id_cedula = '73579178';
-- empleado 1099367958 | MONSALVE JAIMES XIOMARA
UPDATE empleado SET fecha_expedicion = '22/09/2009', fecha_ingreso = '04/08/2025', fecha_nacimiento = '21/09/1991' WHERE id_cedula = '1099367958';
-- empleado 1098708544 | TREVISSE SANTOS AQUILES EDUARDO
UPDATE empleado SET fecha_expedicion = '31/07/2009', fecha_ingreso = '04/08/2025', fecha_nacimiento = '29/07/1991' WHERE id_cedula = '1098708544';
-- empleado 80758022 | CARRANZA LOPEZ JUAN CARLOS
UPDATE empleado SET fecha_expedicion = '10/09/2001', fecha_ingreso = '04/08/2025', fecha_nacimiento = '29/08/1983' WHERE id_cedula = '80758022';
-- empleado 1193036794 | GIRALDO TRUJILLO DIEGO ANDRES
UPDATE empleado SET fecha_expedicion = '08/10/2018', fecha_ingreso = '11/08/2025', fecha_nacimiento = '07/09/2000' WHERE id_cedula = '1193036794';
-- empleado 1099362991 | FIGUEREDO SANMILLAN ALEXANDER
UPDATE empleado SET fecha_expedicion = '19/10/2022', fecha_ingreso = '19/08/2025', fecha_nacimiento = '13/10/2004' WHERE id_cedula = '1099362991';
-- empleado 1005288401 | CAMPOS SERRANO SILVIA FERNANDA
UPDATE empleado SET fecha_expedicion = '22/08/2019', fecha_ingreso = '19/08/2025', fecha_nacimiento = '21/08/2001' WHERE id_cedula = '1005288401';
-- empleado 6039791 | MARIN CARRERA  HENDERLYS ALEJANDRA
UPDATE empleado SET fecha_expedicion = '07/02/2024', fecha_ingreso = '19/08/2025', fecha_nacimiento = '12/08/2005' WHERE id_cedula = '6039791';
-- empleado 1098722965 | GONZALEZ MIELES ADALGIZA
UPDATE empleado SET fecha_expedicion = '28/07/2010', fecha_ingreso = '23/02/2026', fecha_nacimiento = '12/02/1992' WHERE id_cedula = '1098722965';
-- empleado 1062905402 | MACHUCA QUINTERO YINIBETH
UPDATE empleado SET fecha_expedicion = '09/07/2019', fecha_ingreso = '19/08/2025', fecha_nacimiento = '28/07/2000' WHERE id_cedula = '1062905402';
-- empleado 1070597495 | VASQUEZ VARGAS CAREN JULIANA
UPDATE empleado SET fecha_expedicion = '25/07/2025', fecha_ingreso = '19/08/2025', fecha_nacimiento = '21/07/2007' WHERE id_cedula = '1070597495';
-- empleado 1090541327 | CASTAÑEDA HERNANDEZ DAVID
UPDATE empleado SET fecha_expedicion = '14/06/2019', fecha_ingreso = '19/08/2025', fecha_nacimiento = '20/03/1992' WHERE id_cedula = '1090541327';
-- empleado 1093755362 | CORREA ESCALANTE JOSE ANTONIO
UPDATE empleado SET fecha_expedicion = '05/12/2008', fecha_ingreso = '20/08/2025', fecha_nacimiento = '06/12/1989' WHERE id_cedula = '1093755362';
-- empleado 79249780 | ARDILA JIMENEZ DIEGO SIGIFREDO
UPDATE empleado SET fecha_expedicion = '11/12/1989', fecha_ingreso = '22/08/2025', fecha_nacimiento = '22/11/1971' WHERE id_cedula = '79249780';
-- empleado 1098130976 | ORTIZ MEJIA DEICY MAYERLY
UPDATE empleado SET fecha_expedicion = '20/05/2009', fecha_ingreso = '01/09/2025', fecha_nacimiento = '10/04/1991' WHERE id_cedula = '1098130976';
-- empleado 1007898456 | AYALA PEÑARANDA CRISTIAN DAVID
UPDATE empleado SET fecha_expedicion = '12/04/2021', fecha_ingreso = '01/09/2025', fecha_nacimiento = '02/01/2003' WHERE id_cedula = '1007898456';
-- empleado 1005160860 | QUINTERO GUTIERREZ DUBAN FERNANDO
UPDATE empleado SET fecha_expedicion = '16/06/2020', fecha_ingreso = '01/09/2025', fecha_nacimiento = '17/03/2002' WHERE id_cedula = '1005160860';
-- empleado 1095955683 | GUERRERO GUERRERO JOSE RODRIGO
UPDATE empleado SET fecha_expedicion = '05/05/2017', fecha_ingreso = '16/09/2025', fecha_nacimiento = '02/05/1999' WHERE id_cedula = '1095955683';
-- empleado 1094352058 | CASTILLO MARIN JOSE LUIS
UPDATE empleado SET fecha_expedicion = '17/08/2017', fecha_ingreso = '16/09/2025', fecha_nacimiento = '05/01/1999' WHERE id_cedula = '1094352058';
-- empleado 1007551732 | GAVIRIA HERNANDEZ CAMILO ANDRES
UPDATE empleado SET fecha_expedicion = '21/09/2020', fecha_ingreso = '16/09/2025', fecha_nacimiento = '13/06/2002' WHERE id_cedula = '1007551732';
-- empleado 1093590970 | ROMERO URIBE ARNOL BRAN
UPDATE empleado SET fecha_expedicion = '29/05/2023', fecha_ingreso = '16/09/2025', fecha_nacimiento = '26/05/2005' WHERE id_cedula = '1093590970';
-- empleado 1234340676 | BOHORQUEZ ANGARITA ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '11/08/2017', fecha_ingreso = '22/09/2025', fecha_nacimiento = '22/06/1999' WHERE id_cedula = '1234340676';
-- empleado 1096065040 | GUARGUATI TOLOZA JHOAN ESNEIDER
UPDATE empleado SET fecha_expedicion = '02/02/2024', fecha_ingreso = '22/09/2025', fecha_nacimiento = '04/02/2006' WHERE id_cedula = '1096065040';
-- empleado 1102724430 | PONTON PONTON EVER MAURICIO
UPDATE empleado SET fecha_expedicion = '25/02/2015', fecha_ingreso = '22/09/2025', fecha_nacimiento = '10/02/1997' WHERE id_cedula = '1102724430';
-- empleado 1098754943 | BONILLA BELTRAN SERGIO ANDRES
UPDATE empleado SET fecha_expedicion = '30/05/2012', fecha_ingreso = '22/09/2025', fecha_nacimiento = '26/05/1994' WHERE id_cedula = '1098754943';
-- empleado 1005298205 | PARRA PEDRAZA ZAYURY FERNANDA
UPDATE empleado SET fecha_expedicion = '19/08/2021', fecha_ingreso = '24/09/2025', fecha_nacimiento = '21/05/2003' WHERE id_cedula = '1005298205';
-- empleado 1007429282 | CARLIER DULCEY JOSE ALBEIRO
UPDATE empleado SET fecha_expedicion = '11/07/2017', fecha_ingreso = '01/10/2025', fecha_nacimiento = '04/07/1999' WHERE id_cedula = '1007429282';
-- empleado 1095300058 | PINTO ESTEBAN JHOAN DANIEL
UPDATE empleado SET fecha_expedicion = '01/11/2022', fecha_ingreso = '01/10/2025', fecha_nacimiento = '09/10/2004' WHERE id_cedula = '1095300058';
-- empleado 1026579572 | ANDRADE MELUK VERONICA ALEJANDRA
UPDATE empleado SET fecha_expedicion = '10/07/2012', fecha_ingreso = '06/10/2025', fecha_nacimiento = '09/07/1994' WHERE id_cedula = '1026579572';
-- empleado 1052572492 | SIERRA GOMEZ CARLOS MARIO
UPDATE empleado SET fecha_expedicion = '02/08/2024', fecha_ingreso = '06/10/2025', fecha_nacimiento = '13/07/2006' WHERE id_cedula = '1052572492';
-- empleado 1005154090 | AGUDELO SAJONERO JHONATAN
UPDATE empleado SET fecha_expedicion = '13/02/2000', fecha_ingreso = '09/10/2025', fecha_nacimiento = '01/06/2000' WHERE id_cedula = '1005154090';
-- empleado 1102374656 | TORRES REY PABLO ANDRES
UPDATE empleado SET fecha_expedicion = '15/08/2012', fecha_ingreso = '09/10/2025', fecha_nacimiento = '20/07/1994' WHERE id_cedula = '1102374656';
-- empleado 1005371227 | GALEANO ROA DANIEL ESTIVEN
UPDATE empleado SET fecha_expedicion = '05/01/2021', fecha_ingreso = '22/10/2025', fecha_nacimiento = '05/01/2003' WHERE id_cedula = '1005371227';
-- empleado 1005235648 | BAUTISTA PALENCIA ANDERSON STIWEN
UPDATE empleado SET fecha_expedicion = '27/01/2020', fecha_ingreso = '22/10/2025', fecha_nacimiento = '22/12/2001' WHERE id_cedula = '1005235648';
-- empleado 1232891031 | PIÑERES ROCHA CHRISTIAN CAMILO
UPDATE empleado SET fecha_expedicion = '01/03/2017', fecha_ingreso = '06/11/2025', fecha_nacimiento = '05/01/1999' WHERE id_cedula = '1232891031';
-- empleado 1007665794 | MARTINEZ ZAFRA JEFERSON
UPDATE empleado SET fecha_expedicion = '17/10/2018', fecha_ingreso = '06/11/2025', fecha_nacimiento = '11/11/2007' WHERE id_cedula = '1007665794';
-- empleado 1010032387 | ARIAS PARADA JHONATAN DAVID
UPDATE empleado SET fecha_expedicion = '06/02/2019', fecha_ingreso = '01/11/2025', fecha_nacimiento = '04/02/2001' WHERE id_cedula = '1010032387';
-- empleado 1098799132 | REATIGA CARVAJAL JEISON FERNANDO
UPDATE empleado SET fecha_expedicion = '26/07/2015', fecha_ingreso = '12/11/2025', fecha_nacimiento = '16/05/1997' WHERE id_cedula = '1098799132';
-- empleado 1007764101 | ARIAS GONZALES WILMER
UPDATE empleado SET fecha_expedicion = '17/04/2019', fecha_ingreso = '18/11/2025', fecha_nacimiento = '04/03/2001' WHERE id_cedula = '1007764101';
-- empleado 1005272030 | RUIZ OSSES ELIAN DUVAN
UPDATE empleado SET fecha_expedicion = '13/12/2021', fecha_ingreso = '18/11/2025', fecha_nacimiento = '10/09/2003' WHERE id_cedula = '1005272030';
-- empleado 1101696331 | MONTAGUTH NIÑO YULMER JOSE
UPDATE empleado SET fecha_expedicion = '11/09/2015', fecha_ingreso = '18/11/2025', fecha_nacimiento = '06/09/1997' WHERE id_cedula = '1101696331';
-- empleado 1097093241 | GIRALDO GONZALEZ JUAN DAVID
UPDATE empleado SET fecha_expedicion = '22/08/2022', fecha_ingreso = '21/11/2025', fecha_nacimiento = '12/08/2004' WHERE id_cedula = '1097093241';
-- empleado 1002249696 | AGUDELO CORTES OSCAR MAURICIO
UPDATE empleado SET fecha_expedicion = '20/01/2021', fecha_ingreso = '24/11/2025', fecha_nacimiento = '07/01/2003' WHERE id_cedula = '1002249696';
-- empleado 1977852 | RINCON SARMIENTO CARLOS ANDRES
UPDATE empleado SET fecha_expedicion = '14/09/1979', fecha_ingreso = '01/12/2025', fecha_nacimiento = '14/09/1979' WHERE id_cedula = '1977852';
-- empleado 1102384789 | HERAZO ARANDA RONALDO
UPDATE empleado SET fecha_expedicion = '28/10/1997', fecha_ingreso = '04/12/2025', fecha_nacimiento = '28/10/1997' WHERE id_cedula = '1102384789';
-- empleado 1092176002 | ROCHA FUENTES JUAN DAVID
UPDATE empleado SET fecha_expedicion = '12/02/2020', fecha_ingreso = '04/12/2025', fecha_nacimiento = '31/01/2002' WHERE id_cedula = '1092176002';
-- empleado 1232890034 | DIAZ SUAREZ KAREN TATIANA
UPDATE empleado SET fecha_expedicion = '25/07/2016', fecha_ingreso = '04/12/2025', fecha_nacimiento = '28/06/1998' WHERE id_cedula = '1232890034';
-- empleado 1063971816 | OCHOA OSORIO JUAN DAVID
UPDATE empleado SET fecha_expedicion = '13/01/2017', fecha_ingreso = '04/12/2025', fecha_nacimiento = '16/12/1998' WHERE id_cedula = '1063971816';
-- empleado 1005655309 | PICON SUAREZ ESNEIDER STIP
UPDATE empleado SET fecha_expedicion = '08/08/2018', fecha_ingreso = '10/12/2025', fecha_nacimiento = '16/07/2000' WHERE id_cedula = '1005655309';
-- empleado 1005236253 | TOLEDO ROJAS MANUEL DAVID
UPDATE empleado SET fecha_expedicion = '13/10/2020', fecha_ingreso = '10/12/2025', fecha_nacimiento = '07/10/2002' WHERE id_cedula = '1005236253';
-- empleado 1067030716 | CHOGO HERNANDEZ JOHAN SEBASTIAN
UPDATE empleado SET fecha_expedicion = '14/01/2022', fecha_ingreso = '15/12/2025', fecha_nacimiento = '20/12/2003' WHERE id_cedula = '1067030716';
-- empleado 1097912307 | QUICENO MANZANO JULIAN ANDREY
UPDATE empleado SET fecha_expedicion = '10/10/2025', fecha_ingreso = '15/12/2025', fecha_nacimiento = '04/10/2007' WHERE id_cedula = '1097912307';
-- empleado 1100973253 | LOPEZ MANRIQUE OMAR ESTEBAN
UPDATE empleado SET fecha_expedicion = '28/07/2016', fecha_ingreso = '15/12/2025', fecha_nacimiento = '27/07/1998' WHERE id_cedula = '1100973253';
-- empleado 1073322335 | PEREZ RUBIO WILLIAM ARMANDO
UPDATE empleado SET fecha_expedicion = '10/10/2007', fecha_ingreso = '22/12/2025', fecha_nacimiento = '15/09/1989' WHERE id_cedula = '1073322335';
-- empleado 5227620 | PACHECO MEDINA RUDNANYER JOSE
UPDATE empleado SET fecha_expedicion = '01/12/2021', fecha_ingreso = '22/12/2025', fecha_nacimiento = '26/10/1986' WHERE id_cedula = '5227620';
-- empleado 1003174731 | DURAN SEPULVEDA DAGOBERTO
UPDATE empleado SET fecha_expedicion = '17/09/2021', fecha_ingreso = '15/12/2025', fecha_nacimiento = '16/09/2003' WHERE id_cedula = '1003174731';
-- empleado 1102387307 | ESCOBAR GALVAN CARLOS HUMBERTO
UPDATE empleado SET fecha_expedicion = '10/08/2016', fecha_ingreso = '07/01/2026', fecha_nacimiento = '20/09/1997' WHERE id_cedula = '1102387307';
-- empleado 1096199279 | MANTILLA SAAVEDRA YEVINSON RENE
UPDATE empleado SET fecha_expedicion = '13/02/2025', fecha_ingreso = '07/01/2026', fecha_nacimiento = '10/02/2007' WHERE id_cedula = '1096199279';
-- empleado 1097094205 | OTERO PINEDA EMANUEL DAVID
UPDATE empleado SET fecha_expedicion = '16/11/2022', fecha_ingreso = '07/01/2026', fecha_nacimiento = '13/10/2004' WHERE id_cedula = '1097094205';
-- empleado 5393615 | HERNANDEZ DURAN PEDRO JOSE
UPDATE empleado SET fecha_expedicion = '22/06/2022', fecha_ingreso = '07/01/2026', fecha_nacimiento = '05/02/1995' WHERE id_cedula = '5393615';
-- empleado 1005311796 | CAMACHO ARENAS EMERSON ALBERTO
UPDATE empleado SET fecha_expedicion = '01/03/2018', fecha_ingreso = '07/01/2026', fecha_nacimiento = '05/02/2000' WHERE id_cedula = '1005311796';
-- empleado 1005289767 | CALDERON LOPEZ CAROL YULIANA
UPDATE empleado SET fecha_expedicion = '18/12/2020', fecha_ingreso = '15/01/2026', fecha_nacimiento = '13/06/2002' WHERE id_cedula = '1005289767';
-- empleado 1095840254 | TORRES ORTEGA EHYMAR YAIR
UPDATE empleado SET fecha_expedicion = '01/03/2017', fecha_ingreso = '15/01/2026', fecha_nacimiento = '20/01/2008' WHERE id_cedula = '1095840254';
-- empleado 91047085 | VANEGAS SANTANA HERIBERTO
UPDATE empleado SET fecha_expedicion = '24/08/2001', fecha_ingreso = '22/01/2026', fecha_nacimiento = '23/04/1983' WHERE id_cedula = '91047085';
-- empleado 1098762565 | ZULUAGA GELVES JUAN CAMILO
UPDATE empleado SET fecha_expedicion = '20/11/2012', fecha_ingreso = '02/02/2026', fecha_nacimiento = '15/11/1994' WHERE id_cedula = '1098762565';
-- empleado 1096539054 | SANTOS ALARCON YEISON MANUEL
UPDATE empleado SET fecha_expedicion = '22/11/2023', fecha_ingreso = '10/02/2026', fecha_nacimiento = '19/11/2005' WHERE id_cedula = '1096539054';
-- empleado 1004822805 | CARDENAS CARDENAS CARLOS ANDRES
UPDATE empleado SET fecha_expedicion = '13/11/2020', fecha_ingreso = '10/02/2026', fecha_nacimiento = '23/05/2002' WHERE id_cedula = '1004822805';
-- empleado 1005337917 | GONZALES DIAZ CARLOS ALFREDO
UPDATE empleado SET fecha_expedicion = '15/09/2011', fecha_ingreso = '10/02/2026', fecha_nacimiento = '21/08/1993' WHERE id_cedula = '1005337917';
-- empleado 1066269115 | ARZUAGA AGUAS JAIME LUIS
UPDATE empleado SET fecha_expedicion = '16/01/2023', fecha_ingreso = '16/02/2026', fecha_nacimiento = '12/01/2005' WHERE id_cedula = '1066269115';
-- empleado 1005321890 | CASTILLO LUNA RONALD RAUL
UPDATE empleado SET fecha_expedicion = '28/01/2019', fecha_ingreso = '23/02/2026', fecha_nacimiento = '27/01/2001' WHERE id_cedula = '1005321890';
-- empleado 1095803756 | VIVIESCAS URIBE SILVIA PATRICIA
UPDATE empleado SET fecha_expedicion = '14/02/2008', fecha_ingreso = '23/02/2026', fecha_nacimiento = '12/12/1989' WHERE id_cedula = '1095803756';
-- empleado 1005332438 | BOTHIA CARDENAS OMAR STEBEN
UPDATE empleado SET fecha_expedicion = '11/08/2021', fecha_ingreso = '24/02/2026', fecha_nacimiento = '04/06/2003' WHERE id_cedula = '1005332438';
-- empleado 1095787614 | DURAN PUENTES  LAUDID
UPDATE empleado SET fecha_expedicion = '07/07/2022', fecha_ingreso = '23/02/2026', fecha_nacimiento = '11/03/2002' WHERE id_cedula = '1095787614';
-- empleado 1001996506 | CARRILLO GONZALEZ SARAI DANIELA
UPDATE empleado SET fecha_expedicion = '08/06/2020', fecha_ingreso = '23/02/2026', fecha_nacimiento = '08/03/2002' WHERE id_cedula = '1001996506';
-- empleado 1127604257 | JIMENEZ RODRIGUEZ ALEXANDER
UPDATE empleado SET fecha_expedicion = '15/08/2014', fecha_ingreso = '03/03/2026', fecha_nacimiento = '14/11/1992' WHERE id_cedula = '1127604257';
-- empleado 1098640052 | LOZADA ORTIZ TELMO
UPDATE empleado SET fecha_expedicion = '16/08/2005', fecha_ingreso = '03/03/2026', fecha_nacimiento = '04/05/1987' WHERE id_cedula = '1098640052';
-- empleado 1130104253 | GAONA GRAU ALISON DALIANA
UPDATE empleado SET fecha_expedicion = '19/01/2017', fecha_ingreso = '02/03/2026', fecha_nacimiento = '16/08/2008' WHERE id_cedula = '1130104253';
-- empleado 1096540063 | DELGADO RINCON KAREN DANIELA
UPDATE empleado SET fecha_expedicion = '11/05/2016', fecha_ingreso = '03/03/2026', fecha_nacimiento = '18/04/2008' WHERE id_cedula = '1096540063';
-- empleado 1098816278 | RUEDA BARRAGAN SAMIR
UPDATE empleado SET fecha_expedicion = '01/04/2026', fecha_ingreso = '09/04/2026', fecha_nacimiento = '15/02/1999' WHERE id_cedula = '1098816278';
-- empleado 1091358058 | BASTOS GARCÍA THOMAS SEBASTIÁN
UPDATE empleado SET fecha_expedicion = '05/12/2024', fecha_ingreso = '09/04/2026', fecha_nacimiento = '25/11/2006' WHERE id_cedula = '1091358058';
-- empleado 37670060 | ARIZA FONTECHA ADRIANA PATRICIA
UPDATE empleado SET fecha_expedicion = '23/09/1999', fecha_ingreso = '19/04/2026', fecha_nacimiento = '22/03/1981' WHERE id_cedula = '37670060';
-- empleado 1098767965 | TOLOZA CERNA MAYERLY TATIANA
UPDATE empleado SET fecha_expedicion = '15/04/2013', fecha_ingreso = '19/03/2026', fecha_nacimiento = '14/04/1995' WHERE id_cedula = '1098767965';
-- empleado 1007800033 | RIOS MEDINA SANTIAGO
UPDATE empleado SET fecha_expedicion = '09/07/2020', fecha_ingreso = '17/03/2026', fecha_nacimiento = '04/04/2002' WHERE id_cedula = '1007800033';
-- empleado 1102379336 | SANDOVAL QUINTERO CARLOS ARTURO
UPDATE empleado SET fecha_expedicion = '03/02/2014', fecha_ingreso = '17/03/2026', fecha_nacimiento = '05/09/1995' WHERE id_cedula = '1102379336';
-- empleado 1049019061 | JAIMEZ MORALES CARLOS FERNEY
UPDATE empleado SET fecha_expedicion = '12/01/2011', fecha_ingreso = '13/03/2026', fecha_nacimiento = '10/12/1992' WHERE id_cedula = '1049019061';
-- empleado 1121197151 | CARRASCAL MEDINA CRISTIAN CAMILO
UPDATE empleado SET fecha_expedicion = '04/03/2021', fecha_ingreso = '13/03/2026', fecha_nacimiento = '03/01/2003' WHERE id_cedula = '1121197151';
-- empleado 88028168 | GOMEZ NIÑO JAIRO WILMER
UPDATE empleado SET fecha_expedicion = '21/08/2002', fecha_ingreso = '09/03/2026', fecha_nacimiento = '22/03/1984' WHERE id_cedula = '88028168';
-- empleado 1098657122 | RODRIGUEZ RUBIO MICHEL LORENA
UPDATE empleado SET fecha_expedicion = '28/08/2024', fecha_ingreso = '09/03/2026', fecha_nacimiento = '05/08/2006' WHERE id_cedula = '1098657122';
-- empleado 1005198776 | SARMIENTO JEREZ JESUS ELBERTO
UPDATE empleado SET fecha_expedicion = '16/01/2020', fecha_ingreso = '26/03/2026', fecha_nacimiento = '11/01/2002' WHERE id_cedula = '1005198776';
-- empleado 1095908266 | DIAZ MENDEZ YOLMAR ESTIVEN
UPDATE empleado SET fecha_expedicion = '06/09/2022', fecha_ingreso = '26/03/2026', fecha_nacimiento = '01/09/2004' WHERE id_cedula = '1095908266';
-- empleado 1102389489 | QUINTERO REYES CRISTHIAN OMAR
UPDATE empleado SET fecha_expedicion = '12/04/2017', fecha_ingreso = '26/03/2026', fecha_nacimiento = '24/03/1999' WHERE id_cedula = '1102389489';
-- empleado 1005110177 | ARIAS ARIAS JAIR ALEXIS
UPDATE empleado SET fecha_expedicion = '29/03/2019', fecha_ingreso = '27/03/2026', fecha_nacimiento = '23/03/2001' WHERE id_cedula = '1005110177';
-- empleado 1095912861 | GARCIA RODRIGUEZ ANDRES FELIPE
UPDATE empleado SET fecha_expedicion = '05/03/2024', fecha_ingreso = '27/03/2026', fecha_nacimiento = '04/03/2006' WHERE id_cedula = '1095912861';
-- empleado 1005152125 | CAMPOS RAMIREZ YEFERSON ARMANDO
UPDATE empleado SET fecha_expedicion = '27/06/2016', fecha_ingreso = '27/03/2026', fecha_nacimiento = '06/06/1998' WHERE id_cedula = '1005152125';
-- empleado 1095921045 | ROMERO URIBE JEFFERSON STIVEN
UPDATE empleado SET fecha_expedicion = '10/02/2026', fecha_ingreso = '14/04/2026', fecha_nacimiento = '08/02/2008' WHERE id_cedula = '1095921045';
-- empleado 1097306118 | HERNÁNDEZ CONTRERAS JUAN GABRIEL
UPDATE empleado SET fecha_expedicion = '01/06/2015', fecha_ingreso = '14/04/2026', fecha_nacimiento = '30/03/1997' WHERE id_cedula = '1097306118';
-- empleado 1098752811 | FERNANDEZ GOMEZ SAID JULIAN
UPDATE empleado SET fecha_expedicion = '13/04/2012', fecha_ingreso = '14/04/2026', fecha_nacimiento = '31/03/1994' WHERE id_cedula = '1098752811';
-- empleado 1100220410 | LÓPEZ PINTO HENRY ARMANDO
UPDATE empleado SET fecha_expedicion = '15/12/2022', fecha_ingreso = '09/04/2026', fecha_nacimiento = '14/12/2004' WHERE id_cedula = '1100220410';
-- empleado 1098622616 | CAPACHO GUTIERREZ ELKIN
UPDATE empleado SET fecha_expedicion = '04/10/2004', fecha_ingreso = '09/04/2026', fecha_nacimiento = '02/10/1986' WHERE id_cedula = '1098622616';
-- hijo 2888b96d | cedula padre 91512215
UPDATE hijo SET fecha_nacimiento = '22/11/2008' WHERE id_hijo = '2888b96d' AND id_cedula = '91512215';
-- hijo f82aff41 | cedula padre 91512215
UPDATE hijo SET fecha_nacimiento = '24/11/2003' WHERE id_hijo = 'f82aff41' AND id_cedula = '91512215';
-- hijo 16222bc1 | cedula padre 1065609442
UPDATE hijo SET fecha_nacimiento = '16/04/2010' WHERE id_hijo = '16222bc1' AND id_cedula = '1065609442';
-- hijo 840113d8 | cedula padre 1065609442
UPDATE hijo SET fecha_nacimiento = '21/03/2018' WHERE id_hijo = '840113d8' AND id_cedula = '1065609442';
-- hijo 87de3b0d | cedula padre 1098674763
UPDATE hijo SET fecha_nacimiento = '23/08/2016' WHERE id_hijo = '87de3b0d' AND id_cedula = '1098674763';
-- hijo 162e2be8 | cedula padre 1098674763
UPDATE hijo SET fecha_nacimiento = '03/09/2021' WHERE id_hijo = '162e2be8' AND id_cedula = '1098674763';
-- hijo 0a82b9dc | cedula padre 1094266549
UPDATE hijo SET fecha_nacimiento = '05/08/2016' WHERE id_hijo = '0a82b9dc' AND id_cedula = '1094266549';
-- hijo bde95010 | cedula padre 1094266549
UPDATE hijo SET fecha_nacimiento = '30/03/2011' WHERE id_hijo = 'bde95010' AND id_cedula = '1094266549';
-- hijo 25e2f363 | cedula padre 1095817542
UPDATE hijo SET fecha_nacimiento = '21/11/2011' WHERE id_hijo = '25e2f363' AND id_cedula = '1095817542';
-- hijo e38ee988 | cedula padre 1098722582
UPDATE hijo SET fecha_nacimiento = '06/09/2015' WHERE id_hijo = 'e38ee988' AND id_cedula = '1098722582';
-- hijo 4af40f48 | cedula padre 1095947531
UPDATE hijo SET fecha_nacimiento = '22/12/2016' WHERE id_hijo = '4af40f48' AND id_cedula = '1095947531';
-- hijo 934bc1ca | cedula padre 1102360234
UPDATE hijo SET fecha_nacimiento = '30/11/2010' WHERE id_hijo = '934bc1ca' AND id_cedula = '1102360234';
-- hijo 89a14e39 | cedula padre 1102360234
UPDATE hijo SET fecha_nacimiento = '14/03/2008' WHERE id_hijo = '89a14e39' AND id_cedula = '1102360234';
-- hijo 27ccd8cb | cedula padre 1101204999
UPDATE hijo SET fecha_nacimiento = '16/05/2018' WHERE id_hijo = '27ccd8cb' AND id_cedula = '1101204999';
-- hijo 569f682e | cedula padre 1093767979
UPDATE hijo SET fecha_nacimiento = '25/05/2018' WHERE id_hijo = '569f682e' AND id_cedula = '1093767979';
-- hijo 3b16d270 | cedula padre 1093767979
UPDATE hijo SET fecha_nacimiento = '29/08/2022' WHERE id_hijo = '3b16d270' AND id_cedula = '1093767979';
-- hijo 6e938f1d | cedula padre 1100695854
UPDATE hijo SET fecha_nacimiento = '22/01/2021' WHERE id_hijo = '6e938f1d' AND id_cedula = '1100695854';
-- hijo 200babba | cedula padre 1100695854
UPDATE hijo SET fecha_nacimiento = '26/11/2015' WHERE id_hijo = '200babba' AND id_cedula = '1100695854';
-- hijo 1e42a36a | cedula padre 91541834
UPDATE hijo SET fecha_nacimiento = '14/01/2010' WHERE id_hijo = '1e42a36a' AND id_cedula = '91541834';
-- hijo b1862d1d | cedula padre 91541834
UPDATE hijo SET fecha_nacimiento = '15/01/2017' WHERE id_hijo = 'b1862d1d' AND id_cedula = '91541834';
-- hijo b3c0a1ed | cedula padre 91541834
UPDATE hijo SET fecha_nacimiento = '31/10/2018' WHERE id_hijo = 'b3c0a1ed' AND id_cedula = '91541834';
-- hijo 225c104d | cedula padre 1098724961
UPDATE hijo SET fecha_nacimiento = '05/05/2014' WHERE id_hijo = '225c104d' AND id_cedula = '1098724961';
-- hijo 5d8c4155 | cedula padre 1020758240
UPDATE hijo SET fecha_nacimiento = '15/01/2017' WHERE id_hijo = '5d8c4155' AND id_cedula = '1020758240';
-- hijo ca26383c | cedula padre 63543638
UPDATE hijo SET fecha_nacimiento = '18/09/2003' WHERE id_hijo = 'ca26383c' AND id_cedula = '63543638';
-- hijo 539a7fcb | cedula padre 63543638
UPDATE hijo SET fecha_nacimiento = '05/07/2016' WHERE id_hijo = '539a7fcb' AND id_cedula = '63543638';
-- hijo da62b4b3 | cedula padre 63543638
UPDATE hijo SET fecha_nacimiento = '05/07/2016' WHERE id_hijo = 'da62b4b3' AND id_cedula = '63543638';
-- hijo c53735ce | cedula padre 1005293842
UPDATE hijo SET fecha_nacimiento = '25/05/2007' WHERE id_hijo = 'c53735ce' AND id_cedula = '1005293842';
-- hijo 797bdef9 | cedula padre 1005293842
UPDATE hijo SET fecha_nacimiento = '04/09/2009' WHERE id_hijo = '797bdef9' AND id_cedula = '1005293842';
-- hijo d0ce5306 | cedula padre 1005293842
UPDATE hijo SET fecha_nacimiento = '14/12/2019' WHERE id_hijo = 'd0ce5306' AND id_cedula = '1005293842';
-- hijo 6f1831cd | cedula padre 1095913856
UPDATE hijo SET fecha_nacimiento = '14/09/2013' WHERE id_hijo = '6f1831cd' AND id_cedula = '1095913856';
-- hijo adfac365 | cedula padre 1095935838
UPDATE hijo SET fecha_nacimiento = '06/05/2016' WHERE id_hijo = 'adfac365' AND id_cedula = '1095935838';
-- hijo 5b414128 | cedula padre 1095935838
UPDATE hijo SET fecha_nacimiento = '09/01/2018' WHERE id_hijo = '5b414128' AND id_cedula = '1095935838';
-- hijo a12537cd | cedula padre 1055449415
UPDATE hijo SET fecha_nacimiento = '28/05/2022' WHERE id_hijo = 'a12537cd' AND id_cedula = '1055449415';
-- hijo c9bec89d | cedula padre 5135419
UPDATE hijo SET fecha_nacimiento = '17/09/2011' WHERE id_hijo = 'c9bec89d' AND id_cedula = '5135419';
-- hijo 20a19751 | cedula padre 5135419
UPDATE hijo SET fecha_nacimiento = '10/11/2014' WHERE id_hijo = '20a19751' AND id_cedula = '5135419';
-- hijo 6a9fc93d | cedula padre 1095950032
UPDATE hijo SET fecha_nacimiento = '13/10/2020' WHERE id_hijo = '6a9fc93d' AND id_cedula = '1095950032';
-- hijo 20d4b029 | cedula padre 1020467674
UPDATE hijo SET fecha_nacimiento = '15/05/2008' WHERE id_hijo = '20d4b029' AND id_cedula = '1020467674';
-- hijo 4716b33e | cedula padre 91527766
UPDATE hijo SET fecha_nacimiento = '09/07/2010' WHERE id_hijo = '4716b33e' AND id_cedula = '91527766';
-- hijo f45820da | cedula padre 1232888572
UPDATE hijo SET fecha_nacimiento = '06/03/2019' WHERE id_hijo = 'f45820da' AND id_cedula = '1232888572';
-- hijo 68078c19 | cedula padre 1098619262
UPDATE hijo SET fecha_nacimiento = '25/02/2015' WHERE id_hijo = '68078c19' AND id_cedula = '1098619262';
-- hijo 0e6430db | cedula padre 1098619262
UPDATE hijo SET fecha_nacimiento = '03/05/2017' WHERE id_hijo = '0e6430db' AND id_cedula = '1098619262';
-- hijo d500d536 | cedula padre 1098619262
UPDATE hijo SET fecha_nacimiento = '03/05/2017' WHERE id_hijo = 'd500d536' AND id_cedula = '1098619262';
-- hijo 2901789e | cedula padre 1005346356
UPDATE hijo SET fecha_nacimiento = '14/04/2016' WHERE id_hijo = '2901789e' AND id_cedula = '1005346356';
-- hijo 912d55dd | cedula padre 4994640
UPDATE hijo SET fecha_nacimiento = '06/12/2015' WHERE id_hijo = '912d55dd' AND id_cedula = '4994640';
-- hijo b6e14b35 | cedula padre 1005156867
UPDATE hijo SET fecha_nacimiento = '26/12/2022' WHERE id_hijo = 'b6e14b35' AND id_cedula = '1005156867';
-- hijo b40894fa | cedula padre 1007929887
UPDATE hijo SET fecha_nacimiento = '09/03/2018' WHERE id_hijo = 'b40894fa' AND id_cedula = '1007929887';
-- hijo c3644326 | cedula padre 1091676205
UPDATE hijo SET fecha_nacimiento = '01/04/2023' WHERE id_hijo = 'c3644326' AND id_cedula = '1091676205';
-- hijo 447c23c2 | cedula padre 1095820357
UPDATE hijo SET fecha_nacimiento = '04/04/2017' WHERE id_hijo = '447c23c2' AND id_cedula = '1095820357';
-- hijo 6c19aaf4 | cedula padre 1095820357
UPDATE hijo SET fecha_nacimiento = '13/02/2020' WHERE id_hijo = '6c19aaf4' AND id_cedula = '1095820357';
-- hijo e732b7e9 | cedula padre 91495076
UPDATE hijo SET fecha_nacimiento = '15/08/2002' WHERE id_hijo = 'e732b7e9' AND id_cedula = '91495076';
-- hijo c206d354 | cedula padre 91495076
UPDATE hijo SET fecha_nacimiento = '03/10/2007' WHERE id_hijo = 'c206d354' AND id_cedula = '91495076';
-- hijo 51982a93 | cedula padre 1127607041
UPDATE hijo SET fecha_nacimiento = '11/05/2020' WHERE id_hijo = '51982a93' AND id_cedula = '1127607041';
-- hijo 26cba0d9 | cedula padre 1098773168
UPDATE hijo SET fecha_nacimiento = '09/09/2017' WHERE id_hijo = '26cba0d9' AND id_cedula = '1098773168';
-- hijo 441b133c | cedula padre 1095825463
UPDATE hijo SET fecha_nacimiento = '27/08/2016' WHERE id_hijo = '441b133c' AND id_cedula = '1095825463';
-- hijo 4d9fc69b | cedula padre 1005293842
UPDATE hijo SET fecha_nacimiento = '15/06/2023' WHERE id_hijo = '4d9fc69b' AND id_cedula = '1005293842';
-- hijo 1 | cedula padre 5846618
UPDATE hijo SET fecha_nacimiento = '19/11/2016' WHERE id_hijo = '1' AND id_cedula = '5846618';
-- hijo 809af332 | cedula padre 5846618
UPDATE hijo SET fecha_nacimiento = '02/01/2015' WHERE id_hijo = '809af332' AND id_cedula = '5846618';
-- hijo aaa2e30d | cedula padre 91466133
UPDATE hijo SET fecha_nacimiento = '18/10/2017' WHERE id_hijo = 'aaa2e30d' AND id_cedula = '91466133';
-- hijo 2c844975 | cedula padre 91466133
UPDATE hijo SET fecha_nacimiento = '18/10/2017' WHERE id_hijo = '2c844975' AND id_cedula = '91466133';
-- hijo d83c60e8 | cedula padre 91466133
UPDATE hijo SET fecha_nacimiento = '07/02/2018' WHERE id_hijo = 'd83c60e8' AND id_cedula = '91466133';
-- hijo 3117aee3 | cedula padre 1099367927
UPDATE hijo SET fecha_nacimiento = '24/04/2016' WHERE id_hijo = '3117aee3' AND id_cedula = '1099367927';
-- hijo e1ba0bd5 | cedula padre 1099367927
UPDATE hijo SET fecha_nacimiento = '11/06/2017' WHERE id_hijo = 'e1ba0bd5' AND id_cedula = '1099367927';
-- hijo 979c2620 | cedula padre 1095951615
UPDATE hijo SET fecha_nacimiento = '14/09/2022' WHERE id_hijo = '979c2620' AND id_cedula = '1095951615';
-- hijo 48bc7db7 | cedula padre 91510509
UPDATE hijo SET fecha_nacimiento = '07/05/2009' WHERE id_hijo = '48bc7db7' AND id_cedula = '91510509';
-- hijo aaab0e7f | cedula padre 91510509
UPDATE hijo SET fecha_nacimiento = '21/05/2013' WHERE id_hijo = 'aaab0e7f' AND id_cedula = '91510509';
-- hijo fc431145 | cedula padre 1050920056
UPDATE hijo SET fecha_nacimiento = '27/01/2011' WHERE id_hijo = 'fc431145' AND id_cedula = '1050920056';
-- hijo ab43ed78 | cedula padre 1050920056
UPDATE hijo SET fecha_nacimiento = '12/07/2023' WHERE id_hijo = 'ab43ed78' AND id_cedula = '1050920056';
-- hijo f7c62ea4 | cedula padre 91452758
UPDATE hijo SET fecha_nacimiento = '18/03/2021' WHERE id_hijo = 'f7c62ea4' AND id_cedula = '91452758';
-- hijo ba860549 | cedula padre 1099374488
UPDATE hijo SET fecha_nacimiento = '27/08/2019' WHERE id_hijo = 'ba860549' AND id_cedula = '1099374488';
-- hijo 396c767b | cedula padre 1099374488
UPDATE hijo SET fecha_nacimiento = '24/04/2016' WHERE id_hijo = '396c767b' AND id_cedula = '1099374488';
-- hijo 40437696 | cedula padre 91506805
UPDATE hijo SET fecha_nacimiento = '24/07/2020' WHERE id_hijo = '40437696' AND id_cedula = '91506805';
-- hijo 6a3ac532 | cedula padre 91506805
UPDATE hijo SET fecha_nacimiento = '14/07/2006' WHERE id_hijo = '6a3ac532' AND id_cedula = '91506805';
-- hijo 950d0115 | cedula padre 1098770376
UPDATE hijo SET fecha_nacimiento = '27/06/2020' WHERE id_hijo = '950d0115' AND id_cedula = '1098770376';
-- hijo 7481b682 | cedula padre 1098706254
UPDATE hijo SET fecha_nacimiento = '27/06/2012' WHERE id_hijo = '7481b682' AND id_cedula = '1098706254';
-- hijo 3cce6fae | cedula padre 1098706254
UPDATE hijo SET fecha_nacimiento = '01/04/2016' WHERE id_hijo = '3cce6fae' AND id_cedula = '1098706254';
-- hijo 0ac9b95d | cedula padre 18974435
UPDATE hijo SET fecha_nacimiento = '09/01/2018' WHERE id_hijo = '0ac9b95d' AND id_cedula = '18974435';
-- hijo 7cad5b62 | cedula padre 1098612610
UPDATE hijo SET fecha_nacimiento = '18/01/2012' WHERE id_hijo = '7cad5b62' AND id_cedula = '1098612610';
-- hijo e7dfed26 | cedula padre 1098612610
UPDATE hijo SET fecha_nacimiento = '28/08/2012' WHERE id_hijo = 'e7dfed26' AND id_cedula = '1098612610';
-- hijo 938175fd | cedula padre 1100891232
UPDATE hijo SET fecha_nacimiento = '10/09/2021' WHERE id_hijo = '938175fd' AND id_cedula = '1100891232';
-- hijo ef8f7cc6 | cedula padre 91468085
UPDATE hijo SET fecha_nacimiento = '03/05/2021' WHERE id_hijo = 'ef8f7cc6' AND id_cedula = '91468085';
-- hijo d3d4b478 | cedula padre 1098805526
UPDATE hijo SET fecha_nacimiento = '09/12/2018' WHERE id_hijo = 'd3d4b478' AND id_cedula = '1098805526';
-- hijo e644f7bc | cedula padre 91185275
UPDATE hijo SET fecha_nacimiento = '25/09/2010' WHERE id_hijo = 'e644f7bc' AND id_cedula = '91185275';
-- hijo fc425287 | cedula padre 91185275
UPDATE hijo SET fecha_nacimiento = '12/12/2013' WHERE id_hijo = 'fc425287' AND id_cedula = '91185275';
-- hijo adf87dae | cedula padre 1098738467
UPDATE hijo SET fecha_nacimiento = '05/05/2022' WHERE id_hijo = 'adf87dae' AND id_cedula = '1098738467';
-- hijo 5857eaae | cedula padre 91533211
UPDATE hijo SET fecha_nacimiento = '31/07/2004' WHERE id_hijo = '5857eaae' AND id_cedula = '91533211';
-- hijo 376934bc | cedula padre 91533211
UPDATE hijo SET fecha_nacimiento = '16/06/2011' WHERE id_hijo = '376934bc' AND id_cedula = '91533211';
-- hijo 356acc7f | cedula padre 91533211
UPDATE hijo SET fecha_nacimiento = '03/05/2010' WHERE id_hijo = '356acc7f' AND id_cedula = '91533211';
-- hijo 06aed95a | cedula padre 91533211
UPDATE hijo SET fecha_nacimiento = '06/06/2012' WHERE id_hijo = '06aed95a' AND id_cedula = '91533211';
-- hijo 41ef6ef2 | cedula padre 1098782929
UPDATE hijo SET fecha_nacimiento = '25/05/2014' WHERE id_hijo = '41ef6ef2' AND id_cedula = '1098782929';
-- hijo f396d14e | cedula padre 1065245775
UPDATE hijo SET fecha_nacimiento = '18/05/2023' WHERE id_hijo = 'f396d14e' AND id_cedula = '1065245775';
-- hijo c6d3d95f | cedula padre 100143304011982
UPDATE hijo SET fecha_nacimiento = '27/10/2005' WHERE id_hijo = 'c6d3d95f' AND id_cedula = '100143304011982';
-- hijo 9cf41aa9 | cedula padre 100143304011982
UPDATE hijo SET fecha_nacimiento = '27/10/2005' WHERE id_hijo = '9cf41aa9' AND id_cedula = '100143304011982';
-- hijo f0701119 | cedula padre 100143304011982
UPDATE hijo SET fecha_nacimiento = '04/01/2011' WHERE id_hijo = 'f0701119' AND id_cedula = '100143304011982';
-- hijo 5280695 | cedula padre 5278095
UPDATE hijo SET fecha_nacimiento = '07/10/2012' WHERE id_hijo = '5280695' AND id_cedula = '5278095';
-- hijo 5280655 | cedula padre 5278095
UPDATE hijo SET fecha_nacimiento = '17/08/2015' WHERE id_hijo = '5280655' AND id_cedula = '5278095';
-- hijo 5280343 | cedula padre 5278095
UPDATE hijo SET fecha_nacimiento = '08/12/2007' WHERE id_hijo = '5280343' AND id_cedula = '5278095';
-- hijo 6ed05064 | cedula padre 1065245739
UPDATE hijo SET fecha_nacimiento = '27/07/2020' WHERE id_hijo = '6ed05064' AND id_cedula = '1065245739';
-- hijo 63a82b9c | cedula padre 1098740472
UPDATE hijo SET fecha_nacimiento = '17/04/2021' WHERE id_hijo = '63a82b9c' AND id_cedula = '1098740472';
-- hijo 1098079044 | cedula padre 1098695299
UPDATE hijo SET fecha_nacimiento = '04/07/2016' WHERE id_hijo = '1098079044' AND id_cedula = '1098695299';
-- hijo bbf719d3 | cedula padre 1005333865
UPDATE hijo SET fecha_nacimiento = '29/08/2011' WHERE id_hijo = 'bbf719d3' AND id_cedula = '1005333865';
-- hijo b8b2a476 | cedula padre 1005333865
UPDATE hijo SET fecha_nacimiento = '14/05/2014' WHERE id_hijo = 'b8b2a476' AND id_cedula = '1005333865';
-- hijo 98eaeec2 | cedula padre 1005333865
UPDATE hijo SET fecha_nacimiento = '21/05/2016' WHERE id_hijo = '98eaeec2' AND id_cedula = '1005333865';
-- hijo 816b6116 | cedula padre 1098782901
UPDATE hijo SET fecha_nacimiento = '26/04/2023' WHERE id_hijo = '816b6116' AND id_cedula = '1098782901';
-- hijo aec306d7 | cedula padre 1063650266
UPDATE hijo SET fecha_nacimiento = '07/10/2012' WHERE id_hijo = 'aec306d7' AND id_cedula = '1063650266';
-- hijo e78ba0fe | cedula padre 1097304486
UPDATE hijo SET fecha_nacimiento = '09/07/2016' WHERE id_hijo = 'e78ba0fe' AND id_cedula = '1097304486';
-- hijo aa4cfd7c | cedula padre 1097304486
UPDATE hijo SET fecha_nacimiento = '29/02/2020' WHERE id_hijo = 'aa4cfd7c' AND id_cedula = '1097304486';
-- hijo a5eb07ee | cedula padre 1098647256
UPDATE hijo SET fecha_nacimiento = '19/10/2017' WHERE id_hijo = 'a5eb07ee' AND id_cedula = '1098647256';
-- hijo dee0fdba | cedula padre 1098647256
UPDATE hijo SET fecha_nacimiento = '05/12/2011' WHERE id_hijo = 'dee0fdba' AND id_cedula = '1098647256';
-- hijo 1098825361 | cedula padre 1007679366
UPDATE hijo SET fecha_nacimiento = '30/11/2017' WHERE id_hijo = '1098825361' AND id_cedula = '1007679366';
-- hijo 1100897551 | cedula padre 1007679366
UPDATE hijo SET fecha_nacimiento = '25/12/2018' WHERE id_hijo = '1100897551' AND id_cedula = '1007679366';
-- hijo 6eaafc52 | cedula padre 1007679366
UPDATE hijo SET fecha_nacimiento = '09/01/2016' WHERE id_hijo = '6eaafc52' AND id_cedula = '1007679366';
-- hijo dba8ab0c | cedula padre 1094579227
UPDATE hijo SET fecha_nacimiento = '19/07/2023' WHERE id_hijo = 'dba8ab0c' AND id_cedula = '1094579227';
-- hijo 17823258 | cedula padre 72342162
UPDATE hijo SET fecha_nacimiento = '28/03/2018' WHERE id_hijo = '17823258' AND id_cedula = '72342162';
-- hijo 2d790772 | cedula padre 1100888385
UPDATE hijo SET fecha_nacimiento = '08/12/2011' WHERE id_hijo = '2d790772' AND id_cedula = '1100888385';
-- hijo 1a484aec | cedula padre 1127947335
UPDATE hijo SET fecha_nacimiento = '04/02/2014' WHERE id_hijo = '1a484aec' AND id_cedula = '1127947335';
-- hijo ed5769b9 | cedula padre 1095946112
UPDATE hijo SET fecha_nacimiento = '21/11/2016' WHERE id_hijo = 'ed5769b9' AND id_cedula = '1095946112';
-- hijo e59c0e2a | cedula padre 1004364659
UPDATE hijo SET fecha_nacimiento = '25/02/2019' WHERE id_hijo = 'e59c0e2a' AND id_cedula = '1004364659';
-- hijo 81f57fcb | cedula padre 1095946112
UPDATE hijo SET fecha_nacimiento = '23/09/2021' WHERE id_hijo = '81f57fcb' AND id_cedula = '1095946112';
-- hijo cbf8607a | cedula padre 1098741455
UPDATE hijo SET fecha_nacimiento = '08/10/2012' WHERE id_hijo = 'cbf8607a' AND id_cedula = '1098741455';
-- hijo 86d20672 | cedula padre 1126427502
UPDATE hijo SET fecha_nacimiento = '05/06/2020' WHERE id_hijo = '86d20672' AND id_cedula = '1126427502';
-- hijo 0c93c80a | cedula padre 1102360952
UPDATE hijo SET fecha_nacimiento = '19/06/2013' WHERE id_hijo = '0c93c80a' AND id_cedula = '1102360952';
-- hijo 9f7e1e38 | cedula padre 1102360952
UPDATE hijo SET fecha_nacimiento = '26/10/2018' WHERE id_hijo = '9f7e1e38' AND id_cedula = '1102360952';
-- hijo a69c4a49 | cedula padre 91539339
UPDATE hijo SET fecha_nacimiento = '07/01/2010' WHERE id_hijo = 'a69c4a49' AND id_cedula = '91539339';
-- hijo 131aefda | cedula padre 91539339
UPDATE hijo SET fecha_nacimiento = '14/10/2015' WHERE id_hijo = '131aefda' AND id_cedula = '91539339';
-- hijo 518583f5 | cedula padre 91525181
UPDATE hijo SET fecha_nacimiento = '08/04/2011' WHERE id_hijo = '518583f5' AND id_cedula = '91525181';
-- hijo 112bb85a | cedula padre 1095917149
UPDATE hijo SET fecha_nacimiento = '16/10/2012' WHERE id_hijo = '112bb85a' AND id_cedula = '1095917149';
-- hijo af10b1ab | cedula padre 1095917149
UPDATE hijo SET fecha_nacimiento = '28/12/2022' WHERE id_hijo = 'af10b1ab' AND id_cedula = '1095917149';
-- hijo 950c60cd | cedula padre 91466051
UPDATE hijo SET fecha_nacimiento = '10/08/2003' WHERE id_hijo = '950c60cd' AND id_cedula = '91466051';
-- hijo 00e64c1c | cedula padre 1004966700
UPDATE hijo SET fecha_nacimiento = '28/05/2014' WHERE id_hijo = '00e64c1c' AND id_cedula = '1004966700';
-- hijo bfc3c0ad | cedula padre 91540171
UPDATE hijo SET fecha_nacimiento = '14/11/2017' WHERE id_hijo = 'bfc3c0ad' AND id_cedula = '91540171';
-- hijo 0dd5a7d9 | cedula padre 91540171
UPDATE hijo SET fecha_nacimiento = '31/05/2020' WHERE id_hijo = '0dd5a7d9' AND id_cedula = '91540171';
-- hijo 654104b3 | cedula padre 1100893519
UPDATE hijo SET fecha_nacimiento = '02/04/2018' WHERE id_hijo = '654104b3' AND id_cedula = '1100893519';
-- hijo 71a17b25 | cedula padre 1095830827
UPDATE hijo SET fecha_nacimiento = '29/06/2016' WHERE id_hijo = '71a17b25' AND id_cedula = '1095830827';
-- hijo 98193ecf | cedula padre 1098769935
UPDATE hijo SET fecha_nacimiento = '26/09/2018' WHERE id_hijo = '98193ecf' AND id_cedula = '1098769935';
-- hijo 400474a3 | cedula padre 1099371711
UPDATE hijo SET fecha_nacimiento = '12/11/2019' WHERE id_hijo = '400474a3' AND id_cedula = '1099371711';
-- hijo 376d0b1e | cedula padre 1100893469
UPDATE hijo SET fecha_nacimiento = '04/04/2018' WHERE id_hijo = '376d0b1e' AND id_cedula = '1100893469';
-- hijo e60f1756 | cedula padre 1100893469
UPDATE hijo SET fecha_nacimiento = '26/03/2023' WHERE id_hijo = 'e60f1756' AND id_cedula = '1100893469';
-- hijo 8981c433 | cedula padre 91477701
UPDATE hijo SET fecha_nacimiento = '16/01/2019' WHERE id_hijo = '8981c433' AND id_cedula = '91477701';
-- hijo ba1506ce | cedula padre 1095940767
UPDATE hijo SET fecha_nacimiento = '04/04/2017' WHERE id_hijo = 'ba1506ce' AND id_cedula = '1095940767';
-- hijo 9b94ce3a | cedula padre 1095940767
UPDATE hijo SET fecha_nacimiento = '25/12/2021' WHERE id_hijo = '9b94ce3a' AND id_cedula = '1095940767';
-- hijo 8c3e58d9 | cedula padre 1102726333
UPDATE hijo SET fecha_nacimiento = '01/01/2019' WHERE id_hijo = '8c3e58d9' AND id_cedula = '1102726333';
-- hijo 0f390a77 | cedula padre 1102726333
UPDATE hijo SET fecha_nacimiento = '01/01/2019' WHERE id_hijo = '0f390a77' AND id_cedula = '1102726333';
-- hijo 601bc9bc | cedula padre 91536065
UPDATE hijo SET fecha_nacimiento = '28/09/2018' WHERE id_hijo = '601bc9bc' AND id_cedula = '91536065';
-- hijo ca5348f7 | cedula padre 1098618560
UPDATE hijo SET fecha_nacimiento = '25/12/2004' WHERE id_hijo = 'ca5348f7' AND id_cedula = '1098618560';
-- hijo ee361ee2 | cedula padre 1098618560
UPDATE hijo SET fecha_nacimiento = '20/03/2007' WHERE id_hijo = 'ee361ee2' AND id_cedula = '1098618560';
-- hijo f07481f5 | cedula padre 1098618560
UPDATE hijo SET fecha_nacimiento = '02/07/2010' WHERE id_hijo = 'f07481f5' AND id_cedula = '1098618560';
-- hijo 5b7454da | cedula padre 1098618560
UPDATE hijo SET fecha_nacimiento = '03/01/2014' WHERE id_hijo = '5b7454da' AND id_cedula = '1098618560';
-- hijo 2dbe8fb1 | cedula padre 1098618560
UPDATE hijo SET fecha_nacimiento = '09/12/2015' WHERE id_hijo = '2dbe8fb1' AND id_cedula = '1098618560';
-- hijo 022e801d | cedula padre 1098618560
UPDATE hijo SET fecha_nacimiento = '05/03/2021' WHERE id_hijo = '022e801d' AND id_cedula = '1098618560';
-- hijo 1753cc34 | cedula padre 1065609442
UPDATE hijo SET fecha_nacimiento = '03/03/2023' WHERE id_hijo = '1753cc34' AND id_cedula = '1065609442';
-- hijo 8f636955 | cedula padre 1148454856
UPDATE hijo SET fecha_nacimiento = '01/01/2015' WHERE id_hijo = '8f636955' AND id_cedula = '1148454856';
-- hijo ab4ca31e | cedula padre 1098791772
UPDATE hijo SET fecha_nacimiento = '01/01/2018' WHERE id_hijo = 'ab4ca31e' AND id_cedula = '1098791772';
-- hijo 6860152e | cedula padre 1098791772
UPDATE hijo SET fecha_nacimiento = '01/02/2016' WHERE id_hijo = '6860152e' AND id_cedula = '1098791772';
-- hijo 2f1187e4 | cedula padre 1098791772
UPDATE hijo SET fecha_nacimiento = '02/03/2020' WHERE id_hijo = '2f1187e4' AND id_cedula = '1098791772';
-- hijo 44f73b03 | cedula padre 1232894792
UPDATE hijo SET fecha_nacimiento = '14/03/2010' WHERE id_hijo = '44f73b03' AND id_cedula = '1232894792';
-- hijo 11cf0b27 | cedula padre 1232894792
UPDATE hijo SET fecha_nacimiento = '21/10/2017' WHERE id_hijo = '11cf0b27' AND id_cedula = '1232894792';
-- hijo 0165aac2 | cedula padre 13510483
UPDATE hijo SET fecha_nacimiento = '13/07/2007' WHERE id_hijo = '0165aac2' AND id_cedula = '13510483';
-- hijo 24f467c6 | cedula padre 1098731860
UPDATE hijo SET fecha_nacimiento = '04/01/2019' WHERE id_hijo = '24f467c6' AND id_cedula = '1098731860';
-- hijo 8d05ba17 | cedula padre 1095932394
UPDATE hijo SET fecha_nacimiento = '14/01/2017' WHERE id_hijo = '8d05ba17' AND id_cedula = '1095932394';
-- hijo 1fa18ead | cedula padre 1095932394
UPDATE hijo SET fecha_nacimiento = '11/05/2021' WHERE id_hijo = '1fa18ead' AND id_cedula = '1095932394';
-- hijo 2139549b | cedula padre 1234339501
UPDATE hijo SET fecha_nacimiento = '17/01/2019' WHERE id_hijo = '2139549b' AND id_cedula = '1234339501';
-- hijo c25090d6 | cedula padre 1234339501
UPDATE hijo SET fecha_nacimiento = '05/12/2022' WHERE id_hijo = 'c25090d6' AND id_cedula = '1234339501';
-- hijo 4f3e1b9c | cedula padre 1095913618
UPDATE hijo SET fecha_nacimiento = '17/10/2015' WHERE id_hijo = '4f3e1b9c' AND id_cedula = '1095913618';
-- hijo 26c4615c | cedula padre 1095936284
UPDATE hijo SET fecha_nacimiento = '16/02/2011' WHERE id_hijo = '26c4615c' AND id_cedula = '1095936284';
-- hijo 8e51f1c9 | cedula padre 1095936284
UPDATE hijo SET fecha_nacimiento = '12/05/2015' WHERE id_hijo = '8e51f1c9' AND id_cedula = '1095936284';
-- hijo 5a9bde79 | cedula padre 1048992624
UPDATE hijo SET fecha_nacimiento = '29/06/2019' WHERE id_hijo = '5a9bde79' AND id_cedula = '1048992624';
-- hijo d222043e | cedula padre 1234340637
UPDATE hijo SET fecha_nacimiento = '07/11/2020' WHERE id_hijo = 'd222043e' AND id_cedula = '1234340637';
-- hijo 818dddcf | cedula padre 7363482
UPDATE hijo SET fecha_nacimiento = '14/11/2019' WHERE id_hijo = '818dddcf' AND id_cedula = '7363482';
-- hijo 6dadf357 | cedula padre 7363482
UPDATE hijo SET fecha_nacimiento = '18/12/2009' WHERE id_hijo = '6dadf357' AND id_cedula = '7363482';
-- hijo e2fbdabb | cedula padre 91517971
UPDATE hijo SET fecha_nacimiento = '19/09/2009' WHERE id_hijo = 'e2fbdabb' AND id_cedula = '91517971';
-- hijo 8f261901 | cedula padre 91517971
UPDATE hijo SET fecha_nacimiento = '29/07/2014' WHERE id_hijo = '8f261901' AND id_cedula = '91517971';
-- hijo 710be709 | cedula padre 83092161
UPDATE hijo SET fecha_nacimiento = '13/06/2016' WHERE id_hijo = '710be709' AND id_cedula = '83092161';
-- hijo d76745ed | cedula padre 83092161
UPDATE hijo SET fecha_nacimiento = '15/11/2012' WHERE id_hijo = 'd76745ed' AND id_cedula = '83092161';
-- hijo fa9ac121 | cedula padre 13277757
UPDATE hijo SET fecha_nacimiento = '24/02/2009' WHERE id_hijo = 'fa9ac121' AND id_cedula = '13277757';
-- hijo 6f200b59 | cedula padre 13277757
UPDATE hijo SET fecha_nacimiento = '23/01/2015' WHERE id_hijo = '6f200b59' AND id_cedula = '13277757';
-- hijo d51ee9ac | cedula padre 1005328311
UPDATE hijo SET fecha_nacimiento = '20/11/2020' WHERE id_hijo = 'd51ee9ac' AND id_cedula = '1005328311';
-- hijo 0a2c8580 | cedula padre 1012363759
UPDATE hijo SET fecha_nacimiento = '02/09/2011' WHERE id_hijo = '0a2c8580' AND id_cedula = '1012363759';
-- hijo b1e8a70a | cedula padre 1012363759
UPDATE hijo SET fecha_nacimiento = '29/11/2014' WHERE id_hijo = 'b1e8a70a' AND id_cedula = '1012363759';
-- hijo a575c17c | cedula padre 1012363759
UPDATE hijo SET fecha_nacimiento = '21/05/2023' WHERE id_hijo = 'a575c17c' AND id_cedula = '1012363759';
-- hijo 24577361 | cedula padre 1102387913
UPDATE hijo SET fecha_nacimiento = '24/04/2018' WHERE id_hijo = '24577361' AND id_cedula = '1102387913';
-- hijo ab8f608a | cedula padre 1102387913
UPDATE hijo SET fecha_nacimiento = '29/10/2020' WHERE id_hijo = 'ab8f608a' AND id_cedula = '1102387913';
-- hijo f9dd223a | cedula padre 1005449415
UPDATE hijo SET fecha_nacimiento = '28/05/2022' WHERE id_hijo = 'f9dd223a' AND id_cedula = '1005449415';
-- hijo ace1aa2a | cedula padre 1063480733
UPDATE hijo SET fecha_nacimiento = '11/04/2022' WHERE id_hijo = 'ace1aa2a' AND id_cedula = '1063480733';
-- hijo 69b18b59 | cedula padre 1098763741
UPDATE hijo SET fecha_nacimiento = '26/12/2016' WHERE id_hijo = '69b18b59' AND id_cedula = '1098763741';
-- hijo 04ee5746 | cedula padre 1104184702
UPDATE hijo SET fecha_nacimiento = '22/04/2019' WHERE id_hijo = '04ee5746' AND id_cedula = '1104184702';
-- hijo 33bcae4c | cedula padre 1104184702
UPDATE hijo SET fecha_nacimiento = '22/04/2019' WHERE id_hijo = '33bcae4c' AND id_cedula = '1104184702';
-- hijo 62784f22 | cedula padre 91515676
UPDATE hijo SET fecha_nacimiento = '17/07/2011' WHERE id_hijo = '62784f22' AND id_cedula = '91515676';
-- hijo d22dfba8 | cedula padre 91515676
UPDATE hijo SET fecha_nacimiento = '28/09/2008' WHERE id_hijo = 'd22dfba8' AND id_cedula = '91515676';
-- hijo baa444f6 | cedula padre 11235279
UPDATE hijo SET fecha_nacimiento = '05/06/2016' WHERE id_hijo = 'baa444f6' AND id_cedula = '11235279';
-- hijo ea87c167 | cedula padre 91537121
UPDATE hijo SET fecha_nacimiento = '16/06/2012' WHERE id_hijo = 'ea87c167' AND id_cedula = '91537121';
-- hijo e8491153 | cedula padre 91537121
UPDATE hijo SET fecha_nacimiento = '23/06/2015' WHERE id_hijo = 'e8491153' AND id_cedula = '91537121';
-- hijo 812187a6 | cedula padre 1010185885
UPDATE hijo SET fecha_nacimiento = '27/07/2016' WHERE id_hijo = '812187a6' AND id_cedula = '1010185885';
-- hijo db5c03ec | cedula padre 1096958437
UPDATE hijo SET fecha_nacimiento = '12/04/2012' WHERE id_hijo = 'db5c03ec' AND id_cedula = '1096958437';
-- hijo f891504d | cedula padre 1096958437
UPDATE hijo SET fecha_nacimiento = '21/07/2020' WHERE id_hijo = 'f891504d' AND id_cedula = '1096958437';
-- hijo fe4cdb31 | cedula padre 1098634542
UPDATE hijo SET fecha_nacimiento = '31/03/2010' WHERE id_hijo = 'fe4cdb31' AND id_cedula = '1098634542';
-- hijo adc0d100 | cedula padre 1098700957
UPDATE hijo SET fecha_nacimiento = '03/08/2019' WHERE id_hijo = 'adc0d100' AND id_cedula = '1098700957';
-- hijo 6d74d47f | cedula padre 1095929628
UPDATE hijo SET fecha_nacimiento = '10/06/2021' WHERE id_hijo = '6d74d47f' AND id_cedula = '1095929628';
-- hijo eeceb2e9 | cedula padre 1098640982
UPDATE hijo SET fecha_nacimiento = '19/05/2015' WHERE id_hijo = 'eeceb2e9' AND id_cedula = '1098640982';
-- hijo 4759b26d | cedula padre 1007470538
UPDATE hijo SET fecha_nacimiento = '22/08/2016' WHERE id_hijo = '4759b26d' AND id_cedula = '1007470538';
-- hijo c8b970d4 | cedula padre 1007470538
UPDATE hijo SET fecha_nacimiento = '10/11/2018' WHERE id_hijo = 'c8b970d4' AND id_cedula = '1007470538';
-- hijo 5e5b9c91 | cedula padre 63488969
UPDATE hijo SET fecha_nacimiento = '11/07/1994' WHERE id_hijo = '5e5b9c91' AND id_cedula = '63488969';
-- hijo 2dcb8016 | cedula padre 63488969
UPDATE hijo SET fecha_nacimiento = '08/04/1997' WHERE id_hijo = '2dcb8016' AND id_cedula = '63488969';
-- hijo 344e43a4 | cedula padre 1102387740
UPDATE hijo SET fecha_nacimiento = '25/04/2019' WHERE id_hijo = '344e43a4' AND id_cedula = '1102387740';
-- hijo 3b7caae5 | cedula padre 729244410021987
UPDATE hijo SET fecha_nacimiento = '24/01/2010' WHERE id_hijo = '3b7caae5' AND id_cedula = '729244410021987';
-- hijo 1097153784 | cedula padre 1098627667
UPDATE hijo SET fecha_nacimiento = '27/06/2023' WHERE id_hijo = '1097153784' AND id_cedula = '1098627667';
-- hijo a470e9a0 | cedula padre 1098756695
UPDATE hijo SET fecha_nacimiento = '24/12/2019' WHERE id_hijo = 'a470e9a0' AND id_cedula = '1098756695';
-- hijo 07332b81 | cedula padre 13746278
UPDATE hijo SET fecha_nacimiento = '14/10/2014' WHERE id_hijo = '07332b81' AND id_cedula = '13746278';
-- hijo ea1a4764 | cedula padre 91533938
UPDATE hijo SET fecha_nacimiento = '31/12/2018' WHERE id_hijo = 'ea1a4764' AND id_cedula = '91533938';
-- hijo 5c043066 | cedula padre 88171205
UPDATE hijo SET fecha_nacimiento = '09/06/2014' WHERE id_hijo = '5c043066' AND id_cedula = '88171205';
-- hijo 1d0d1e11 | cedula padre 8167720
UPDATE hijo SET fecha_nacimiento = '02/10/2009' WHERE id_hijo = '1d0d1e11' AND id_cedula = '8167720';
-- hijo ec5b2b2d | cedula padre 8167720
UPDATE hijo SET fecha_nacimiento = '30/05/2018' WHERE id_hijo = 'ec5b2b2d' AND id_cedula = '8167720';
-- hijo 66dd8303 | cedula padre 8167720
UPDATE hijo SET fecha_nacimiento = '18/07/2013' WHERE id_hijo = '66dd8303' AND id_cedula = '8167720';
-- hijo a1f99c15 | cedula padre 1102723821
UPDATE hijo SET fecha_nacimiento = '02/10/2014' WHERE id_hijo = 'a1f99c15' AND id_cedula = '1102723821';
-- hijo 9d58db52 | cedula padre 1102723821
UPDATE hijo SET fecha_nacimiento = '07/03/2022' WHERE id_hijo = '9d58db52' AND id_cedula = '1102723821';
-- hijo 1b99a779 | cedula padre 13746278
UPDATE hijo SET fecha_nacimiento = '19/09/2012' WHERE id_hijo = '1b99a779' AND id_cedula = '13746278';
-- hijo 0db0e8d6 | cedula padre 1042436560
UPDATE hijo SET fecha_nacimiento = '14/12/2011' WHERE id_hijo = '0db0e8d6' AND id_cedula = '1042436560';
-- hijo 73691c66 | cedula padre 1042436560
UPDATE hijo SET fecha_nacimiento = '07/09/2013' WHERE id_hijo = '73691c66' AND id_cedula = '1042436560';
-- hijo d9fd6851 | cedula padre 1042436560
UPDATE hijo SET fecha_nacimiento = '07/09/2011' WHERE id_hijo = 'd9fd6851' AND id_cedula = '1042436560';
-- hijo 00713a14 | cedula padre 1042436560
UPDATE hijo SET fecha_nacimiento = '07/08/2015' WHERE id_hijo = '00713a14' AND id_cedula = '1042436560';
-- hijo e46d7d3d | cedula padre 1099365824
UPDATE hijo SET fecha_nacimiento = '29/05/2015' WHERE id_hijo = 'e46d7d3d' AND id_cedula = '1099365824';
-- hijo b51fb0e3 | cedula padre 91363908
UPDATE hijo SET fecha_nacimiento = '06/06/2019' WHERE id_hijo = 'b51fb0e3' AND id_cedula = '91363908';
-- hijo add8c143 | cedula padre 1098645575
UPDATE hijo SET fecha_nacimiento = '17/11/2014' WHERE id_hijo = 'add8c143' AND id_cedula = '1098645575';
-- hijo 9816c803 | cedula padre 1098645575
UPDATE hijo SET fecha_nacimiento = '08/02/2017' WHERE id_hijo = '9816c803' AND id_cedula = '1098645575';
-- hijo 889f72b4 | cedula padre 1102362259
UPDATE hijo SET fecha_nacimiento = '24/09/2011' WHERE id_hijo = '889f72b4' AND id_cedula = '1102362259';
-- hijo b2986f72 | cedula padre 1102362259
UPDATE hijo SET fecha_nacimiento = '14/08/2014' WHERE id_hijo = 'b2986f72' AND id_cedula = '1102362259';
-- hijo ec0e4a46 | cedula padre 1102362259
UPDATE hijo SET fecha_nacimiento = '20/10/2019' WHERE id_hijo = 'ec0e4a46' AND id_cedula = '1102362259';
-- hijo 57403e7b | cedula padre 1098618482
UPDATE hijo SET fecha_nacimiento = '29/08/2011' WHERE id_hijo = '57403e7b' AND id_cedula = '1098618482';
-- hijo efab816b | cedula padre 1098618482
UPDATE hijo SET fecha_nacimiento = '13/06/2014' WHERE id_hijo = 'efab816b' AND id_cedula = '1098618482';
-- hijo b56749c2 | cedula padre 91294734
UPDATE hijo SET fecha_nacimiento = '19/02/2006' WHERE id_hijo = 'b56749c2' AND id_cedula = '91294734';
-- hijo 1bacce09 | cedula padre 91294734
UPDATE hijo SET fecha_nacimiento = '02/04/2021' WHERE id_hijo = '1bacce09' AND id_cedula = '91294734';
-- hijo 1d8db546 | cedula padre 91536394
UPDATE hijo SET fecha_nacimiento = '29/11/2010' WHERE id_hijo = '1d8db546' AND id_cedula = '91536394';
-- hijo 91d850ee | cedula padre 1005539233
UPDATE hijo SET fecha_nacimiento = '07/08/2021' WHERE id_hijo = '91d850ee' AND id_cedula = '1005539233';
-- hijo 3e21b8f3 | cedula padre 1005539233
UPDATE hijo SET fecha_nacimiento = '10/01/2024' WHERE id_hijo = '3e21b8f3' AND id_cedula = '1005539233';
-- hijo 59990953 | cedula padre 1088265800
UPDATE hijo SET fecha_nacimiento = '19/01/2016' WHERE id_hijo = '59990953' AND id_cedula = '1088265800';
-- hijo 6dd73197 | cedula padre 1088265800
UPDATE hijo SET fecha_nacimiento = '19/01/2016' WHERE id_hijo = '6dd73197' AND id_cedula = '1088265800';
-- hijo eb317910 | cedula padre 1088265800
UPDATE hijo SET fecha_nacimiento = '02/12/2020' WHERE id_hijo = 'eb317910' AND id_cedula = '1088265800';
-- hijo f6808995 | cedula padre 1005178601
UPDATE hijo SET fecha_nacimiento = '23/07/2023' WHERE id_hijo = 'f6808995' AND id_cedula = '1005178601';
-- hijo 6b4aed7e | cedula padre 1005324457
UPDATE hijo SET fecha_nacimiento = '30/05/2023' WHERE id_hijo = '6b4aed7e' AND id_cedula = '1005324457';
-- hijo 2ee1dd64 | cedula padre 1100891753
UPDATE hijo SET fecha_nacimiento = '16/03/2023' WHERE id_hijo = '2ee1dd64' AND id_cedula = '1100891753';
-- hijo 07f74315 | cedula padre 1100891753
UPDATE hijo SET fecha_nacimiento = '25/01/2013' WHERE id_hijo = '07f74315' AND id_cedula = '1100891753';
-- hijo 38771c27 | cedula padre 1102353149
UPDATE hijo SET fecha_nacimiento = '21/03/2018' WHERE id_hijo = '38771c27' AND id_cedula = '1102353149';
-- hijo 345f4b17 | cedula padre 1102353149
UPDATE hijo SET fecha_nacimiento = '03/03/2023' WHERE id_hijo = '345f4b17' AND id_cedula = '1102353149';
-- hijo ebf8e6ec | cedula padre 1098822966
UPDATE hijo SET fecha_nacimiento = '15/01/2020' WHERE id_hijo = 'ebf8e6ec' AND id_cedula = '1098822966';
-- hijo aeff3689 | cedula padre 79626368
UPDATE hijo SET fecha_nacimiento = '16/08/2017' WHERE id_hijo = 'aeff3689' AND id_cedula = '79626368';
-- hijo 53c156c9 | cedula padre 1097991723
UPDATE hijo SET fecha_nacimiento = '17/09/2013' WHERE id_hijo = '53c156c9' AND id_cedula = '1097991723';
-- hijo 43c0328b | cedula padre 1102369280
UPDATE hijo SET fecha_nacimiento = '28/11/2011' WHERE id_hijo = '43c0328b' AND id_cedula = '1102369280';
-- hijo bba3c0e3 | cedula padre 1102369280
UPDATE hijo SET fecha_nacimiento = '19/11/2020' WHERE id_hijo = 'bba3c0e3' AND id_cedula = '1102369280';
-- hijo aedd3c5b | cedula padre 91467261
UPDATE hijo SET fecha_nacimiento = '04/09/2017' WHERE id_hijo = 'aedd3c5b' AND id_cedula = '91467261';
-- hijo c00c4a65 | cedula padre 1063620900
UPDATE hijo SET fecha_nacimiento = '27/08/2022' WHERE id_hijo = 'c00c4a65' AND id_cedula = '1063620900';
-- hijo 7dac0448 | cedula padre 1063620900
UPDATE hijo SET fecha_nacimiento = '27/08/2015' WHERE id_hijo = '7dac0448' AND id_cedula = '1063620900';
-- hijo c20e630b | cedula padre 1095838237
UPDATE hijo SET fecha_nacimiento = '14/08/2016' WHERE id_hijo = 'c20e630b' AND id_cedula = '1095838237';
-- hijo 59fe1eea | cedula padre 1005259277
UPDATE hijo SET fecha_nacimiento = '07/07/2023' WHERE id_hijo = '59fe1eea' AND id_cedula = '1005259277';
-- hijo f1d0f87e | cedula padre 1234340651
UPDATE hijo SET fecha_nacimiento = '13/10/2022' WHERE id_hijo = 'f1d0f87e' AND id_cedula = '1234340651';
-- hijo c10b0a45 | cedula padre 1098611431
UPDATE hijo SET fecha_nacimiento = '25/07/2021' WHERE id_hijo = 'c10b0a45' AND id_cedula = '1098611431';
-- hijo 70efd57e | cedula padre 1095909192
UPDATE hijo SET fecha_nacimiento = '09/03/2013' WHERE id_hijo = '70efd57e' AND id_cedula = '1095909192';
-- hijo be40d21c | cedula padre 1095909192
UPDATE hijo SET fecha_nacimiento = '28/08/2015' WHERE id_hijo = 'be40d21c' AND id_cedula = '1095909192';
-- hijo edde1e83 | cedula padre 91487619
UPDATE hijo SET fecha_nacimiento = '02/08/2012' WHERE id_hijo = 'edde1e83' AND id_cedula = '91487619';
-- hijo d5379fa0 | cedula padre 91487619
UPDATE hijo SET fecha_nacimiento = '18/03/2015' WHERE id_hijo = 'd5379fa0' AND id_cedula = '91487619';
-- hijo c7415976 | cedula padre 91487619
UPDATE hijo SET fecha_nacimiento = '18/03/2015' WHERE id_hijo = 'c7415976' AND id_cedula = '91487619';
-- hijo f8da2c8f | cedula padre 1098759821
UPDATE hijo SET fecha_nacimiento = '01/08/2019' WHERE id_hijo = 'f8da2c8f' AND id_cedula = '1098759821';
-- hijo 1a4d3359 | cedula padre 91514544
UPDATE hijo SET fecha_nacimiento = '11/12/2013' WHERE id_hijo = '1a4d3359' AND id_cedula = '91514544';
-- hijo 9016f0e1 | cedula padre 91514544
UPDATE hijo SET fecha_nacimiento = '11/06/2023' WHERE id_hijo = '9016f0e1' AND id_cedula = '91514544';
-- hijo 67a2cbba | cedula padre 1095937389
UPDATE hijo SET fecha_nacimiento = '12/07/2018' WHERE id_hijo = '67a2cbba' AND id_cedula = '1095937389';
-- hijo e1782ff7 | cedula padre 1095917411
UPDATE hijo SET fecha_nacimiento = '15/11/2016' WHERE id_hijo = 'e1782ff7' AND id_cedula = '1095917411';
-- hijo 3baa1abc | cedula padre 1005336879
UPDATE hijo SET fecha_nacimiento = '05/03/2023' WHERE id_hijo = '3baa1abc' AND id_cedula = '1005336879';
-- hijo 4df340de | cedula padre 1005336879
UPDATE hijo SET fecha_nacimiento = '14/08/2018' WHERE id_hijo = '4df340de' AND id_cedula = '1005336879';
-- hijo d237c433 | cedula padre 1098674839
UPDATE hijo SET fecha_nacimiento = '25/02/2022' WHERE id_hijo = 'd237c433' AND id_cedula = '1098674839';
-- hijo 6acd92b4 | cedula padre 1098771486
UPDATE hijo SET fecha_nacimiento = '18/01/2021' WHERE id_hijo = '6acd92b4' AND id_cedula = '1098771486';
-- hijo c9e3ed93 | cedula padre 1095828837
UPDATE hijo SET fecha_nacimiento = '22/02/2021' WHERE id_hijo = 'c9e3ed93' AND id_cedula = '1095828837';
-- hijo 20a5c30c | cedula padre 1098800312
UPDATE hijo SET fecha_nacimiento = '18/09/2023' WHERE id_hijo = '20a5c30c' AND id_cedula = '1098800312';
-- hijo 070299b4 | cedula padre 1098800312
UPDATE hijo SET fecha_nacimiento = '19/09/2016' WHERE id_hijo = '070299b4' AND id_cedula = '1098800312';
-- hijo e719f326 | cedula padre 1095838464
UPDATE hijo SET fecha_nacimiento = '08/02/2022' WHERE id_hijo = 'e719f326' AND id_cedula = '1095838464';
-- hijo d80d0355 | cedula padre 1099364262
UPDATE hijo SET fecha_nacimiento = '14/10/2012' WHERE id_hijo = 'd80d0355' AND id_cedula = '1099364262';
-- hijo b576f490 | cedula padre 1099364262
UPDATE hijo SET fecha_nacimiento = '21/10/2020' WHERE id_hijo = 'b576f490' AND id_cedula = '1099364262';
-- hijo 4c5fb70d | cedula padre 1098716949
UPDATE hijo SET fecha_nacimiento = '01/02/2013' WHERE id_hijo = '4c5fb70d' AND id_cedula = '1098716949';
-- hijo 6f2d89d9 | cedula padre 1098716949
UPDATE hijo SET fecha_nacimiento = '19/06/2017' WHERE id_hijo = '6f2d89d9' AND id_cedula = '1098716949';
-- hijo 950cb963 | cedula padre 91539526
UPDATE hijo SET fecha_nacimiento = '17/11/2017' WHERE id_hijo = '950cb963' AND id_cedula = '91539526';
-- hijo 84d296e5 | cedula padre 1096951236
UPDATE hijo SET fecha_nacimiento = '18/06/2023' WHERE id_hijo = '84d296e5' AND id_cedula = '1096951236';
-- hijo 77e18c46 | cedula padre 1004161830
UPDATE hijo SET fecha_nacimiento = '25/08/2017' WHERE id_hijo = '77e18c46' AND id_cedula = '1004161830';
-- hijo 0e3d7b73 | cedula padre 1004161830
UPDATE hijo SET fecha_nacimiento = '01/12/2022' WHERE id_hijo = '0e3d7b73' AND id_cedula = '1004161830';
-- hijo 59d4af58 | cedula padre 91159389
UPDATE hijo SET fecha_nacimiento = '11/12/2011' WHERE id_hijo = '59d4af58' AND id_cedula = '91159389';
-- hijo 64032d33 | cedula padre 91159389
UPDATE hijo SET fecha_nacimiento = '05/04/2005' WHERE id_hijo = '64032d33' AND id_cedula = '91159389';
-- hijo c3147cc2 | cedula padre 13743729
UPDATE hijo SET fecha_nacimiento = '02/11/2003' WHERE id_hijo = 'c3147cc2' AND id_cedula = '13743729';
-- hijo 21958ac6 | cedula padre 91286747
UPDATE hijo SET fecha_nacimiento = '16/09/2011' WHERE id_hijo = '21958ac6' AND id_cedula = '91286747';
-- hijo 78ef73d9 | cedula padre 91286747
UPDATE hijo SET fecha_nacimiento = '24/07/2007' WHERE id_hijo = '78ef73d9' AND id_cedula = '91286747';
-- hijo 0a30eba0 | cedula padre 60264058
UPDATE hijo SET fecha_nacimiento = '17/04/2014' WHERE id_hijo = '0a30eba0' AND id_cedula = '60264058';
-- hijo 0d522b59 | cedula padre 1098703863
UPDATE hijo SET fecha_nacimiento = '15/12/2013' WHERE id_hijo = '0d522b59' AND id_cedula = '1098703863';
-- hijo 217a0d4d | cedula padre 1098703863
UPDATE hijo SET fecha_nacimiento = '20/05/2021' WHERE id_hijo = '217a0d4d' AND id_cedula = '1098703863';
-- hijo 47ef81b5 | cedula padre 1098765061
UPDATE hijo SET fecha_nacimiento = '16/12/2019' WHERE id_hijo = '47ef81b5' AND id_cedula = '1098765061';
-- hijo 0f5a1c0e | cedula padre 1066093663
UPDATE hijo SET fecha_nacimiento = '06/08/2014' WHERE id_hijo = '0f5a1c0e' AND id_cedula = '1066093663';
-- hijo b95cef44 | cedula padre 1066093663
UPDATE hijo SET fecha_nacimiento = '15/04/2023' WHERE id_hijo = 'b95cef44' AND id_cedula = '1066093663';
-- hijo 963b8a25 | cedula padre 1095813788
UPDATE hijo SET fecha_nacimiento = '23/04/2009' WHERE id_hijo = '963b8a25' AND id_cedula = '1095813788';
-- hijo 1614821c | cedula padre 1100893813
UPDATE hijo SET fecha_nacimiento = '18/09/2012' WHERE id_hijo = '1614821c' AND id_cedula = '1100893813';
-- hijo 5dd17c89 | cedula padre 1005109559
UPDATE hijo SET fecha_nacimiento = '17/02/2020' WHERE id_hijo = '5dd17c89' AND id_cedula = '1005109559';
-- hijo 630138be | cedula padre 1005109559
UPDATE hijo SET fecha_nacimiento = '10/07/2023' WHERE id_hijo = '630138be' AND id_cedula = '1005109559';
-- hijo f6024b1d | cedula padre 812344807011996
UPDATE hijo SET fecha_nacimiento = '17/08/2021' WHERE id_hijo = 'f6024b1d' AND id_cedula = '812344807011996';
-- hijo 731fd2f4 | cedula padre 37535672
UPDATE hijo SET fecha_nacimiento = '20/07/2002' WHERE id_hijo = '731fd2f4' AND id_cedula = '37535672';
-- hijo d9399032 | cedula padre 37535672
UPDATE hijo SET fecha_nacimiento = '20/07/2002' WHERE id_hijo = 'd9399032' AND id_cedula = '37535672';
-- hijo 7f145980 | cedula padre 1100895546
UPDATE hijo SET fecha_nacimiento = '03/05/2019' WHERE id_hijo = '7f145980' AND id_cedula = '1100895546';
-- hijo ccb844cf | cedula padre 1100895546
UPDATE hijo SET fecha_nacimiento = '11/06/2016' WHERE id_hijo = 'ccb844cf' AND id_cedula = '1100895546';
-- hijo b978f3ec | cedula padre 63526063
UPDATE hijo SET fecha_nacimiento = '03/10/2023' WHERE id_hijo = 'b978f3ec' AND id_cedula = '63526063';
-- hijo 74295450 | cedula padre 37747995
UPDATE hijo SET fecha_nacimiento = '12/10/2017' WHERE id_hijo = '74295450' AND id_cedula = '37747995';
-- hijo 0861b7ce | cedula padre 1098665901
UPDATE hijo SET fecha_nacimiento = '17/04/2023' WHERE id_hijo = '0861b7ce' AND id_cedula = '1098665901';
-- hijo 50cdd874 | cedula padre 1100888638
UPDATE hijo SET fecha_nacimiento = '04/05/2011' WHERE id_hijo = '50cdd874' AND id_cedula = '1100888638';
-- hijo 60769c3d | cedula padre 1093911471
UPDATE hijo SET fecha_nacimiento = '06/11/2008' WHERE id_hijo = '60769c3d' AND id_cedula = '1093911471';
-- hijo 27af6539 | cedula padre 1093911471
UPDATE hijo SET fecha_nacimiento = '10/08/2013' WHERE id_hijo = '27af6539' AND id_cedula = '1093911471';
-- hijo 4c3043ee | cedula padre 1093911471
UPDATE hijo SET fecha_nacimiento = '23/04/2015' WHERE id_hijo = '4c3043ee' AND id_cedula = '1093911471';
-- hijo d5b8b568 | cedula padre 91242269
UPDATE hijo SET fecha_nacimiento = '02/09/2018' WHERE id_hijo = 'd5b8b568' AND id_cedula = '91242269';
-- hijo 1a957eb8 | cedula padre 91242269
UPDATE hijo SET fecha_nacimiento = '09/01/2014' WHERE id_hijo = '1a957eb8' AND id_cedula = '91242269';
-- hijo 9895e10e | cedula padre 1098636592
UPDATE hijo SET fecha_nacimiento = '01/07/2007' WHERE id_hijo = '9895e10e' AND id_cedula = '1098636592';
-- hijo 260f9295 | cedula padre 1098636592
UPDATE hijo SET fecha_nacimiento = '09/05/2013' WHERE id_hijo = '260f9295' AND id_cedula = '1098636592';
-- hijo 84eaa744 | cedula padre 1102385966
UPDATE hijo SET fecha_nacimiento = '30/05/2020' WHERE id_hijo = '84eaa744' AND id_cedula = '1102385966';
-- hijo de6b355e | cedula padre 1094778035
UPDATE hijo SET fecha_nacimiento = '21/09/2021' WHERE id_hijo = 'de6b355e' AND id_cedula = '1094778035';
-- hijo 006ddeb5 | cedula padre 1100895396
UPDATE hijo SET fecha_nacimiento = '20/09/2017' WHERE id_hijo = '006ddeb5' AND id_cedula = '1100895396';
-- hijo 7f5c4ea8 | cedula padre 1100895396
UPDATE hijo SET fecha_nacimiento = '21/10/2022' WHERE id_hijo = '7f5c4ea8' AND id_cedula = '1100895396';
-- hijo 5f157da8 | cedula padre 1005541986
UPDATE hijo SET fecha_nacimiento = '14/10/2021' WHERE id_hijo = '5f157da8' AND id_cedula = '1005541986';
-- hijo 2faa3d12 | cedula padre 1005541986
UPDATE hijo SET fecha_nacimiento = '12/12/2014' WHERE id_hijo = '2faa3d12' AND id_cedula = '1005541986';
-- hijo b85fb955 | cedula padre 1095826663
UPDATE hijo SET fecha_nacimiento = '12/05/2022' WHERE id_hijo = 'b85fb955' AND id_cedula = '1095826663';
-- hijo 21683203 | cedula padre 1095826663
UPDATE hijo SET fecha_nacimiento = '12/05/2013' WHERE id_hijo = '21683203' AND id_cedula = '1095826663';
-- hijo bfb33dd9 | cedula padre 1095826663
UPDATE hijo SET fecha_nacimiento = '06/05/2015' WHERE id_hijo = 'bfb33dd9' AND id_cedula = '1095826663';
-- hijo 7a28fc8c | cedula padre 1098688051
UPDATE hijo SET fecha_nacimiento = '24/07/2020' WHERE id_hijo = '7a28fc8c' AND id_cedula = '1098688051';
-- hijo fd5b7d1e | cedula padre 1102362432
UPDATE hijo SET fecha_nacimiento = '13/07/2017' WHERE id_hijo = 'fd5b7d1e' AND id_cedula = '1102362432';
-- hijo 78292db8 | cedula padre 91353575
UPDATE hijo SET fecha_nacimiento = '19/09/2008' WHERE id_hijo = '78292db8' AND id_cedula = '91353575';
-- hijo 5707cf30 | cedula padre 91353575
UPDATE hijo SET fecha_nacimiento = '04/01/2018' WHERE id_hijo = '5707cf30' AND id_cedula = '91353575';
-- hijo 3f9260f7 | cedula padre 1099734814
UPDATE hijo SET fecha_nacimiento = '02/06/2023' WHERE id_hijo = '3f9260f7' AND id_cedula = '1099734814';
-- hijo 36baa294 | cedula padre 1098800312
UPDATE hijo SET fecha_nacimiento = '19/06/2018' WHERE id_hijo = '36baa294' AND id_cedula = '1098800312';
-- hijo 3e21ad4b | cedula padre 91176452
UPDATE hijo SET fecha_nacimiento = '15/07/2015' WHERE id_hijo = '3e21ad4b' AND id_cedula = '91176452';
-- hijo 9162210c | cedula padre 91176452
UPDATE hijo SET fecha_nacimiento = '15/07/2015' WHERE id_hijo = '9162210c' AND id_cedula = '91176452';
-- hijo f3348de1 | cedula padre 91539846
UPDATE hijo SET fecha_nacimiento = '03/02/2007' WHERE id_hijo = 'f3348de1' AND id_cedula = '91539846';
-- hijo 832ca64c | cedula padre 91539846
UPDATE hijo SET fecha_nacimiento = '27/05/2008' WHERE id_hijo = '832ca64c' AND id_cedula = '91539846';
-- hijo ad71e073 | cedula padre 91539846
UPDATE hijo SET fecha_nacimiento = '27/01/2017' WHERE id_hijo = 'ad71e073' AND id_cedula = '91539846';
-- hijo a078db3d | cedula padre 91539846
UPDATE hijo SET fecha_nacimiento = '01/07/2008' WHERE id_hijo = 'a078db3d' AND id_cedula = '91539846';
-- hijo 49b8dc25 | cedula padre 91363908
UPDATE hijo SET fecha_nacimiento = '28/09/2006' WHERE id_hijo = '49b8dc25' AND id_cedula = '91363908';
-- hijo 95c7d5ae | cedula padre 1084732627
UPDATE hijo SET fecha_nacimiento = '31/12/2011' WHERE id_hijo = '95c7d5ae' AND id_cedula = '1084732627';
-- hijo 9190a5a4 | cedula padre 4588561
UPDATE hijo SET fecha_nacimiento = '25/01/2009' WHERE id_hijo = '9190a5a4' AND id_cedula = '4588561';
-- hijo aa6b892f | cedula padre 4588561
UPDATE hijo SET fecha_nacimiento = '16/04/2011' WHERE id_hijo = 'aa6b892f' AND id_cedula = '4588561';
-- hijo 71bc0044 | cedula padre 4588561
UPDATE hijo SET fecha_nacimiento = '27/05/2014' WHERE id_hijo = '71bc0044' AND id_cedula = '4588561';
-- hijo ce93977d | cedula padre 91536699
UPDATE hijo SET fecha_nacimiento = '02/12/2006' WHERE id_hijo = 'ce93977d' AND id_cedula = '91536699';
-- hijo 4ad0e46b | cedula padre 91536699
UPDATE hijo SET fecha_nacimiento = '06/10/2009' WHERE id_hijo = '4ad0e46b' AND id_cedula = '91536699';
-- hijo 4370e9c6 | cedula padre 91536699
UPDATE hijo SET fecha_nacimiento = '11/06/2016' WHERE id_hijo = '4370e9c6' AND id_cedula = '91536699';
-- hijo b9d400d2 | cedula padre 1098627154
UPDATE hijo SET fecha_nacimiento = '21/03/2018' WHERE id_hijo = 'b9d400d2' AND id_cedula = '1098627154';
-- hijo cabdb235 | cedula padre 1098627154
UPDATE hijo SET fecha_nacimiento = '24/01/2008' WHERE id_hijo = 'cabdb235' AND id_cedula = '1098627154';
-- hijo bd93a3c4 | cedula padre 1102363801
UPDATE hijo SET fecha_nacimiento = '13/02/2023' WHERE id_hijo = 'bd93a3c4' AND id_cedula = '1102363801';
-- hijo 23fe3131 | cedula padre 1095916241
UPDATE hijo SET fecha_nacimiento = '13/11/2013' WHERE id_hijo = '23fe3131' AND id_cedula = '1095916241';
-- hijo e5734088 | cedula padre 1095916241
UPDATE hijo SET fecha_nacimiento = '20/11/2017' WHERE id_hijo = 'e5734088' AND id_cedula = '1095916241';
-- hijo 40f854d6 | cedula padre 1122409117
UPDATE hijo SET fecha_nacimiento = '05/06/2020' WHERE id_hijo = '40f854d6' AND id_cedula = '1122409117';
-- hijo e292fb80 | cedula padre 1005162501
UPDATE hijo SET fecha_nacimiento = '07/10/2020' WHERE id_hijo = 'e292fb80' AND id_cedula = '1005162501';
-- hijo 721c2d8a | cedula padre 1091683312
UPDATE hijo SET fecha_nacimiento = '05/04/2022' WHERE id_hijo = '721c2d8a' AND id_cedula = '1091683312';
-- hijo 73fe986f | cedula padre 43536705
UPDATE hijo SET fecha_nacimiento = '13/01/1995' WHERE id_hijo = '73fe986f' AND id_cedula = '43536705';
-- hijo dba49d52 | cedula padre 1000046788
UPDATE hijo SET fecha_nacimiento = '22/02/2021' WHERE id_hijo = 'dba49d52' AND id_cedula = '1000046788';
-- hijo d0e4a897 | cedula padre 1003334809
UPDATE hijo SET fecha_nacimiento = '04/01/2017' WHERE id_hijo = 'd0e4a897' AND id_cedula = '1003334809';
-- hijo 720e6cb7 | cedula padre 1003334809
UPDATE hijo SET fecha_nacimiento = '09/09/2019' WHERE id_hijo = '720e6cb7' AND id_cedula = '1003334809';
-- hijo c43abed7 | cedula padre 6990572
UPDATE hijo SET fecha_nacimiento = '18/03/2023' WHERE id_hijo = 'c43abed7' AND id_cedula = '6990572';
-- hijo c6f2d1ed | cedula padre 6990572
UPDATE hijo SET fecha_nacimiento = '18/11/2021' WHERE id_hijo = 'c6f2d1ed' AND id_cedula = '6990572';
-- hijo dd6cc9d2 | cedula padre 1005329357
UPDATE hijo SET fecha_nacimiento = '09/02/2021' WHERE id_hijo = 'dd6cc9d2' AND id_cedula = '1005329357';
-- hijo ab9708c0 | cedula padre 1010049419
UPDATE hijo SET fecha_nacimiento = '28/10/2020' WHERE id_hijo = 'ab9708c0' AND id_cedula = '1010049419';
-- hijo 033e07bd | cedula padre 1098779918
UPDATE hijo SET fecha_nacimiento = '01/03/2017' WHERE id_hijo = '033e07bd' AND id_cedula = '1098779918';
-- hijo 9b7c36d7 | cedula padre 1098750363
UPDATE hijo SET fecha_nacimiento = '25/07/2023' WHERE id_hijo = '9b7c36d7' AND id_cedula = '1098750363';
-- hijo 1e615de7 | cedula padre 1005340217
UPDATE hijo SET fecha_nacimiento = '25/02/2018' WHERE id_hijo = '1e615de7' AND id_cedula = '1005340217';
-- hijo e762c687 | cedula padre 1067036723
UPDATE hijo SET fecha_nacimiento = '21/01/2020' WHERE id_hijo = 'e762c687' AND id_cedula = '1067036723';
-- hijo e1f5cee7 | cedula padre 1067036723
UPDATE hijo SET fecha_nacimiento = '08/04/2023' WHERE id_hijo = 'e1f5cee7' AND id_cedula = '1067036723';
-- hijo bdb24e41 | cedula padre 1007412982
UPDATE hijo SET fecha_nacimiento = '17/04/2023' WHERE id_hijo = 'bdb24e41' AND id_cedula = '1007412982';
-- hijo bff0583a | cedula padre 1007412982
UPDATE hijo SET fecha_nacimiento = '14/05/2020' WHERE id_hijo = 'bff0583a' AND id_cedula = '1007412982';
-- hijo 2cbfcc8f | cedula padre 1007412982
UPDATE hijo SET fecha_nacimiento = '06/09/2022' WHERE id_hijo = '2cbfcc8f' AND id_cedula = '1007412982';
-- hijo 60eff595 | cedula padre 1095936020
UPDATE hijo SET fecha_nacimiento = '21/08/2013' WHERE id_hijo = '60eff595' AND id_cedula = '1095936020';
-- hijo 12cdafdb | cedula padre 1005162790
UPDATE hijo SET fecha_nacimiento = '21/05/2017' WHERE id_hijo = '12cdafdb' AND id_cedula = '1005162790';
-- hijo 13d76588 | cedula padre 1095957238
UPDATE hijo SET fecha_nacimiento = '26/09/2018' WHERE id_hijo = '13d76588' AND id_cedula = '1095957238';
-- hijo 6dcde20a | cedula padre 1098611431
UPDATE hijo SET fecha_nacimiento = '18/03/2024' WHERE id_hijo = '6dcde20a' AND id_cedula = '1098611431';
-- hijo 9fd587eb | cedula padre 1098676271
UPDATE hijo SET fecha_nacimiento = '18/04/2010' WHERE id_hijo = '9fd587eb' AND id_cedula = '1098676271';
-- hijo bbc63730 | cedula padre 1098676271
UPDATE hijo SET fecha_nacimiento = '09/01/2015' WHERE id_hijo = 'bbc63730' AND id_cedula = '1098676271';
-- hijo fee9a3ba | cedula padre 1014182306
UPDATE hijo SET fecha_nacimiento = '27/06/2016' WHERE id_hijo = 'fee9a3ba' AND id_cedula = '1014182306';
-- hijo 2daa1a22 | cedula padre 1014182306
UPDATE hijo SET fecha_nacimiento = '29/12/2018' WHERE id_hijo = '2daa1a22' AND id_cedula = '1014182306';
-- hijo 58b7f7f5 | cedula padre 1005152959
UPDATE hijo SET fecha_nacimiento = '16/04/2024' WHERE id_hijo = '58b7f7f5' AND id_cedula = '1005152959';
-- hijo 65f01267 | cedula padre 1096246897
UPDATE hijo SET fecha_nacimiento = '08/12/2022' WHERE id_hijo = '65f01267' AND id_cedula = '1096246897';
-- hijo 63ca8a1e | cedula padre 1003167676
UPDATE hijo SET fecha_nacimiento = '11/08/2018' WHERE id_hijo = '63ca8a1e' AND id_cedula = '1003167676';
-- hijo 4a7749d7 | cedula padre 1005386544
UPDATE hijo SET fecha_nacimiento = '12/02/2024' WHERE id_hijo = '4a7749d7' AND id_cedula = '1005386544';
-- hijo fc55e0de | cedula padre 1097609443
UPDATE hijo SET fecha_nacimiento = '12/04/2017' WHERE id_hijo = 'fc55e0de' AND id_cedula = '1097609443';
-- hijo 95bfd5e0 | cedula padre 1095949619
UPDATE hijo SET fecha_nacimiento = '07/12/2013' WHERE id_hijo = '95bfd5e0' AND id_cedula = '1095949619';
-- hijo fda3d157 | cedula padre 4883960
UPDATE hijo SET fecha_nacimiento = '19/06/2020' WHERE id_hijo = 'fda3d157' AND id_cedula = '4883960';
-- hijo cf399a32 | cedula padre 1098767064
UPDATE hijo SET fecha_nacimiento = '30/01/2020' WHERE id_hijo = 'cf399a32' AND id_cedula = '1098767064';
-- hijo e6e641e4 | cedula padre 1067036744
UPDATE hijo SET fecha_nacimiento = '29/04/2022' WHERE id_hijo = 'e6e641e4' AND id_cedula = '1067036744';
-- hijo 83439386 | cedula padre 1067036744
UPDATE hijo SET fecha_nacimiento = '17/06/2020' WHERE id_hijo = '83439386' AND id_cedula = '1067036744';
-- hijo 3fe45cd7 | cedula padre 1098221752
UPDATE hijo SET fecha_nacimiento = '12/07/2016' WHERE id_hijo = '3fe45cd7' AND id_cedula = '1098221752';
-- hijo 65ac87c4 | cedula padre 37749526
UPDATE hijo SET fecha_nacimiento = '01/11/2014' WHERE id_hijo = '65ac87c4' AND id_cedula = '37749526';
-- hijo ef6e3329 | cedula padre 37749526
UPDATE hijo SET fecha_nacimiento = '20/02/2004' WHERE id_hijo = 'ef6e3329' AND id_cedula = '37749526';
-- hijo 010d8534 | cedula padre 1127913059
UPDATE hijo SET fecha_nacimiento = '01/01/2010' WHERE id_hijo = '010d8534' AND id_cedula = '1127913059';
-- hijo b0306807 | cedula padre 1127913059
UPDATE hijo SET fecha_nacimiento = '24/09/2013' WHERE id_hijo = 'b0306807' AND id_cedula = '1127913059';
-- hijo b4fd4057 | cedula padre 1098765011
UPDATE hijo SET fecha_nacimiento = '08/11/2016' WHERE id_hijo = 'b4fd4057' AND id_cedula = '1098765011';
-- hijo fb437ea4 | cedula padre 1004823812
UPDATE hijo SET fecha_nacimiento = '13/03/2019' WHERE id_hijo = 'fb437ea4' AND id_cedula = '1004823812';
-- hijo 49d15f94 | cedula padre 1098824148
UPDATE hijo SET fecha_nacimiento = '09/02/2024' WHERE id_hijo = '49d15f94' AND id_cedula = '1098824148';
-- hijo 82d1f507 | cedula padre 1102722473
UPDATE hijo SET fecha_nacimiento = '15/12/2018' WHERE id_hijo = '82d1f507' AND id_cedula = '1102722473';
-- hijo adeed5eb | cedula padre 1102722473
UPDATE hijo SET fecha_nacimiento = '20/05/2024' WHERE id_hijo = 'adeed5eb' AND id_cedula = '1102722473';
-- hijo dcabd561 | cedula padre 1095934331
UPDATE hijo SET fecha_nacimiento = '20/11/2017' WHERE id_hijo = 'dcabd561' AND id_cedula = '1095934331';
-- hijo 7fddf0e7 | cedula padre 1098742348
UPDATE hijo SET fecha_nacimiento = '25/01/2021' WHERE id_hijo = '7fddf0e7' AND id_cedula = '1098742348';
-- hijo b87b8b2c | cedula padre 4932955
UPDATE hijo SET fecha_nacimiento = '03/08/2023' WHERE id_hijo = 'b87b8b2c' AND id_cedula = '4932955';
-- hijo 86ec3c45 | cedula padre 4932955
UPDATE hijo SET fecha_nacimiento = '13/03/2013' WHERE id_hijo = '86ec3c45' AND id_cedula = '4932955';
-- hijo 406774eb | cedula padre 37721274
UPDATE hijo SET fecha_nacimiento = '12/04/2014' WHERE id_hijo = '406774eb' AND id_cedula = '37721274';
-- hijo ad20023a | cedula padre 1006426401
UPDATE hijo SET fecha_nacimiento = '24/09/2018' WHERE id_hijo = 'ad20023a' AND id_cedula = '1006426401';
-- hijo df9cf20b | cedula padre 1006426401
UPDATE hijo SET fecha_nacimiento = '24/09/2018' WHERE id_hijo = 'df9cf20b' AND id_cedula = '1006426401';
-- hijo e0d7110c | cedula padre 1006426401
UPDATE hijo SET fecha_nacimiento = '03/04/2020' WHERE id_hijo = 'e0d7110c' AND id_cedula = '1006426401';
-- hijo 9a125574 | cedula padre 1095936888
UPDATE hijo SET fecha_nacimiento = '21/12/2014' WHERE id_hijo = '9a125574' AND id_cedula = '1095936888';
-- hijo aa255782 | cedula padre 1101211012
UPDATE hijo SET fecha_nacimiento = '21/04/2020' WHERE id_hijo = 'aa255782' AND id_cedula = '1101211012';
-- hijo 1184a384 | cedula padre 13542263
UPDATE hijo SET fecha_nacimiento = '19/02/2011' WHERE id_hijo = '1184a384' AND id_cedula = '13542263';
-- hijo 9fca7942 | cedula padre 13542263
UPDATE hijo SET fecha_nacimiento = '07/11/2017' WHERE id_hijo = '9fca7942' AND id_cedula = '13542263';
-- hijo 58f3272e | cedula padre 80424220
UPDATE hijo SET fecha_nacimiento = '12/06/2009' WHERE id_hijo = '58f3272e' AND id_cedula = '80424220';
-- hijo 2ad5909e | cedula padre 1097494058
UPDATE hijo SET fecha_nacimiento = '18/03/2022' WHERE id_hijo = '2ad5909e' AND id_cedula = '1097494058';
-- hijo 489a1773 | cedula padre 63531676
UPDATE hijo SET fecha_nacimiento = '17/12/2009' WHERE id_hijo = '489a1773' AND id_cedula = '63531676';
-- hijo 0a274714 | cedula padre 1095915984
UPDATE hijo SET fecha_nacimiento = '01/01/2020' WHERE id_hijo = '0a274714' AND id_cedula = '1095915984';
-- hijo a82c4499 | cedula padre 1005654916
UPDATE hijo SET fecha_nacimiento = '19/12/2016' WHERE id_hijo = 'a82c4499' AND id_cedula = '1005654916';
-- hijo f258d711 | cedula padre 1098698435
UPDATE hijo SET fecha_nacimiento = '02/05/2014' WHERE id_hijo = 'f258d711' AND id_cedula = '1098698435';
-- hijo b3e7a75e | cedula padre 1095840246
UPDATE hijo SET fecha_nacimiento = '01/01/2023' WHERE id_hijo = 'b3e7a75e' AND id_cedula = '1095840246';
-- hijo bb75eba2 | cedula padre 1095840246
UPDATE hijo SET fecha_nacimiento = '01/01/2019' WHERE id_hijo = 'bb75eba2' AND id_cedula = '1095840246';
-- hijo 5a72c0cf | cedula padre 1005331332
UPDATE hijo SET fecha_nacimiento = '22/10/2022' WHERE id_hijo = '5a72c0cf' AND id_cedula = '1005331332';
-- hijo a29e2006 | cedula padre 1005776694
UPDATE hijo SET fecha_nacimiento = '05/10/2024' WHERE id_hijo = 'a29e2006' AND id_cedula = '1005776694';
-- hijo 9425da75 | cedula padre 1102384824
UPDATE hijo SET fecha_nacimiento = '28/08/2022' WHERE id_hijo = '9425da75' AND id_cedula = '1102384824';
-- hijo 5fe2b812 | cedula padre 1097608286
UPDATE hijo SET fecha_nacimiento = '10/11/2013' WHERE id_hijo = '5fe2b812' AND id_cedula = '1097608286';
-- hijo 1a0bda4d | cedula padre 1097608286
UPDATE hijo SET fecha_nacimiento = '01/06/2007' WHERE id_hijo = '1a0bda4d' AND id_cedula = '1097608286';
-- hijo dabcb5bd | cedula padre 1098766167
UPDATE hijo SET fecha_nacimiento = '10/12/2015' WHERE id_hijo = 'dabcb5bd' AND id_cedula = '1098766167';
-- hijo 59ab7bb3 | cedula padre 1098766167
UPDATE hijo SET fecha_nacimiento = '14/09/2023' WHERE id_hijo = '59ab7bb3' AND id_cedula = '1098766167';
-- hijo 93acf223 | cedula padre 91538812
UPDATE hijo SET fecha_nacimiento = '13/10/2007' WHERE id_hijo = '93acf223' AND id_cedula = '91538812';
-- hijo 3bbfa24c | cedula padre 91542227
UPDATE hijo SET fecha_nacimiento = '06/12/2013' WHERE id_hijo = '3bbfa24c' AND id_cedula = '91542227';
-- hijo 79be8ed3 | cedula padre 91542227
UPDATE hijo SET fecha_nacimiento = '25/02/2018' WHERE id_hijo = '79be8ed3' AND id_cedula = '91542227';
-- hijo 1d5aa114 | cedula padre 1098661407
UPDATE hijo SET fecha_nacimiento = '01/05/2017' WHERE id_hijo = '1d5aa114' AND id_cedula = '1098661407';
-- hijo 3130c1dd | cedula padre 1002255861
UPDATE hijo SET fecha_nacimiento = '27/07/2016' WHERE id_hijo = '3130c1dd' AND id_cedula = '1002255861';
-- hijo 2c02bc58 | cedula padre 1002255861
UPDATE hijo SET fecha_nacimiento = '26/09/2020' WHERE id_hijo = '2c02bc58' AND id_cedula = '1002255861';
-- hijo 66073998 | cedula padre 1234340451
UPDATE hijo SET fecha_nacimiento = '21/01/2015' WHERE id_hijo = '66073998' AND id_cedula = '1234340451';
-- hijo 28caf90d | cedula padre 1234340451
UPDATE hijo SET fecha_nacimiento = '10/06/2022' WHERE id_hijo = '28caf90d' AND id_cedula = '1234340451';
-- hijo d361b8a6 | cedula padre 1002255860
UPDATE hijo SET fecha_nacimiento = '19/06/2017' WHERE id_hijo = 'd361b8a6' AND id_cedula = '1002255860';
-- hijo cf7e0da3 | cedula padre 1002255860
UPDATE hijo SET fecha_nacimiento = '06/05/2018' WHERE id_hijo = 'cf7e0da3' AND id_cedula = '1002255860';
-- hijo 6cf3c130 | cedula padre 1002255860
UPDATE hijo SET fecha_nacimiento = '21/04/2022' WHERE id_hijo = '6cf3c130' AND id_cedula = '1002255860';
-- hijo 561d85fe | cedula padre 13510483
UPDATE hijo SET fecha_nacimiento = '22/11/2024' WHERE id_hijo = '561d85fe' AND id_cedula = '13510483';
-- hijo 70f9f4fc | cedula padre 1098805526
UPDATE hijo SET fecha_nacimiento = '25/11/2024' WHERE id_hijo = '70f9f4fc' AND id_cedula = '1098805526';
-- hijo db72f384 | cedula padre 1048992624
UPDATE hijo SET fecha_nacimiento = '30/10/2024' WHERE id_hijo = 'db72f384' AND id_cedula = '1048992624';
-- hijo 59770058 | cedula padre 1102350072
UPDATE hijo SET fecha_nacimiento = '28/09/2014' WHERE id_hijo = '59770058' AND id_cedula = '1102350072';
-- hijo f44ab17b | cedula padre 1005449415
UPDATE hijo SET fecha_nacimiento = '06/01/2025' WHERE id_hijo = 'f44ab17b' AND id_cedula = '1005449415';
-- hijo e07ee685 | cedula padre 73583061
UPDATE hijo SET fecha_nacimiento = '12/03/2005' WHERE id_hijo = 'e07ee685' AND id_cedula = '73583061';
-- hijo d37fd202 | cedula padre 73583061
UPDATE hijo SET fecha_nacimiento = '06/09/2014' WHERE id_hijo = 'd37fd202' AND id_cedula = '73583061';
-- hijo c5817881 | cedula padre 73583061
UPDATE hijo SET fecha_nacimiento = '17/12/2003' WHERE id_hijo = 'c5817881' AND id_cedula = '73583061';
-- hijo f1e05780 | cedula padre 1096246897
UPDATE hijo SET fecha_nacimiento = '13/09/2017' WHERE id_hijo = 'f1e05780' AND id_cedula = '1096246897';
-- hijo 1d15ad6d | cedula padre 1096246897
UPDATE hijo SET fecha_nacimiento = '10/11/2014' WHERE id_hijo = '1d15ad6d' AND id_cedula = '1096246897';
-- hijo 23a17c70 | cedula padre 1102353149
UPDATE hijo SET fecha_nacimiento = '09/04/2007' WHERE id_hijo = '23a17c70' AND id_cedula = '1102353149';
-- hijo 72044a90 | cedula padre 729244410021987
UPDATE hijo SET fecha_nacimiento = '13/11/2013' WHERE id_hijo = '72044a90' AND id_cedula = '729244410021987';
-- hijo ed9881a4 | cedula padre 729244410021987
UPDATE hijo SET fecha_nacimiento = '14/05/2012' WHERE id_hijo = 'ed9881a4' AND id_cedula = '729244410021987';
-- hijo 2aa53d45 | cedula padre 1097609443
UPDATE hijo SET fecha_nacimiento = '01/08/2021' WHERE id_hijo = '2aa53d45' AND id_cedula = '1097609443';
-- hijo 63f6906a | cedula padre 91467261
UPDATE hijo SET fecha_nacimiento = '29/03/2009' WHERE id_hijo = '63f6906a' AND id_cedula = '91467261';
-- hijo 452bf34e | cedula padre 1042211348
UPDATE hijo SET fecha_nacimiento = '14/02/2024' WHERE id_hijo = '452bf34e' AND id_cedula = '1042211348';
-- hijo f0e131a2 | cedula padre 1100896781
UPDATE hijo SET fecha_nacimiento = '23/07/2024' WHERE id_hijo = 'f0e131a2' AND id_cedula = '1100896781';
-- hijo 3ddceb65 | cedula padre 91301967
UPDATE hijo SET fecha_nacimiento = '07/11/2009' WHERE id_hijo = '3ddceb65' AND id_cedula = '91301967';
-- hijo 6e7958fc | cedula padre 1098775415
UPDATE hijo SET fecha_nacimiento = '25/06/2024' WHERE id_hijo = '6e7958fc' AND id_cedula = '1098775415';
-- hijo 24f422a5 | cedula padre 1065240729
UPDATE hijo SET fecha_nacimiento = '21/10/2015' WHERE id_hijo = '24f422a5' AND id_cedula = '1065240729';
-- hijo 0b89367d | cedula padre 1193239803
UPDATE hijo SET fecha_nacimiento = '03/06/2022' WHERE id_hijo = '0b89367d' AND id_cedula = '1193239803';
-- hijo 302e877c | cedula padre 63531676
UPDATE hijo SET fecha_nacimiento = '21/05/2008' WHERE id_hijo = '302e877c' AND id_cedula = '63531676';
-- hijo 96326c2a | cedula padre 1095914235
UPDATE hijo SET fecha_nacimiento = '22/09/2023' WHERE id_hijo = '96326c2a' AND id_cedula = '1095914235';
-- hijo 85941a26 | cedula padre 1098695216
UPDATE hijo SET fecha_nacimiento = '16/10/2016' WHERE id_hijo = '85941a26' AND id_cedula = '1098695216';
-- hijo da3ce3f0 | cedula padre 1098802594
UPDATE hijo SET fecha_nacimiento = '01/04/2023' WHERE id_hijo = 'da3ce3f0' AND id_cedula = '1098802594';
-- hijo 28215058 | cedula padre 1098724961
UPDATE hijo SET fecha_nacimiento = '22/07/2010' WHERE id_hijo = '28215058' AND id_cedula = '1098724961';
-- hijo 9b863403 | cedula padre 13746278
UPDATE hijo SET fecha_nacimiento = '01/07/2009' WHERE id_hijo = '9b863403' AND id_cedula = '13746278';
-- hijo fdae1f22 | cedula padre 1005340129
UPDATE hijo SET fecha_nacimiento = '14/03/2024' WHERE id_hijo = 'fdae1f22' AND id_cedula = '1005340129';
-- hijo db779ea1 | cedula padre 1104071452
UPDATE hijo SET fecha_nacimiento = '16/11/2019' WHERE id_hijo = 'db779ea1' AND id_cedula = '1104071452';
-- hijo 504781ce | cedula padre 1040048224
UPDATE hijo SET fecha_nacimiento = '01/12/2023' WHERE id_hijo = '504781ce' AND id_cedula = '1040048224';
-- hijo 006b1613 | cedula padre 1100894583
UPDATE hijo SET fecha_nacimiento = '03/08/2021' WHERE id_hijo = '006b1613' AND id_cedula = '1100894583';
-- hijo a4dafddc | cedula padre 667463
UPDATE hijo SET fecha_nacimiento = '23/07/2019' WHERE id_hijo = 'a4dafddc' AND id_cedula = '667463';
-- hijo a62379e1 | cedula padre 58494289
UPDATE hijo SET fecha_nacimiento = '30/05/2010' WHERE id_hijo = 'a62379e1' AND id_cedula = '58494289';
-- hijo d74b424e | cedula padre 58494289
UPDATE hijo SET fecha_nacimiento = '07/04/2013' WHERE id_hijo = 'd74b424e' AND id_cedula = '58494289';
-- hijo 452acac1 | cedula padre 1102725370
UPDATE hijo SET fecha_nacimiento = '03/03/2022' WHERE id_hijo = '452acac1' AND id_cedula = '1102725370';
-- hijo 5777c239 | cedula padre 1005150728
UPDATE hijo SET fecha_nacimiento = '18/06/2021' WHERE id_hijo = '5777c239' AND id_cedula = '1005150728';
-- hijo ce3eb3df | cedula padre 1005150728
UPDATE hijo SET fecha_nacimiento = '13/06/2022' WHERE id_hijo = 'ce3eb3df' AND id_cedula = '1005150728';
-- hijo ee5df6b3 | cedula padre 1048555639
UPDATE hijo SET fecha_nacimiento = '22/03/2008' WHERE id_hijo = 'ee5df6b3' AND id_cedula = '1048555639';
-- hijo dc74048d | cedula padre 1048555639
UPDATE hijo SET fecha_nacimiento = '17/07/2013' WHERE id_hijo = 'dc74048d' AND id_cedula = '1048555639';
-- hijo 72324d79 | cedula padre 91532028
UPDATE hijo SET fecha_nacimiento = '18/04/2016' WHERE id_hijo = '72324d79' AND id_cedula = '91532028';
-- hijo 2a552b07 | cedula padre 91532028
UPDATE hijo SET fecha_nacimiento = '25/02/2020' WHERE id_hijo = '2a552b07' AND id_cedula = '91532028';
-- hijo 79cc8890 | cedula padre 91532028
UPDATE hijo SET fecha_nacimiento = '09/05/2023' WHERE id_hijo = '79cc8890' AND id_cedula = '91532028';
-- hijo 9e98d81b | cedula padre 1098661799
UPDATE hijo SET fecha_nacimiento = '09/07/2010' WHERE id_hijo = '9e98d81b' AND id_cedula = '1098661799';
-- hijo 4fbd9709 | cedula padre 1098661799
UPDATE hijo SET fecha_nacimiento = '31/08/2016' WHERE id_hijo = '4fbd9709' AND id_cedula = '1098661799';
-- hijo 46930004 | cedula padre 1098661799
UPDATE hijo SET fecha_nacimiento = '30/03/2023' WHERE id_hijo = '46930004' AND id_cedula = '1098661799';
-- hijo 882274ba | cedula padre 91532495
UPDATE hijo SET fecha_nacimiento = '01/03/2017' WHERE id_hijo = '882274ba' AND id_cedula = '91532495';
-- hijo 4ebe9032 | cedula padre 91532495
UPDATE hijo SET fecha_nacimiento = '26/05/2005' WHERE id_hijo = '4ebe9032' AND id_cedula = '91532495';
-- hijo c382d85e | cedula padre 1068346034
UPDATE hijo SET fecha_nacimiento = '15/01/2023' WHERE id_hijo = 'c382d85e' AND id_cedula = '1068346034';
-- hijo 9f73e800 | cedula padre 1128449677
UPDATE hijo SET fecha_nacimiento = '25/04/2009' WHERE id_hijo = '9f73e800' AND id_cedula = '1128449677';
-- hijo fb14cd23 | cedula padre 1007673942
UPDATE hijo SET fecha_nacimiento = '08/03/2025' WHERE id_hijo = 'fb14cd23' AND id_cedula = '1007673942';
-- hijo 8490aae3 | cedula padre 1098738228
UPDATE hijo SET fecha_nacimiento = '24/06/2012' WHERE id_hijo = '8490aae3' AND id_cedula = '1098738228';
-- hijo 6288b8e6 | cedula padre 1098738228
UPDATE hijo SET fecha_nacimiento = '03/05/2020' WHERE id_hijo = '6288b8e6' AND id_cedula = '1098738228';
-- hijo c7312ba1 | cedula padre 1003259508
UPDATE hijo SET fecha_nacimiento = '09/05/2014' WHERE id_hijo = 'c7312ba1' AND id_cedula = '1003259508';
-- hijo f9c150d3 | cedula padre 91294734
UPDATE hijo SET fecha_nacimiento = '04/01/2014' WHERE id_hijo = 'f9c150d3' AND id_cedula = '91294734';
-- hijo 693c16d7 | cedula padre 72342162
UPDATE hijo SET fecha_nacimiento = '25/09/2010' WHERE id_hijo = '693c16d7' AND id_cedula = '72342162';
-- hijo b2e3b9e1 | cedula padre 72342162
UPDATE hijo SET fecha_nacimiento = '23/09/2008' WHERE id_hijo = 'b2e3b9e1' AND id_cedula = '72342162';
-- hijo 0cba9016 | cedula padre 1042436560
UPDATE hijo SET fecha_nacimiento = '13/04/2016' WHERE id_hijo = '0cba9016' AND id_cedula = '1042436560';
-- hijo 3934bb0e | cedula padre 1042436560
UPDATE hijo SET fecha_nacimiento = '05/06/2009' WHERE id_hijo = '3934bb0e' AND id_cedula = '1042436560';
-- hijo 4bfa4332 | cedula padre 1095843896
UPDATE hijo SET fecha_nacimiento = '24/09/2022' WHERE id_hijo = '4bfa4332' AND id_cedula = '1095843896';
-- hijo 00815ebf | cedula padre 1085098049
UPDATE hijo SET fecha_nacimiento = '28/09/2016' WHERE id_hijo = '00815ebf' AND id_cedula = '1085098049';
-- hijo 547978a8 | cedula padre 1085098049
UPDATE hijo SET fecha_nacimiento = '16/09/2018' WHERE id_hijo = '547978a8' AND id_cedula = '1085098049';
-- hijo 93d50bfc | cedula padre 1095700665
UPDATE hijo SET fecha_nacimiento = '24/02/2008' WHERE id_hijo = '93d50bfc' AND id_cedula = '1095700665';
-- hijo 438b36ac | cedula padre 1095700665
UPDATE hijo SET fecha_nacimiento = '13/09/2010' WHERE id_hijo = '438b36ac' AND id_cedula = '1095700665';
-- hijo 5f41d7c2 | cedula padre 1098171692
UPDATE hijo SET fecha_nacimiento = '29/01/2021' WHERE id_hijo = '5f41d7c2' AND id_cedula = '1098171692';
-- hijo a3ec7370 | cedula padre 1098171692
UPDATE hijo SET fecha_nacimiento = '29/02/2024' WHERE id_hijo = 'a3ec7370' AND id_cedula = '1098171692';
-- hijo 17c9c6b2 | cedula padre 1007463015
UPDATE hijo SET fecha_nacimiento = '03/05/2020' WHERE id_hijo = '17c9c6b2' AND id_cedula = '1007463015';
-- hijo dbb6acf5 | cedula padre 1104071452
UPDATE hijo SET fecha_nacimiento = '02/02/2021' WHERE id_hijo = 'dbb6acf5' AND id_cedula = '1104071452';
-- hijo 2ab086b6 | cedula padre 1104071452
UPDATE hijo SET fecha_nacimiento = '18/11/2018' WHERE id_hijo = '2ab086b6' AND id_cedula = '1104071452';
-- hijo 8b174df9 | cedula padre 1095836031
UPDATE hijo SET fecha_nacimiento = '21/06/2021' WHERE id_hijo = '8b174df9' AND id_cedula = '1095836031';
-- hijo 92f705c9 | cedula padre 1073321214
UPDATE hijo SET fecha_nacimiento = '08/07/2018' WHERE id_hijo = '92f705c9' AND id_cedula = '1073321214';
-- hijo 8fd076e9 | cedula padre 1073321214
UPDATE hijo SET fecha_nacimiento = '17/01/2020' WHERE id_hijo = '8fd076e9' AND id_cedula = '1073321214';
-- hijo fc36bb2a | cedula padre 1095936284
UPDATE hijo SET fecha_nacimiento = '30/04/2025' WHERE id_hijo = 'fc36bb2a' AND id_cedula = '1095936284';
-- hijo 4f924637 | cedula padre 1098755946
UPDATE hijo SET fecha_nacimiento = '13/05/2025' WHERE id_hijo = '4f924637' AND id_cedula = '1098755946';
-- hijo 7642eb18 | cedula padre 1098660251
UPDATE hijo SET fecha_nacimiento = '13/05/2025' WHERE id_hijo = '7642eb18' AND id_cedula = '1098660251';
-- hijo f042eae8 | cedula padre 91108496
UPDATE hijo SET fecha_nacimiento = '08/10/2014' WHERE id_hijo = 'f042eae8' AND id_cedula = '91108496';
-- hijo 630880b3 | cedula padre 91108496
UPDATE hijo SET fecha_nacimiento = '29/04/2017' WHERE id_hijo = '630880b3' AND id_cedula = '91108496';
-- hijo 6efe404b | cedula padre 91108496
UPDATE hijo SET fecha_nacimiento = '23/05/2006' WHERE id_hijo = '6efe404b' AND id_cedula = '91108496';
-- hijo c1a29e15 | cedula padre 1004756344
UPDATE hijo SET fecha_nacimiento = '23/12/2023' WHERE id_hijo = 'c1a29e15' AND id_cedula = '1004756344';
-- hijo 3420a7f6 | cedula padre 1095957578
UPDATE hijo SET fecha_nacimiento = '12/08/2021' WHERE id_hijo = '3420a7f6' AND id_cedula = '1095957578';
-- hijo e870e1c7 | cedula padre 1121966014
UPDATE hijo SET fecha_nacimiento = '05/11/2022' WHERE id_hijo = 'e870e1c7' AND id_cedula = '1121966014';
-- hijo e7d33ae9 | cedula padre 1121966014
UPDATE hijo SET fecha_nacimiento = '02/08/2024' WHERE id_hijo = 'e7d33ae9' AND id_cedula = '1121966014';
-- hijo 810cc910 | cedula padre 1088256554
UPDATE hijo SET fecha_nacimiento = '13/08/2019' WHERE id_hijo = '810cc910' AND id_cedula = '1088256554';
-- hijo 4d2e430a | cedula padre 106573904
UPDATE hijo SET fecha_nacimiento = '11/01/2022' WHERE id_hijo = '4d2e430a' AND id_cedula = '106573904';
-- hijo dac270a3 | cedula padre 1065812474
UPDATE hijo SET fecha_nacimiento = '23/04/2013' WHERE id_hijo = 'dac270a3' AND id_cedula = '1065812474';
-- hijo 0aec25fb | cedula padre 1065812474
UPDATE hijo SET fecha_nacimiento = '09/07/2017' WHERE id_hijo = '0aec25fb' AND id_cedula = '1065812474';
-- hijo 77f1e7c5 | cedula padre 1128449677
UPDATE hijo SET fecha_nacimiento = '07/06/2025' WHERE id_hijo = '77f1e7c5' AND id_cedula = '1128449677';
-- hijo 679ee0ed | cedula padre 1098771486
UPDATE hijo SET fecha_nacimiento = '15/03/2025' WHERE id_hijo = '679ee0ed' AND id_cedula = '1098771486';
-- hijo ea69496a | cedula padre 1095837427
UPDATE hijo SET fecha_nacimiento = '10/09/2021' WHERE id_hijo = 'ea69496a' AND id_cedula = '1095837427';
-- hijo c5ac2408 | cedula padre 1095298459
UPDATE hijo SET fecha_nacimiento = '20/08/2022' WHERE id_hijo = 'c5ac2408' AND id_cedula = '1095298459';
-- hijo 525efcf3 | cedula padre 1007669515
UPDATE hijo SET fecha_nacimiento = '22/06/2025' WHERE id_hijo = '525efcf3' AND id_cedula = '1007669515';
-- hijo f7dd27a1 | cedula padre 1007669515
UPDATE hijo SET fecha_nacimiento = '23/02/2022' WHERE id_hijo = 'f7dd27a1' AND id_cedula = '1007669515';
-- hijo 0a4c1e1d | cedula padre 1116811061
UPDATE hijo SET fecha_nacimiento = '11/10/2021' WHERE id_hijo = '0a4c1e1d' AND id_cedula = '1116811061';
-- hijo 3c2fa388 | cedula padre 1065673904
UPDATE hijo SET fecha_nacimiento = '11/01/2022' WHERE id_hijo = '3c2fa388' AND id_cedula = '1065673904';
-- hijo 71a4b46a | cedula padre 91528922
UPDATE hijo SET fecha_nacimiento = '20/04/2008' WHERE id_hijo = '71a4b46a' AND id_cedula = '91528922';
-- hijo 576ec377 | cedula padre 91528922
UPDATE hijo SET fecha_nacimiento = '16/06/2009' WHERE id_hijo = '576ec377' AND id_cedula = '91528922';
-- hijo e3cce419 | cedula padre 1005198910
UPDATE hijo SET fecha_nacimiento = '01/06/2025' WHERE id_hijo = 'e3cce419' AND id_cedula = '1005198910';
-- hijo 8f4be7f0 | cedula padre 1098707156
UPDATE hijo SET fecha_nacimiento = '25/05/2012' WHERE id_hijo = '8f4be7f0' AND id_cedula = '1098707156';
-- hijo 91449d7c | cedula padre 73579178
UPDATE hijo SET fecha_nacimiento = '05/09/2000' WHERE id_hijo = '91449d7c' AND id_cedula = '73579178';
-- hijo 3f341afb | cedula padre 73579178
UPDATE hijo SET fecha_nacimiento = '15/12/2008' WHERE id_hijo = '3f341afb' AND id_cedula = '73579178';
-- hijo f9ab6f1f | cedula padre 1099367958
UPDATE hijo SET fecha_nacimiento = '13/03/2012' WHERE id_hijo = 'f9ab6f1f' AND id_cedula = '1099367958';
-- hijo 12cfebab | cedula padre 1099367958
UPDATE hijo SET fecha_nacimiento = '10/09/2020' WHERE id_hijo = '12cfebab' AND id_cedula = '1099367958';
-- hijo 49d83fd5 | cedula padre 1098708544
UPDATE hijo SET fecha_nacimiento = '16/02/2018' WHERE id_hijo = '49d83fd5' AND id_cedula = '1098708544';
-- hijo 411961b2 | cedula padre 80758022
UPDATE hijo SET fecha_nacimiento = '30/01/2005' WHERE id_hijo = '411961b2' AND id_cedula = '80758022';
-- hijo 1d4ef18b | cedula padre 80758022
UPDATE hijo SET fecha_nacimiento = '03/05/2003' WHERE id_hijo = '1d4ef18b' AND id_cedula = '80758022';
-- hijo 16fc5461 | cedula padre 80758022
UPDATE hijo SET fecha_nacimiento = '13/08/2002' WHERE id_hijo = '16fc5461' AND id_cedula = '80758022';
-- hijo e69b12ed | cedula padre 1098722965
UPDATE hijo SET fecha_nacimiento = '05/11/2011' WHERE id_hijo = 'e69b12ed' AND id_cedula = '1098722965';
-- hijo 3d569b9e | cedula padre 1098722965
UPDATE hijo SET fecha_nacimiento = '13/03/2014' WHERE id_hijo = '3d569b9e' AND id_cedula = '1098722965';
-- hijo ed86cdf7 | cedula padre 1090541327
UPDATE hijo SET fecha_nacimiento = '18/09/2007' WHERE id_hijo = 'ed86cdf7' AND id_cedula = '1090541327';
-- hijo 51c19070 | cedula padre 1090541327
UPDATE hijo SET fecha_nacimiento = '17/05/2009' WHERE id_hijo = '51c19070' AND id_cedula = '1090541327';
-- hijo 5b8f5460 | cedula padre 1090541327
UPDATE hijo SET fecha_nacimiento = '03/09/2016' WHERE id_hijo = '5b8f5460' AND id_cedula = '1090541327';
-- hijo 41d17cd3 | cedula padre 1098130976
UPDATE hijo SET fecha_nacimiento = '17/03/2014' WHERE id_hijo = '41d17cd3' AND id_cedula = '1098130976';
-- hijo a50fe873 | cedula padre 1098130976
UPDATE hijo SET fecha_nacimiento = '19/12/2020' WHERE id_hijo = 'a50fe873' AND id_cedula = '1098130976';
-- hijo ce144c38 | cedula padre 1007898456
UPDATE hijo SET fecha_nacimiento = '08/06/2023' WHERE id_hijo = 'ce144c38' AND id_cedula = '1007898456';
-- hijo 7671ad90 | cedula padre 1005160796
UPDATE hijo SET fecha_nacimiento = '22/08/2018' WHERE id_hijo = '7671ad90' AND id_cedula = '1005160796';
-- hijo 6bff1100 | cedula padre 1005160796
UPDATE hijo SET fecha_nacimiento = '06/11/2020' WHERE id_hijo = '6bff1100' AND id_cedula = '1005160796';
-- hijo 9f9f089a | cedula padre 1234340676
UPDATE hijo SET fecha_nacimiento = '19/01/2019' WHERE id_hijo = '9f9f089a' AND id_cedula = '1234340676';
-- hijo f409defd | cedula padre 1007429282
UPDATE hijo SET fecha_nacimiento = '26/02/2019' WHERE id_hijo = 'f409defd' AND id_cedula = '1007429282';
-- hijo 3c77e41e | cedula padre 1007429282
UPDATE hijo SET fecha_nacimiento = '10/07/2021' WHERE id_hijo = '3c77e41e' AND id_cedula = '1007429282';
-- hijo 29c1b0c4 | cedula padre 1007429282
UPDATE hijo SET fecha_nacimiento = '11/07/2024' WHERE id_hijo = '29c1b0c4' AND id_cedula = '1007429282';
-- hijo 00472f3b | cedula padre 1005154090
UPDATE hijo SET fecha_nacimiento = '07/04/2020' WHERE id_hijo = '00472f3b' AND id_cedula = '1005154090';
-- hijo 00bfb01f | cedula padre 1102374656
UPDATE hijo SET fecha_nacimiento = '18/03/2020' WHERE id_hijo = '00bfb01f' AND id_cedula = '1102374656';
-- hijo c75dfb97 | cedula padre 1073321214
UPDATE hijo SET fecha_nacimiento = '22/10/2021' WHERE id_hijo = 'c75dfb97' AND id_cedula = '1073321214';
-- hijo 867f2467 | cedula padre 1005156867
UPDATE hijo SET fecha_nacimiento = '06/05/2016' WHERE id_hijo = '867f2467' AND id_cedula = '1005156867';
-- hijo 4f243447 | cedula padre 1005156867
UPDATE hijo SET fecha_nacimiento = '09/01/2018' WHERE id_hijo = '4f243447' AND id_cedula = '1005156867';
-- hijo 8b93053e | cedula padre 1232891031
UPDATE hijo SET fecha_nacimiento = '05/10/2024' WHERE id_hijo = '8b93053e' AND id_cedula = '1232891031';
-- hijo 818fa0ae | cedula padre 1098799132
UPDATE hijo SET fecha_nacimiento = '25/07/2019' WHERE id_hijo = '818fa0ae' AND id_cedula = '1098799132';
-- hijo be686f4b | cedula padre 1097608286
UPDATE hijo SET fecha_nacimiento = '03/09/2025' WHERE id_hijo = 'be686f4b' AND id_cedula = '1097608286';
-- hijo d0e52467 | cedula padre 1095834911
UPDATE hijo SET fecha_nacimiento = '23/02/2013' WHERE id_hijo = 'd0e52467' AND id_cedula = '1095834911';
-- hijo ac0c11f9 | cedula padre 1095834911
UPDATE hijo SET fecha_nacimiento = '02/11/2018' WHERE id_hijo = 'ac0c11f9' AND id_cedula = '1095834911';
-- hijo edb4a490 | cedula padre 1102724430
UPDATE hijo SET fecha_nacimiento = '23/09/2020' WHERE id_hijo = 'edb4a490' AND id_cedula = '1102724430';
-- hijo 8b5b6dfa | cedula padre 1102724430
UPDATE hijo SET fecha_nacimiento = '05/11/2022' WHERE id_hijo = '8b5b6dfa' AND id_cedula = '1102724430';
-- hijo 259f00d2 | cedula padre 1007764101
UPDATE hijo SET fecha_nacimiento = '06/08/2022' WHERE id_hijo = '259f00d2' AND id_cedula = '1007764101';
-- hijo 889c3e19 | cedula padre 1101696331
UPDATE hijo SET fecha_nacimiento = '20/02/2022' WHERE id_hijo = '889c3e19' AND id_cedula = '1101696331';
-- hijo 946e21d7 | cedula padre 1002249696
UPDATE hijo SET fecha_nacimiento = '14/05/2024' WHERE id_hijo = '946e21d7' AND id_cedula = '1002249696';
-- hijo 0c322655 | cedula padre 1977852
UPDATE hijo SET fecha_nacimiento = '07/09/2014' WHERE id_hijo = '0c322655' AND id_cedula = '1977852';
-- hijo 381dba38 | cedula padre 1977852
UPDATE hijo SET fecha_nacimiento = '24/07/2018' WHERE id_hijo = '381dba38' AND id_cedula = '1977852';
-- hijo 1c887798 | cedula padre 1102384789
UPDATE hijo SET fecha_nacimiento = '09/08/2016' WHERE id_hijo = '1c887798' AND id_cedula = '1102384789';
-- hijo fdad4a2b | cedula padre 1232890034
UPDATE hijo SET fecha_nacimiento = '24/02/2013' WHERE id_hijo = 'fdad4a2b' AND id_cedula = '1232890034';
-- hijo 005a12ff | cedula padre 1232890034
UPDATE hijo SET fecha_nacimiento = '29/03/2016' WHERE id_hijo = '005a12ff' AND id_cedula = '1232890034';
-- hijo 0c180f56 | cedula padre 1063971816
UPDATE hijo SET fecha_nacimiento = '13/09/2019' WHERE id_hijo = '0c180f56' AND id_cedula = '1063971816';
-- hijo 4cd40732 | cedula padre 1005655309
UPDATE hijo SET fecha_nacimiento = '12/12/2022' WHERE id_hijo = '4cd40732' AND id_cedula = '1005655309';
-- hijo d7823897 | cedula padre 1005236253
UPDATE hijo SET fecha_nacimiento = '10/11/2025' WHERE id_hijo = 'd7823897' AND id_cedula = '1005236253';
-- hijo efa6f5f6 | cedula padre 1073322335
UPDATE hijo SET fecha_nacimiento = '15/02/2018' WHERE id_hijo = 'efa6f5f6' AND id_cedula = '1073322335';
-- hijo 1f7f08e9 | cedula padre 1073322335
UPDATE hijo SET fecha_nacimiento = '17/03/2015' WHERE id_hijo = '1f7f08e9' AND id_cedula = '1073322335';
-- hijo a2a2a5c9 | cedula padre 1073322335
UPDATE hijo SET fecha_nacimiento = '25/08/2020' WHERE id_hijo = 'a2a2a5c9' AND id_cedula = '1073322335';
-- hijo 297bcefd | cedula padre 1073322335
UPDATE hijo SET fecha_nacimiento = '30/11/2013' WHERE id_hijo = '297bcefd' AND id_cedula = '1073322335';
-- hijo dc67f70d | cedula padre 5227620
UPDATE hijo SET fecha_nacimiento = '02/09/2011' WHERE id_hijo = 'dc67f70d' AND id_cedula = '5227620';
-- hijo 57d8cf98 | cedula padre 5227620
UPDATE hijo SET fecha_nacimiento = '28/04/2014' WHERE id_hijo = '57d8cf98' AND id_cedula = '5227620';
-- hijo 6bbd7548 | cedula padre 1065240729
UPDATE hijo SET fecha_nacimiento = '18/10/2025' WHERE id_hijo = '6bbd7548' AND id_cedula = '1065240729';
-- hijo 7274c80e | cedula padre 1007665794
UPDATE hijo SET fecha_nacimiento = '19/08/2019' WHERE id_hijo = '7274c80e' AND id_cedula = '1007665794';
-- hijo 56a6f949 | cedula padre 6016865
UPDATE hijo SET fecha_nacimiento = '21/02/2021' WHERE id_hijo = '56a6f949' AND id_cedula = '6016865';
-- hijo 91184f1f | cedula padre 1098171478
UPDATE hijo SET fecha_nacimiento = '07/06/2019' WHERE id_hijo = '91184f1f' AND id_cedula = '1098171478';
-- hijo 0fc48c1d | cedula padre 1116811061
UPDATE hijo SET fecha_nacimiento = '12/03/2018' WHERE id_hijo = '0fc48c1d' AND id_cedula = '1116811061';
-- hijo 1b5ebe75 | cedula padre 1102387307
UPDATE hijo SET fecha_nacimiento = '13/05/2022' WHERE id_hijo = '1b5ebe75' AND id_cedula = '1102387307';
-- hijo 176b8890 | cedula padre 1097094205
UPDATE hijo SET fecha_nacimiento = '27/04/2018' WHERE id_hijo = '176b8890' AND id_cedula = '1097094205';
-- hijo a6e3fa2c | cedula padre 1097094205
UPDATE hijo SET fecha_nacimiento = '28/05/2021' WHERE id_hijo = 'a6e3fa2c' AND id_cedula = '1097094205';
-- hijo 80890447 | cedula padre 1097094205
UPDATE hijo SET fecha_nacimiento = '17/06/2022' WHERE id_hijo = '80890447' AND id_cedula = '1097094205';
-- hijo 52c73d67 | cedula padre 5393615
UPDATE hijo SET fecha_nacimiento = '06/05/2015' WHERE id_hijo = '52c73d67' AND id_cedula = '5393615';
-- hijo 75af594a | cedula padre 1095840254
UPDATE hijo SET fecha_nacimiento = '12/08/2024' WHERE id_hijo = '75af594a' AND id_cedula = '1095840254';
-- hijo b8789618 | cedula padre 91047085
UPDATE hijo SET fecha_nacimiento = '05/02/2019' WHERE id_hijo = 'b8789618' AND id_cedula = '91047085';
-- hijo 28fcbf8c | cedula padre 91047085
UPDATE hijo SET fecha_nacimiento = '24/01/2010' WHERE id_hijo = '28fcbf8c' AND id_cedula = '91047085';
-- hijo 40b033b0 | cedula padre 1005337917
UPDATE hijo SET fecha_nacimiento = '11/05/2011' WHERE id_hijo = '40b033b0' AND id_cedula = '1005337917';
-- hijo bec13169 | cedula padre 1095803756
UPDATE hijo SET fecha_nacimiento = '04/06/2009' WHERE id_hijo = 'bec13169' AND id_cedula = '1095803756';
-- hijo 077b6f93 | cedula padre 1095803756
UPDATE hijo SET fecha_nacimiento = '26/07/2015' WHERE id_hijo = '077b6f93' AND id_cedula = '1095803756';
-- hijo 585d4ca7 | cedula padre 1098640052
UPDATE hijo SET fecha_nacimiento = '03/03/2025' WHERE id_hijo = '585d4ca7' AND id_cedula = '1098640052';
-- hijo 038210fc | cedula padre 1098640052
UPDATE hijo SET fecha_nacimiento = '22/04/2023' WHERE id_hijo = '038210fc' AND id_cedula = '1098640052';
-- hijo ec2be0cc | cedula padre 1098640052
UPDATE hijo SET fecha_nacimiento = '18/03/2018' WHERE id_hijo = 'ec2be0cc' AND id_cedula = '1098640052';
-- hijo 5632e22c | cedula padre 37670060
UPDATE hijo SET fecha_nacimiento = '28/06/2008' WHERE id_hijo = '5632e22c' AND id_cedula = '37670060';
-- hijo fa1a243a | cedula padre 1049019061
UPDATE hijo SET fecha_nacimiento = '06/06/2020' WHERE id_hijo = 'fa1a243a' AND id_cedula = '1049019061';
-- hijo 39c135bd | cedula padre 1049019061
UPDATE hijo SET fecha_nacimiento = '08/04/2023' WHERE id_hijo = '39c135bd' AND id_cedula = '1049019061';
-- hijo 680008d5 | cedula padre 88028168
UPDATE hijo SET fecha_nacimiento = '10/10/2013' WHERE id_hijo = '680008d5' AND id_cedula = '88028168';
-- hijo f3098131 | cedula padre 88028168
UPDATE hijo SET fecha_nacimiento = '24/07/2011' WHERE id_hijo = 'f3098131' AND id_cedula = '88028168';
-- hijo 550fedfb | cedula padre 88028168
UPDATE hijo SET fecha_nacimiento = '02/02/2013' WHERE id_hijo = '550fedfb' AND id_cedula = '88028168';
-- hijo 6b70f95e | cedula padre 88028168
UPDATE hijo SET fecha_nacimiento = '05/12/2009' WHERE id_hijo = '6b70f95e' AND id_cedula = '88028168';
-- hijo 51ff532b | cedula padre 1095908266
UPDATE hijo SET fecha_nacimiento = '18/07/2025' WHERE id_hijo = '51ff532b' AND id_cedula = '1095908266';
-- hijo f2e169a2 | cedula padre 1005152125
UPDATE hijo SET fecha_nacimiento = '29/11/2021' WHERE id_hijo = 'f2e169a2' AND id_cedula = '1005152125';
-- hijo bb7c1f9d | cedula padre 1098752811
UPDATE hijo SET fecha_nacimiento = '20/02/2024' WHERE id_hijo = 'bb7c1f9d' AND id_cedula = '1098752811';
-- hijo f3963340 | cedula padre 1100220410
UPDATE hijo SET fecha_nacimiento = '02/09/2025' WHERE id_hijo = 'f3963340' AND id_cedula = '1100220410';
-- hijo 103cc8e1 | cedula padre 1098622616
UPDATE hijo SET fecha_nacimiento = '27/04/2010' WHERE id_hijo = '103cc8e1' AND id_cedula = '1098622616';
-- hijo d5adbe16 | cedula padre 1098622616
UPDATE hijo SET fecha_nacimiento = '27/03/2015' WHERE id_hijo = 'd5adbe16' AND id_cedula = '1098622616';
-- retirado c5e29cf4 | cedula 1095957344
UPDATE retirado SET fecha_ingreso = '15/10/2022', fecha_retiro = '14/12/2022' WHERE id_retiro = 'c5e29cf4' AND id_cedula = '1095957344';
-- retirado bd2d7d06 | cedula 4984503
UPDATE retirado SET fecha_ingreso = '16/01/2016', fecha_retiro = '31/01/2023' WHERE id_retiro = 'bd2d7d06' AND id_cedula = '4984503';
-- retirado 9476e07c | cedula 1098707090
UPDATE retirado SET fecha_ingreso = '08/11/2021', fecha_retiro = '01/01/2023' WHERE id_retiro = '9476e07c' AND id_cedula = '1098707090';
-- retirado e7624b37 | cedula 1095927567
UPDATE retirado SET fecha_ingreso = '03/10/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'e7624b37' AND id_cedula = '1095927567';
-- retirado 08eb5596 | cedula 1098716179
UPDATE retirado SET fecha_ingreso = '22/11/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = '08eb5596' AND id_cedula = '1098716179';
-- retirado b5070e4d | cedula 1096248201
UPDATE retirado SET fecha_ingreso = '16/12/2020', fecha_retiro = '01/01/2023' WHERE id_retiro = 'b5070e4d' AND id_cedula = '1096248201';
-- retirado a6edd98e | cedula 1101211304
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'a6edd98e' AND id_cedula = '1101211304';
-- retirado dd330fee | cedula 1094532085
UPDATE retirado SET fecha_ingreso = '24/10/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'dd330fee' AND id_cedula = '1094532085';
-- retirado d3b3421a | cedula 1100222724
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '01/01/2023' WHERE id_retiro = 'd3b3421a' AND id_cedula = '1100222724';
-- retirado 346553be | cedula 1005373428
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '02/01/2023' WHERE id_retiro = '346553be' AND id_cedula = '1005373428';
-- retirado e6fa91a3 | cedula 1098634075
UPDATE retirado SET fecha_ingreso = '10/04/2018', fecha_retiro = '04/01/2023' WHERE id_retiro = 'e6fa91a3' AND id_cedula = '1098634075';
-- retirado 3571fbb7 | cedula 1100896907
UPDATE retirado SET fecha_ingreso = '15/05/2021', fecha_retiro = '15/01/2023' WHERE id_retiro = '3571fbb7' AND id_cedula = '1100896907';
-- retirado de423dbf | cedula 1095948885
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '02/02/2023' WHERE id_retiro = 'de423dbf' AND id_cedula = '1095948885';
-- retirado 5ccb97b7 | cedula 7068396
UPDATE retirado SET fecha_ingreso = '11/10/2022', fecha_retiro = '02/02/2023' WHERE id_retiro = '5ccb97b7' AND id_cedula = '7068396';
-- retirado 9644c491 | cedula 37546616
UPDATE retirado SET fecha_ingreso = '10/09/2013', fecha_retiro = '02/02/2023' WHERE id_retiro = '9644c491' AND id_cedula = '37546616';
-- retirado ef3ac47c | cedula 1082956130
UPDATE retirado SET fecha_ingreso = '06/12/2022', fecha_retiro = '02/02/2023' WHERE id_retiro = 'ef3ac47c' AND id_cedula = '1082956130';
-- retirado bf5bc21e | cedula 1097302025
UPDATE retirado SET fecha_ingreso = '09/12/2022', fecha_retiro = '02/02/2023' WHERE id_retiro = 'bf5bc21e' AND id_cedula = '1097302025';
-- retirado b46d9175 | cedula 1090993306
UPDATE retirado SET fecha_ingreso = '17/12/2020', fecha_retiro = '02/02/2023' WHERE id_retiro = 'b46d9175' AND id_cedula = '1090993306';
-- retirado d6d5f6ac | cedula 1005447243
UPDATE retirado SET fecha_ingreso = '08/08/2022', fecha_retiro = '08/02/2023' WHERE id_retiro = 'd6d5f6ac' AND id_cedula = '1005447243';
-- retirado 64b95fd5 | cedula 63537693
UPDATE retirado SET fecha_ingreso = '25/01/2021', fecha_retiro = '07/02/2023' WHERE id_retiro = '64b95fd5' AND id_cedula = '63537693';
-- retirado c571e757 | cedula 1100897117
UPDATE retirado SET fecha_ingreso = '13/03/2021', fecha_retiro = '18/02/2023' WHERE id_retiro = 'c571e757' AND id_cedula = '1100897117';
-- retirado 11826a8b | cedula 1100897117
UPDATE retirado SET fecha_ingreso = '13/03/2021', fecha_retiro = '11/02/2023' WHERE id_retiro = '11826a8b' AND id_cedula = '1100897117';
-- retirado ae31334d | cedula 1130023
UPDATE retirado SET fecha_ingreso = '12/05/2022', fecha_retiro = '18/02/2023' WHERE id_retiro = 'ae31334d' AND id_cedula = '1130023';
-- retirado 2bae8905 | cedula 1130023
UPDATE retirado SET fecha_ingreso = '12/05/2022', fecha_retiro = '06/02/2023' WHERE id_retiro = '2bae8905' AND id_cedula = '1130023';
-- retirado b2082b2d | cedula 1100893759
UPDATE retirado SET fecha_ingreso = '10/10/2022', fecha_retiro = '18/02/2023' WHERE id_retiro = 'b2082b2d' AND id_cedula = '1100893759';
-- retirado da93e8d9 | cedula 1100893759
UPDATE retirado SET fecha_ingreso = '10/10/2022', fecha_retiro = '15/02/2023' WHERE id_retiro = 'da93e8d9' AND id_cedula = '1100893759';
-- retirado 63c187d7 | cedula 1097302696
UPDATE retirado SET fecha_ingreso = '11/10/2022', fecha_retiro = '13/02/2023' WHERE id_retiro = '63c187d7' AND id_cedula = '1097302696';
-- retirado 0ad1a085 | cedula 1097302696
UPDATE retirado SET fecha_ingreso = '11/10/2022', fecha_retiro = '13/02/2023' WHERE id_retiro = '0ad1a085' AND id_cedula = '1097302696';
-- retirado aa1c4b42 | cedula 43536705
UPDATE retirado SET fecha_ingreso = '01/09/2014', fecha_retiro = '01/03/2023' WHERE id_retiro = 'aa1c4b42' AND id_cedula = '43536705';
-- retirado 3ebc656f | cedula 1098702552
UPDATE retirado SET fecha_ingreso = '19/12/2022', fecha_retiro = '01/03/2023' WHERE id_retiro = '3ebc656f' AND id_cedula = '1098702552';
-- retirado 71263400 | cedula 1098784694
UPDATE retirado SET fecha_ingreso = '21/02/2023', fecha_retiro = '24/03/2023' WHERE id_retiro = '71263400' AND id_cedula = '1098784694';
-- retirado 5c770ae3 | cedula 1234338072
UPDATE retirado SET fecha_ingreso = '27/08/2022', fecha_retiro = '24/03/2023' WHERE id_retiro = '5c770ae3' AND id_cedula = '1234338072';
-- retirado e5a11725 | cedula 1098672597
UPDATE retirado SET fecha_ingreso = '21/02/2023', fecha_retiro = '06/03/2023' WHERE id_retiro = 'e5a11725' AND id_cedula = '1098672597';
-- retirado 5e5f0065 | cedula 1095829431
UPDATE retirado SET fecha_ingreso = '16/08/2022', fecha_retiro = '07/03/2023' WHERE id_retiro = '5e5f0065' AND id_cedula = '1095829431';
-- retirado 52474098 | cedula 1126419521
UPDATE retirado SET fecha_ingreso = '10/01/2020', fecha_retiro = '18/03/2023' WHERE id_retiro = '52474098' AND id_cedula = '1126419521';
-- retirado 1cde053b | cedula 1095810568
UPDATE retirado SET fecha_ingreso = '01/08/2021', fecha_retiro = '03/02/2023' WHERE id_retiro = '1cde053b' AND id_cedula = '1095810568';
-- retirado bb300bc3 | cedula 1093767979
UPDATE retirado SET fecha_ingreso = '14/02/2023', fecha_retiro = '27/03/2023' WHERE id_retiro = 'bb300bc3' AND id_cedula = '1093767979';
-- retirado cd7c04be | cedula 1085037288
UPDATE retirado SET fecha_ingreso = '06/12/2022', fecha_retiro = '28/03/2023' WHERE id_retiro = 'cd7c04be' AND id_cedula = '1085037288';
-- retirado 2639eb98 | cedula 812344807011996
UPDATE retirado SET fecha_ingreso = '21/08/2020', fecha_retiro = '03/04/2023' WHERE id_retiro = '2639eb98' AND id_cedula = '812344807011996';
-- retirado ebf841ad | cedula 1005448250
UPDATE retirado SET fecha_ingreso = '12/05/2022', fecha_retiro = '03/04/2023' WHERE id_retiro = 'ebf841ad' AND id_cedula = '1005448250';
-- retirado f0d776d3 | cedula 1007917956
UPDATE retirado SET fecha_ingreso = '22/11/2022', fecha_retiro = '03/04/2023' WHERE id_retiro = 'f0d776d3' AND id_cedula = '1007917956';
-- retirado 8fad02a3 | cedula 1100893378
UPDATE retirado SET fecha_ingreso = '03/11/2022', fecha_retiro = '03/04/2023' WHERE id_retiro = '8fad02a3' AND id_cedula = '1100893378';
-- retirado 27c67974 | cedula 1098780998
UPDATE retirado SET fecha_ingreso = '10/08/2022', fecha_retiro = '05/04/2023' WHERE id_retiro = '27c67974' AND id_cedula = '1098780998';
-- retirado 9dc99531 | cedula 1098829810
UPDATE retirado SET fecha_ingreso = '14/09/2020', fecha_retiro = '06/06/2023' WHERE id_retiro = '9dc99531' AND id_cedula = '1098829810';
-- retirado b3b5c4cd | cedula 1020758240
UPDATE retirado SET fecha_ingreso = '24/03/2023', fecha_retiro = '25/05/2023' WHERE id_retiro = 'b3b5c4cd' AND id_cedula = '1020758240';
-- retirado 7db109d1 | cedula 1002276876
UPDATE retirado SET fecha_ingreso = '07/10/2022', fecha_retiro = '02/06/2023' WHERE id_retiro = '7db109d1' AND id_cedula = '1002276876';
-- retirado 1d522a02 | cedula 2677781
UPDATE retirado SET fecha_ingreso = '16/01/2023', fecha_retiro = '03/06/2023' WHERE id_retiro = '1d522a02' AND id_cedula = '2677781';
-- retirado 994fbe29 | cedula 1095916723
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '09/06/2023' WHERE id_retiro = '994fbe29' AND id_cedula = '1095916723';
-- retirado 46645563 | cedula 1005136829
UPDATE retirado SET fecha_ingreso = '02/03/2023', fecha_retiro = '09/06/2023' WHERE id_retiro = '46645563' AND id_cedula = '1005136829';
-- retirado f1c39f85 | cedula 1005337802
UPDATE retirado SET fecha_ingreso = '01/02/2021', fecha_retiro = '08/06/2023' WHERE id_retiro = 'f1c39f85' AND id_cedula = '1005337802';
-- retirado c63f6743 | cedula 1098705943
UPDATE retirado SET fecha_ingreso = '18/04/2022', fecha_retiro = '10/06/2023' WHERE id_retiro = 'c63f6743' AND id_cedula = '1098705943';
-- retirado 5096c2d8 | cedula 1066083139
UPDATE retirado SET fecha_ingreso = '13/12/2022', fecha_retiro = '13/06/2023' WHERE id_retiro = '5096c2d8' AND id_cedula = '1066083139';
-- retirado f00b36fd | cedula 1005136763
UPDATE retirado SET fecha_ingreso = '03/11/2022', fecha_retiro = '25/05/2023' WHERE id_retiro = 'f00b36fd' AND id_cedula = '1005136763';
-- retirado b2926ed1 | cedula 1543684
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '10/05/2023' WHERE id_retiro = 'b2926ed1' AND id_cedula = '1543684';
-- retirado a9d32fe3 | cedula 1098722582
UPDATE retirado SET fecha_ingreso = '16/01/2023', fecha_retiro = '09/05/2023' WHERE id_retiro = 'a9d32fe3' AND id_cedula = '1098722582';
-- retirado 66bd2408 | cedula 1001815858
UPDATE retirado SET fecha_ingreso = '12/01/2023', fecha_retiro = '04/05/2023' WHERE id_retiro = '66bd2408' AND id_cedula = '1001815858';
-- retirado 02e6ea8c | cedula 1099368102
UPDATE retirado SET fecha_ingreso = '17/01/2020', fecha_retiro = '04/05/2023' WHERE id_retiro = '02e6ea8c' AND id_cedula = '1099368102';
-- retirado d9e13893 | cedula 1096243133
UPDATE retirado SET fecha_ingreso = '01/09/2021', fecha_retiro = '04/05/2023' WHERE id_retiro = 'd9e13893' AND id_cedula = '1096243133';
-- retirado a9231cd9 | cedula 91356514
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '16/06/2023' WHERE id_retiro = 'a9231cd9' AND id_cedula = '91356514';
-- retirado fcb1e555 | cedula 13928910
UPDATE retirado SET fecha_ingreso = '02/05/2022', fecha_retiro = '02/05/2023' WHERE id_retiro = 'fcb1e555' AND id_cedula = '13928910';
-- retirado 159e8c10 | cedula 1100891087
UPDATE retirado SET fecha_ingreso = '09/10/2016', fecha_retiro = '16/06/2023' WHERE id_retiro = '159e8c10' AND id_cedula = '1100891087';
-- retirado abf359bf | cedula 1102805921
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '16/06/2023' WHERE id_retiro = 'abf359bf' AND id_cedula = '1102805921';
-- retirado e633da2b | cedula 1095807767
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '16/06/2023' WHERE id_retiro = 'e633da2b' AND id_cedula = '1095807767';
-- retirado 808e866c | cedula 1092389738
UPDATE retirado SET fecha_ingreso = '03/11/2022', fecha_retiro = '16/06/2023' WHERE id_retiro = '808e866c' AND id_cedula = '1092389738';
-- retirado 26ba2368 | cedula 1094045809
UPDATE retirado SET fecha_ingreso = '06/12/2022', fecha_retiro = '16/06/2023' WHERE id_retiro = '26ba2368' AND id_cedula = '1094045809';
-- retirado f72c554b | cedula 1098710815
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '16/06/2023' WHERE id_retiro = 'f72c554b' AND id_cedula = '1098710815';
-- retirado 74ec7687 | cedula 1100896906
UPDATE retirado SET fecha_ingreso = '24/02/2023', fecha_retiro = '08/03/2023' WHERE id_retiro = '74ec7687' AND id_cedula = '1100896906';
-- retirado f70e032b | cedula 1095825899
UPDATE retirado SET fecha_ingreso = '16/08/2022', fecha_retiro = '01/07/2023' WHERE id_retiro = 'f70e032b' AND id_cedula = '1095825899';
-- retirado 1ae69ead | cedula 1100971152
UPDATE retirado SET fecha_ingreso = '19/12/2022', fecha_retiro = '30/06/2023' WHERE id_retiro = '1ae69ead' AND id_cedula = '1100971152';
-- retirado 36d7db70 | cedula 1007439705
UPDATE retirado SET fecha_ingreso = '19/12/2022', fecha_retiro = '26/06/2023' WHERE id_retiro = '36d7db70' AND id_cedula = '1007439705';
-- retirado be86be61 | cedula 1116614679
UPDATE retirado SET fecha_ingreso = '01/03/2022', fecha_retiro = '17/06/2023' WHERE id_retiro = 'be86be61' AND id_cedula = '1116614679';
-- retirado 66b620ac | cedula 1101204999
UPDATE retirado SET fecha_ingreso = '09/02/2023', fecha_retiro = '16/06/2023' WHERE id_retiro = '66b620ac' AND id_cedula = '1101204999';
-- retirado 2a4421f3 | cedula 4948279
UPDATE retirado SET fecha_ingreso = '22/11/2022', fecha_retiro = '22/01/2023' WHERE id_retiro = '2a4421f3' AND id_cedula = '4948279';
-- retirado 894f8756 | cedula 91355268
UPDATE retirado SET fecha_ingreso = '18/10/2018', fecha_retiro = '16/01/2023' WHERE id_retiro = '894f8756' AND id_cedula = '91355268';
-- retirado cffe21ce | cedula 1121906426
UPDATE retirado SET fecha_ingreso = '18/05/2021', fecha_retiro = '31/01/2023' WHERE id_retiro = 'cffe21ce' AND id_cedula = '1121906426';
-- retirado 2ce77bc0 | cedula 63534894
UPDATE retirado SET fecha_ingreso = '24/10/2022', fecha_retiro = '18/01/2023' WHERE id_retiro = '2ce77bc0' AND id_cedula = '63534894';
-- retirado 9b0b949a | cedula 1
UPDATE retirado SET fecha_ingreso = '16/03/2023', fecha_retiro = '30/06/2023' WHERE id_retiro = '9b0b949a' AND id_cedula = '1';
-- retirado 60949d4d | cedula 80230965
UPDATE retirado SET fecha_ingreso = '15/09/2022', fecha_retiro = '14/02/2023' WHERE id_retiro = '60949d4d' AND id_cedula = '80230965';
-- retirado a78760fc | cedula 13716407
UPDATE retirado SET fecha_ingreso = '01/09/2022', fecha_retiro = '30/06/2023' WHERE id_retiro = 'a78760fc' AND id_cedula = '13716407';
-- retirado fab3ea2c | cedula 1098666170
UPDATE retirado SET fecha_ingreso = '06/02/2023', fecha_retiro = '30/06/2023' WHERE id_retiro = 'fab3ea2c' AND id_cedula = '1098666170';
-- retirado aa95befe | cedula 1098784096
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '01/02/2023' WHERE id_retiro = 'aa95befe' AND id_cedula = '1098784096';
-- retirado 39d60069 | cedula 1091132431
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '21/01/2023' WHERE id_retiro = '39d60069' AND id_cedula = '1091132431';
-- retirado 6d211f40 | cedula 1005136808
UPDATE retirado SET fecha_ingreso = '19/07/2022', fecha_retiro = '19/01/2023' WHERE id_retiro = '6d211f40' AND id_cedula = '1005136808';
-- retirado 5256de1e | cedula 1005179410
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = '5256de1e' AND id_cedula = '1005179410';
-- retirado 2346a4bf | cedula 1005197258
UPDATE retirado SET fecha_ingreso = '19/09/2019', fecha_retiro = '28/01/2023' WHERE id_retiro = '2346a4bf' AND id_cedula = '1005197258';
-- retirado 39de1b20 | cedula 1095819558
UPDATE retirado SET fecha_ingreso = '20/05/2021', fecha_retiro = '24/01/2023' WHERE id_retiro = '39de1b20' AND id_cedula = '1095819558';
-- retirado c145c558 | cedula 1096957994
UPDATE retirado SET fecha_ingreso = '01/06/2021', fecha_retiro = '30/06/2023' WHERE id_retiro = 'c145c558' AND id_cedula = '1096957994';
-- retirado b511da0a | cedula 1004823930
UPDATE retirado SET fecha_ingreso = '08/11/2021', fecha_retiro = '01/07/2023' WHERE id_retiro = 'b511da0a' AND id_cedula = '1004823930';
-- retirado 28bcce7b | cedula 1095946883
UPDATE retirado SET fecha_ingreso = '18/02/2022', fecha_retiro = '01/07/2023' WHERE id_retiro = '28bcce7b' AND id_cedula = '1095946883';
-- retirado 3c4a43ca | cedula 1232892334
UPDATE retirado SET fecha_ingreso = '03/08/2022', fecha_retiro = '01/07/2023' WHERE id_retiro = '3c4a43ca' AND id_cedula = '1232892334';
-- retirado 993d0413 | cedula 1234340765
UPDATE retirado SET fecha_ingreso = '05/08/2020', fecha_retiro = '05/07/2023' WHERE id_retiro = '993d0413' AND id_cedula = '1234340765';
-- retirado caa280f7 | cedula 1101682728
UPDATE retirado SET fecha_ingreso = '27/06/2023', fecha_retiro = '01/07/2023' WHERE id_retiro = 'caa280f7' AND id_cedula = '1101682728';
-- retirado d9291406 | cedula 1007764199
UPDATE retirado SET fecha_ingreso = '01/12/2022', fecha_retiro = '01/02/2023' WHERE id_retiro = 'd9291406' AND id_cedula = '1007764199';
-- retirado 6d8847c3 | cedula 1095788824
UPDATE retirado SET fecha_ingreso = '16/06/2023', fecha_retiro = '14/07/2023' WHERE id_retiro = '6d8847c3' AND id_cedula = '1095788824';
-- retirado e227862a | cedula 1047450497
UPDATE retirado SET fecha_ingreso = '15/01/2021', fecha_retiro = '08/07/2023' WHERE id_retiro = 'e227862a' AND id_cedula = '1047450497';
-- retirado 162d92da | cedula 1095832126
UPDATE retirado SET fecha_ingreso = '07/02/2023', fecha_retiro = '07/07/2023' WHERE id_retiro = '162d92da' AND id_cedula = '1095832126';
-- retirado ede7f191 | cedula 1098807906
UPDATE retirado SET fecha_ingreso = '16/08/2022', fecha_retiro = '18/07/2023' WHERE id_retiro = 'ede7f191' AND id_cedula = '1098807906';
-- retirado 2be8ad42 | cedula 1098815659
UPDATE retirado SET fecha_ingreso = '17/01/2023', fecha_retiro = '17/07/2023' WHERE id_retiro = '2be8ad42' AND id_cedula = '1098815659';
-- retirado a43f5229 | cedula 1005371766
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '17/07/2023' WHERE id_retiro = 'a43f5229' AND id_cedula = '1005371766';
-- retirado 8ec48020 | cedula 3085315
UPDATE retirado SET fecha_ingreso = '11/07/2023', fecha_retiro = '15/07/2023' WHERE id_retiro = '8ec48020' AND id_cedula = '3085315';
-- retirado d9e6635c | cedula 1095907091
UPDATE retirado SET fecha_ingreso = '16/06/2023', fecha_retiro = '05/07/2023' WHERE id_retiro = 'd9e6635c' AND id_cedula = '1095907091';
-- retirado af120518 | cedula 1098800178
UPDATE retirado SET fecha_ingreso = '10/01/2023', fecha_retiro = '15/07/2023' WHERE id_retiro = 'af120518' AND id_cedula = '1098800178';
-- retirado 107edd94 | cedula 91232589
UPDATE retirado SET fecha_ingreso = '15/10/2014', fecha_retiro = '30/06/2023' WHERE id_retiro = '107edd94' AND id_cedula = '91232589';
-- retirado 6d750593 | cedula 1005339880
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '21/07/2023' WHERE id_retiro = '6d750593' AND id_cedula = '1005339880';
-- retirado 4a83a2aa | cedula 1100695854
UPDATE retirado SET fecha_ingreso = '14/02/2023', fecha_retiro = '26/07/2023' WHERE id_retiro = '4a83a2aa' AND id_cedula = '1100695854';
-- retirado 8aa7d33a | cedula 1052218087
UPDATE retirado SET fecha_ingreso = '24/11/2022', fecha_retiro = '01/08/2023' WHERE id_retiro = '8aa7d33a' AND id_cedula = '1052218087';
-- retirado 65391a09 | cedula 1232892424
UPDATE retirado SET fecha_ingreso = '16/06/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = '65391a09' AND id_cedula = '1232892424';
-- retirado da37f4ed | cedula 1005369411
UPDATE retirado SET fecha_ingreso = '25/04/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = 'da37f4ed' AND id_cedula = '1005369411';
-- retirado d39234c7 | cedula 1102360234
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = 'd39234c7' AND id_cedula = '1102360234';
-- retirado b2c3aaf0 | cedula 1096243471
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = 'b2c3aaf0' AND id_cedula = '1096243471';
-- retirado 10b9d7a9 | cedula 1005040763
UPDATE retirado SET fecha_ingreso = '14/07/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = '10b9d7a9' AND id_cedula = '1005040763';
-- retirado cf5c182c | cedula 1100893628
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '03/08/2023' WHERE id_retiro = 'cf5c182c' AND id_cedula = '1100893628';
-- retirado 38abafad | cedula 1007769879
UPDATE retirado SET fecha_ingreso = '27/09/2021', fecha_retiro = '19/08/2023' WHERE id_retiro = '38abafad' AND id_cedula = '1007769879';
-- retirado 11be4c2d | cedula 1005375360
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '18/08/2023' WHERE id_retiro = '11be4c2d' AND id_cedula = '1005375360';
-- retirado 3d952809 | cedula 1005372360
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '18/08/2023' WHERE id_retiro = '3d952809' AND id_cedula = '1005372360';
-- retirado d93d77e3 | cedula 1095963764
UPDATE retirado SET fecha_ingreso = '20/09/2021', fecha_retiro = '19/08/2023' WHERE id_retiro = 'd93d77e3' AND id_cedula = '1095963764';
-- retirado 2de7c715 | cedula 1100896725
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '17/08/2023' WHERE id_retiro = '2de7c715' AND id_cedula = '1100896725';
-- retirado dadc7b68 | cedula 1129485327
UPDATE retirado SET fecha_ingreso = '15/05/2023', fecha_retiro = '14/08/2023' WHERE id_retiro = 'dadc7b68' AND id_cedula = '1129485327';
-- retirado fe75ca49 | cedula 1065577704
UPDATE retirado SET fecha_ingreso = '18/09/2018', fecha_retiro = '12/08/2023' WHERE id_retiro = 'fe75ca49' AND id_cedula = '1065577704';
-- retirado 1ffdd0ed | cedula 1006822494
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '11/08/2023' WHERE id_retiro = '1ffdd0ed' AND id_cedula = '1006822494';
-- retirado 428d7839 | cedula 1098805752
UPDATE retirado SET fecha_ingreso = '18/03/2021', fecha_retiro = '05/08/2023' WHERE id_retiro = '428d7839' AND id_cedula = '1098805752';
-- retirado f53637e5 | cedula 1098751464
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '15/08/2023' WHERE id_retiro = 'f53637e5' AND id_cedula = '1098751464';
-- retirado e2832cd3 | cedula 1098623058
UPDATE retirado SET fecha_ingreso = '05/09/2022', fecha_retiro = '15/08/2023' WHERE id_retiro = 'e2832cd3' AND id_cedula = '1098623058';
-- retirado a1f39d66 | cedula 1082999714
UPDATE retirado SET fecha_ingreso = '08/08/2023', fecha_retiro = '18/08/2023' WHERE id_retiro = 'a1f39d66' AND id_cedula = '1082999714';
-- retirado 67028a1d | cedula 1098782376
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = '67028a1d' AND id_cedula = '1098782376';
-- retirado d519092b | cedula 1098666215
UPDATE retirado SET fecha_ingreso = '15/10/2022', fecha_retiro = '01/08/2023' WHERE id_retiro = 'd519092b' AND id_cedula = '1098666215';
-- retirado 3924d145 | cedula 1095950229
UPDATE retirado SET fecha_ingreso = '27/09/2021', fecha_retiro = '28/08/2023' WHERE id_retiro = '3924d145' AND id_cedula = '1095950229';
-- retirado 8af10a56 | cedula 4926140
UPDATE retirado SET fecha_ingreso = '10/08/2022', fecha_retiro = '28/08/2023' WHERE id_retiro = '8af10a56' AND id_cedula = '4926140';
-- retirado 885c25e9 | cedula 1003335359
UPDATE retirado SET fecha_ingreso = '09/02/2022', fecha_retiro = '01/09/2023' WHERE id_retiro = '885c25e9' AND id_cedula = '1003335359';
-- retirado 64702af1 | cedula 1005272415
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '04/09/2023' WHERE id_retiro = '64702af1' AND id_cedula = '1005272415';
-- retirado 925cffeb | cedula 1121044437
UPDATE retirado SET fecha_ingreso = '23/10/2020', fecha_retiro = '02/09/2023' WHERE id_retiro = '925cffeb' AND id_cedula = '1121044437';
-- retirado 23626f91 | cedula 1007439697
UPDATE retirado SET fecha_ingreso = '25/08/2023', fecha_retiro = '04/09/2023' WHERE id_retiro = '23626f91' AND id_cedula = '1007439697';
-- retirado 109e08bf | cedula 1005280727
UPDATE retirado SET fecha_ingreso = '08/08/2023', fecha_retiro = '02/09/2023' WHERE id_retiro = '109e08bf' AND id_cedula = '1005280727';
-- retirado 750e565e | cedula 1005108752
UPDATE retirado SET fecha_ingreso = '01/12/2022', fecha_retiro = '06/09/2023' WHERE id_retiro = '750e565e' AND id_cedula = '1005108752';
-- retirado a0633eb9 | cedula 1098697292
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '10/09/2023' WHERE id_retiro = 'a0633eb9' AND id_cedula = '1098697292';
-- retirado 5647f50f | cedula 13872972
UPDATE retirado SET fecha_ingreso = '11/08/2017', fecha_retiro = '09/09/2023' WHERE id_retiro = '5647f50f' AND id_cedula = '13872972';
-- retirado 48b80764 | cedula 1007412982
UPDATE retirado SET fecha_ingreso = '04/04/2022', fecha_retiro = '07/09/2023' WHERE id_retiro = '48b80764' AND id_cedula = '1007412982';
-- retirado 3db02ac0 | cedula 1005156911
UPDATE retirado SET fecha_ingreso = '22/11/2021', fecha_retiro = '07/09/2023' WHERE id_retiro = '3db02ac0' AND id_cedula = '1005156911';
-- retirado eb9fa2f3 | cedula 1095943754
UPDATE retirado SET fecha_ingreso = '09/12/2022', fecha_retiro = '07/09/2023' WHERE id_retiro = 'eb9fa2f3' AND id_cedula = '1095943754';
-- retirado 34cd68f8 | cedula 1095828524
UPDATE retirado SET fecha_ingreso = '04/09/2023', fecha_retiro = '08/09/2023' WHERE id_retiro = '34cd68f8' AND id_cedula = '1095828524';
-- retirado e23d5d18 | cedula 4868423
UPDATE retirado SET fecha_ingreso = '11/07/2023', fecha_retiro = '16/09/2023' WHERE id_retiro = 'e23d5d18' AND id_cedula = '4868423';
-- retirado 96fe738a | cedula 1095831870
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '14/09/2023' WHERE id_retiro = '96fe738a' AND id_cedula = '1095831870';
-- retirado 1c14cfa9 | cedula 1007667600
UPDATE retirado SET fecha_ingreso = '01/12/2022', fecha_retiro = '12/09/2023' WHERE id_retiro = '1c14cfa9' AND id_cedula = '1007667600';
-- retirado b86e38e7 | cedula 4769521
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '15/09/2023' WHERE id_retiro = 'b86e38e7' AND id_cedula = '4769521';
-- retirado 15a18b44 | cedula 1098705695
UPDATE retirado SET fecha_ingreso = '06/06/2023', fecha_retiro = '16/09/2023' WHERE id_retiro = '15a18b44' AND id_cedula = '1098705695';
-- retirado d0004afa | cedula 1005336257
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '30/09/2023' WHERE id_retiro = 'd0004afa' AND id_cedula = '1005336257';
-- retirado 2fc41cb9 | cedula 1098622425
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '16/09/2023' WHERE id_retiro = '2fc41cb9' AND id_cedula = '1098622425';
-- retirado 01076bff | cedula 1055449415
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '02/10/2023' WHERE id_retiro = '01076bff' AND id_cedula = '1055449415';
-- retirado fc6d3a0f | cedula 1101598119
UPDATE retirado SET fecha_ingreso = '04/09/2023', fecha_retiro = '22/09/2023' WHERE id_retiro = 'fc6d3a0f' AND id_cedula = '1101598119';
-- retirado 717fa592 | cedula 1102373658
UPDATE retirado SET fecha_ingreso = '18/02/2022', fecha_retiro = '01/10/2023' WHERE id_retiro = '717fa592' AND id_cedula = '1102373658';
-- retirado a01da070 | cedula 1007678100
UPDATE retirado SET fecha_ingreso = '27/03/2023', fecha_retiro = '05/10/2023' WHERE id_retiro = 'a01da070' AND id_cedula = '1007678100';
-- retirado 461e359b | cedula 1065875223
UPDATE retirado SET fecha_ingreso = '09/09/2020', fecha_retiro = '02/10/2023' WHERE id_retiro = '461e359b' AND id_cedula = '1065875223';
-- retirado e09fb3e1 | cedula 1232894792
UPDATE retirado SET fecha_ingreso = '14/10/2020', fecha_retiro = '12/10/2023' WHERE id_retiro = 'e09fb3e1' AND id_cedula = '1232894792';
-- retirado 525648d9 | cedula 1095822040
UPDATE retirado SET fecha_ingreso = '02/03/2023', fecha_retiro = '18/10/2023' WHERE id_retiro = '525648d9' AND id_cedula = '1095822040';
-- retirado 04f9e351 | cedula 1094840635
UPDATE retirado SET fecha_ingreso = '01/12/2022', fecha_retiro = '21/10/2023' WHERE id_retiro = '04f9e351' AND id_cedula = '1094840635';
-- retirado ddb3dc6c | cedula 1064728458
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '22/10/2023' WHERE id_retiro = 'ddb3dc6c' AND id_cedula = '1064728458';
-- retirado 33faedde | cedula 1065245775
UPDATE retirado SET fecha_ingreso = '15/05/2023', fecha_retiro = '21/10/2023' WHERE id_retiro = '33faedde' AND id_cedula = '1065245775';
-- retirado 0ffa4049 | cedula 7360723
UPDATE retirado SET fecha_ingreso = '27/07/2023', fecha_retiro = '25/09/2023' WHERE id_retiro = '0ffa4049' AND id_cedula = '7360723';
-- retirado 3b72793d | cedula 1097092472
UPDATE retirado SET fecha_ingreso = '01/07/2022', fecha_retiro = '23/09/2023' WHERE id_retiro = '3b72793d' AND id_cedula = '1097092472';
-- retirado a3a9458d | cedula 1234340651
UPDATE retirado SET fecha_ingreso = '12/10/2023', fecha_retiro = '21/10/2023' WHERE id_retiro = 'a3a9458d' AND id_cedula = '1234340651';
-- retirado 4998aee1 | cedula 1098791772
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '21/10/2023' WHERE id_retiro = '4998aee1' AND id_cedula = '1098791772';
-- retirado 8c3e6419 | cedula 1098731860
UPDATE retirado SET fecha_ingreso = '22/09/2023', fecha_retiro = '05/10/2023' WHERE id_retiro = '8c3e6419' AND id_cedula = '1098731860';
-- retirado b84be3fb | cedula 1110576442
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '02/10/2023' WHERE id_retiro = 'b84be3fb' AND id_cedula = '1110576442';
-- retirado 36d2782a | cedula 1098612610
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '05/10/2023' WHERE id_retiro = '36d2782a' AND id_cedula = '1098612610';
-- retirado 9d9f3c08 | cedula 1005324198
UPDATE retirado SET fecha_ingreso = '08/08/2023', fecha_retiro = '24/10/2023' WHERE id_retiro = '9d9f3c08' AND id_cedula = '1005324198';
-- retirado 64dae06d | cedula 1005280634
UPDATE retirado SET fecha_ingreso = '24/10/2023', fecha_retiro = '01/11/2023' WHERE id_retiro = '64dae06d' AND id_cedula = '1005280634';
-- retirado e8190d6f | cedula 1095936284
UPDATE retirado SET fecha_ingreso = '09/02/2022', fecha_retiro = '05/11/2023' WHERE id_retiro = 'e8190d6f' AND id_cedula = '1095936284';
-- retirado 0ab8b9ce | cedula 1095827638
UPDATE retirado SET fecha_ingreso = '04/09/2023', fecha_retiro = '04/11/2023' WHERE id_retiro = '0ab8b9ce' AND id_cedula = '1095827638';
-- retirado 2bbf2579 | cedula 1005188222
UPDATE retirado SET fecha_ingreso = '20/05/2021', fecha_retiro = '03/11/2023' WHERE id_retiro = '2bbf2579' AND id_cedula = '1005188222';
-- retirado f258711f | cedula 1098759821
UPDATE retirado SET fecha_ingreso = '01/06/2020', fecha_retiro = '03/11/2023' WHERE id_retiro = 'f258711f' AND id_cedula = '1098759821';
-- retirado 4f90e3d1 | cedula 1095947531
UPDATE retirado SET fecha_ingreso = '16/01/2023', fecha_retiro = '01/11/2023' WHERE id_retiro = '4f90e3d1' AND id_cedula = '1095947531';
-- retirado ba1a2c25 | cedula 1005108421
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '04/11/2023' WHERE id_retiro = 'ba1a2c25' AND id_cedula = '1005108421';
-- retirado 2961646e | cedula 91535197
UPDATE retirado SET fecha_ingreso = '02/11/2023', fecha_retiro = '03/11/2023' WHERE id_retiro = '2961646e' AND id_cedula = '91535197';
-- retirado 9847027a | cedula 1098765043
UPDATE retirado SET fecha_ingreso = '19/09/2023', fecha_retiro = '09/11/2023' WHERE id_retiro = '9847027a' AND id_cedula = '1098765043';
-- retirado f58fc8d3 | cedula 1232888572
UPDATE retirado SET fecha_ingreso = '12/09/2023', fecha_retiro = '17/11/2023' WHERE id_retiro = 'f58fc8d3' AND id_cedula = '1232888572';
-- retirado 2417a1fb | cedula 1005151938
UPDATE retirado SET fecha_ingreso = '02/11/2023', fecha_retiro = '16/11/2023' WHERE id_retiro = '2417a1fb' AND id_cedula = '1005151938';
-- retirado d51a075b | cedula 5255222
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '06/11/2023' WHERE id_retiro = 'd51a075b' AND id_cedula = '5255222';
-- retirado 819dda87 | cedula 1142915174
UPDATE retirado SET fecha_ingreso = '23/09/2023', fecha_retiro = '18/11/2023' WHERE id_retiro = '819dda87' AND id_cedula = '1142915174';
-- retirado 78867aac | cedula 1102381907
UPDATE retirado SET fecha_ingreso = '15/06/2022', fecha_retiro = '17/11/2023' WHERE id_retiro = '78867aac' AND id_cedula = '1102381907';
-- retirado f8e19bea | cedula 1098700957
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '18/11/2023' WHERE id_retiro = 'f8e19bea' AND id_cedula = '1098700957';
-- retirado f3c4fd6e | cedula 1005259277
UPDATE retirado SET fecha_ingreso = '12/10/2023', fecha_retiro = '15/11/2023' WHERE id_retiro = 'f3c4fd6e' AND id_cedula = '1005259277';
-- retirado 4d8cbf4a | cedula 1095821450
UPDATE retirado SET fecha_ingreso = '22/09/2023', fecha_retiro = '21/11/2023' WHERE id_retiro = '4d8cbf4a' AND id_cedula = '1095821450';
-- retirado b1fb73dd | cedula 1098773168
UPDATE retirado SET fecha_ingreso = '23/08/2021', fecha_retiro = '18/11/2023' WHERE id_retiro = 'b1fb73dd' AND id_cedula = '1098773168';
-- retirado e98bc4f5 | cedula 1100892188
UPDATE retirado SET fecha_ingreso = '13/07/2021', fecha_retiro = '25/11/2023' WHERE id_retiro = 'e98bc4f5' AND id_cedula = '1100892188';
-- retirado 2083b1e5 | cedula 1148454856
UPDATE retirado SET fecha_ingreso = '26/09/2022', fecha_retiro = '27/11/2023' WHERE id_retiro = '2083b1e5' AND id_cedula = '1148454856';
-- retirado 40a4a18b | cedula 1098618560
UPDATE retirado SET fecha_ingreso = '08/09/2020', fecha_retiro = '20/11/2023' WHERE id_retiro = '40a4a18b' AND id_cedula = '1098618560';
-- retirado c6c10f76 | cedula 1102723821
UPDATE retirado SET fecha_ingreso = '30/06/2023', fecha_retiro = '19/11/2023' WHERE id_retiro = 'c6c10f76' AND id_cedula = '1102723821';
-- retirado d797a58e | cedula 91541834
UPDATE retirado SET fecha_ingreso = '14/02/2023', fecha_retiro = '18/11/2023' WHERE id_retiro = 'd797a58e' AND id_cedula = '91541834';
-- retirado 01bff981 | cedula 1003246386
UPDATE retirado SET fecha_ingreso = '26/11/2022', fecha_retiro = '30/11/2023' WHERE id_retiro = '01bff981' AND id_cedula = '1003246386';
-- retirado 2c5a12d9 | cedula 1099735372
UPDATE retirado SET fecha_ingreso = '06/10/2022', fecha_retiro = '30/11/2023' WHERE id_retiro = '2c5a12d9' AND id_cedula = '1099735372';
-- retirado eae5a3c1 | cedula 1004364659
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '01/12/2023' WHERE id_retiro = 'eae5a3c1' AND id_cedula = '1004364659';
-- retirado 9f25a76e | cedula 1005329972
UPDATE retirado SET fecha_ingreso = '19/09/2023', fecha_retiro = '01/12/2023' WHERE id_retiro = '9f25a76e' AND id_cedula = '1005329972';
-- retirado 673be8a5 | cedula 1095944205
UPDATE retirado SET fecha_ingreso = '15/11/2022', fecha_retiro = '01/12/2023' WHERE id_retiro = '673be8a5' AND id_cedula = '1095944205';
-- retirado ee4dfa8b | cedula 1005452210
UPDATE retirado SET fecha_ingreso = '17/04/2017', fecha_retiro = '05/12/2023' WHERE id_retiro = 'ee4dfa8b' AND id_cedula = '1005452210';
-- retirado 33b4c31a | cedula 1005541986
UPDATE retirado SET fecha_ingreso = '21/11/2023', fecha_retiro = '07/12/2023' WHERE id_retiro = '33b4c31a' AND id_cedula = '1005541986';
-- retirado 88659df1 | cedula 1096538631
UPDATE retirado SET fecha_ingreso = '09/05/2023', fecha_retiro = '06/12/2023' WHERE id_retiro = '88659df1' AND id_cedula = '1096538631';
-- retirado 60715279 | cedula 1050920056
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '09/12/2023' WHERE id_retiro = '60715279' AND id_cedula = '1050920056';
-- retirado 71e9691e | cedula 1007769720
UPDATE retirado SET fecha_ingreso = '03/10/2022', fecha_retiro = '12/12/2023' WHERE id_retiro = '71e9691e' AND id_cedula = '1007769720';
-- retirado 64ea9d9d | cedula 1095817542
UPDATE retirado SET fecha_ingreso = '07/01/2023', fecha_retiro = '11/12/2023' WHERE id_retiro = '64ea9d9d' AND id_cedula = '1095817542';
-- retirado cc437b58 | cedula 13743729
UPDATE retirado SET fecha_ingreso = '18/04/2015', fecha_retiro = '12/12/2023' WHERE id_retiro = 'cc437b58' AND id_cedula = '13743729';
-- retirado 825db90b | cedula 1063482428
UPDATE retirado SET fecha_ingreso = '12/10/2023', fecha_retiro = '11/12/2023' WHERE id_retiro = '825db90b' AND id_cedula = '1063482428';
-- retirado 5adab1e3 | cedula 1002444626
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '12/12/2023' WHERE id_retiro = '5adab1e3' AND id_cedula = '1002444626';
-- retirado 44918d27 | cedula 1005371592
UPDATE retirado SET fecha_ingreso = '27/11/2023', fecha_retiro = '07/12/2023' WHERE id_retiro = '44918d27' AND id_cedula = '1005371592';
-- retirado bcce024d | cedula 79626368
UPDATE retirado SET fecha_ingreso = '02/05/2016', fecha_retiro = '26/12/2023' WHERE id_retiro = 'bcce024d' AND id_cedula = '79626368';
-- retirado 93636128 | cedula 1095826663
UPDATE retirado SET fecha_ingreso = '27/11/2023', fecha_retiro = '23/12/2023' WHERE id_retiro = '93636128' AND id_cedula = '1095826663';
-- retirado 14186470 | cedula 1094962899
UPDATE retirado SET fecha_ingreso = '19/12/2023', fecha_retiro = '21/12/2023' WHERE id_retiro = '14186470' AND id_cedula = '1094962899';
-- retirado 704927db | cedula 1193567011
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '23/12/2023' WHERE id_retiro = '704927db' AND id_cedula = '1193567011';
-- retirado 27815767 | cedula 1096958437
UPDATE retirado SET fecha_ingreso = '01/02/2018', fecha_retiro = '29/12/2023' WHERE id_retiro = '27815767' AND id_cedula = '1096958437';
-- retirado d2f56d18 | cedula 18974435
UPDATE retirado SET fecha_ingreso = '11/09/2015', fecha_retiro = '28/12/2023' WHERE id_retiro = 'd2f56d18' AND id_cedula = '18974435';
-- retirado b78b35aa | cedula 1005565551
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '28/12/2023' WHERE id_retiro = 'b78b35aa' AND id_cedula = '1005565551';
-- retirado 3ee67278 | cedula 1098670905
UPDATE retirado SET fecha_ingreso = '01/08/2023', fecha_retiro = '30/12/2023' WHERE id_retiro = '3ee67278' AND id_cedula = '1098670905';
-- retirado 2f1465dd | cedula 80842536
UPDATE retirado SET fecha_ingreso = '14/12/2023', fecha_retiro = '30/12/2023' WHERE id_retiro = '2f1465dd' AND id_cedula = '80842536';
-- retirado 910a29aa | cedula 5425331
UPDATE retirado SET fecha_ingreso = '21/12/2023', fecha_retiro = '22/12/2023' WHERE id_retiro = '910a29aa' AND id_cedula = '5425331';
-- retirado 1a5a86e6 | cedula 11235279
UPDATE retirado SET fecha_ingreso = '14/12/2020', fecha_retiro = '30/12/2023' WHERE id_retiro = '1a5a86e6' AND id_cedula = '11235279';
-- retirado 02366bc6 | cedula 91353575
UPDATE retirado SET fecha_ingreso = '05/12/2023', fecha_retiro = '02/01/2024' WHERE id_retiro = '02366bc6' AND id_cedula = '91353575';
-- retirado 70998100 | cedula 1095917873
UPDATE retirado SET fecha_ingreso = '14/12/2023', fecha_retiro = '04/01/2024' WHERE id_retiro = '70998100' AND id_cedula = '1095917873';
-- retirado 49bc0068 | cedula 1005271622
UPDATE retirado SET fecha_ingreso = '22/09/2023', fecha_retiro = '02/01/2024' WHERE id_retiro = '49bc0068' AND id_cedula = '1005271622';
-- retirado a9ed9a37 | cedula 1102362432
UPDATE retirado SET fecha_ingreso = '05/12/2023', fecha_retiro = '02/01/2024' WHERE id_retiro = 'a9ed9a37' AND id_cedula = '1102362432';
-- retirado a476b688 | cedula 91515676
UPDATE retirado SET fecha_ingreso = '05/02/2021', fecha_retiro = '05/01/2024' WHERE id_retiro = 'a476b688' AND id_cedula = '91515676';
-- retirado be80bf95 | cedula 7363482
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '08/01/2024' WHERE id_retiro = 'be80bf95' AND id_cedula = '7363482';
-- retirado 72f36c7c | cedula 1102380827
UPDATE retirado SET fecha_ingreso = '06/07/2018', fecha_retiro = '02/01/2024' WHERE id_retiro = '72f36c7c' AND id_cedula = '1102380827';
-- retirado 3833f008 | cedula 1095909053
UPDATE retirado SET fecha_ingreso = '19/12/2023', fecha_retiro = '04/01/2024' WHERE id_retiro = '3833f008' AND id_cedula = '1095909053';
-- retirado fb4cc588 | cedula 1005153680
UPDATE retirado SET fecha_ingreso = '25/04/2023', fecha_retiro = '09/01/2024' WHERE id_retiro = 'fb4cc588' AND id_cedula = '1005153680';
-- retirado bcbe00bd | cedula 1234339501
UPDATE retirado SET fecha_ingreso = '11/05/2023', fecha_retiro = '11/01/2024' WHERE id_retiro = 'bcbe00bd' AND id_cedula = '1234339501';
-- retirado 52d0de7f | cedula 1096951236
UPDATE retirado SET fecha_ingreso = '22/07/2013', fecha_retiro = '09/01/2024' WHERE id_retiro = '52d0de7f' AND id_cedula = '1096951236';
-- retirado 42b0d88e | cedula 1095940472
UPDATE retirado SET fecha_ingreso = '27/11/2023', fecha_retiro = '10/01/2024' WHERE id_retiro = '42b0d88e' AND id_cedula = '1095940472';
-- retirado 382fec85 | cedula 1095937389
UPDATE retirado SET fecha_ingreso = '07/09/2020', fecha_retiro = '16/01/2024' WHERE id_retiro = '382fec85' AND id_cedula = '1095937389';
-- retirado 743c3915 | cedula 1007579361
UPDATE retirado SET fecha_ingreso = '14/07/2023', fecha_retiro = '13/01/2024' WHERE id_retiro = '743c3915' AND id_cedula = '1007579361';
-- retirado 919db390 | cedula 1005372360
UPDATE retirado SET fecha_ingreso = '13/10/2023', fecha_retiro = '13/01/2024' WHERE id_retiro = '919db390' AND id_cedula = '1005372360';
-- retirado cccbd259 | cedula 1098765061
UPDATE retirado SET fecha_ingreso = '29/11/2021', fecha_retiro = '22/01/2024' WHERE id_retiro = 'cccbd259' AND id_cedula = '1098765061';
-- retirado dc08c856 | cedula 1098708548
UPDATE retirado SET fecha_ingreso = '11/01/2024', fecha_retiro = '19/01/2024' WHERE id_retiro = 'dc08c856' AND id_cedula = '1098708548';
-- retirado cbd3e7aa | cedula 1098782901
UPDATE retirado SET fecha_ingreso = '04/03/2021', fecha_retiro = '15/01/2024' WHERE id_retiro = 'cbd3e7aa' AND id_cedula = '1098782901';
-- retirado 53169be4 | cedula 1065245739
UPDATE retirado SET fecha_ingreso = '24/03/2021', fecha_retiro = '15/01/2024' WHERE id_retiro = '53169be4' AND id_cedula = '1065245739';
-- retirado 1207b44b | cedula 1095825463
UPDATE retirado SET fecha_ingreso = '23/08/2021', fecha_retiro = '22/01/2024' WHERE id_retiro = '1207b44b' AND id_cedula = '1095825463';
-- retirado 0de52de6 | cedula 1007673743
UPDATE retirado SET fecha_ingreso = '23/01/2024', fecha_retiro = '26/01/2024' WHERE id_retiro = '0de52de6' AND id_cedula = '1007673743';
-- retirado daf2d25d | cedula 1102390512
UPDATE retirado SET fecha_ingreso = '23/06/2022', fecha_retiro = '01/02/2024' WHERE id_retiro = 'daf2d25d' AND id_cedula = '1102390512';
-- retirado 1cf559a9 | cedula 1081787784
UPDATE retirado SET fecha_ingreso = '21/07/2023', fecha_retiro = '02/01/2024' WHERE id_retiro = '1cf559a9' AND id_cedula = '1081787784';
-- retirado 2f75424d | cedula 1095835855
UPDATE retirado SET fecha_ingreso = '04/07/2023', fecha_retiro = '04/01/2024' WHERE id_retiro = '2f75424d' AND id_cedula = '1095835855';
-- retirado b948455d | cedula 1005338427
UPDATE retirado SET fecha_ingreso = '28/06/2023', fecha_retiro = '31/12/2023' WHERE id_retiro = 'b948455d' AND id_cedula = '1005338427';
-- retirado 1d821769 | cedula 1097612814
UPDATE retirado SET fecha_ingreso = '06/06/2023', fecha_retiro = '06/12/2023' WHERE id_retiro = '1d821769' AND id_cedula = '1097612814';
-- retirado bbc8d16e | cedula 1095917411
UPDATE retirado SET fecha_ingreso = '22/11/2022', fecha_retiro = '01/02/2024' WHERE id_retiro = 'bbc8d16e' AND id_cedula = '1095917411';
-- retirado 576a8530 | cedula 1098800312
UPDATE retirado SET fecha_ingreso = '11/05/2021', fecha_retiro = '31/01/2024' WHERE id_retiro = '576a8530' AND id_cedula = '1098800312';
-- retirado b4acd591 | cedula 1095929628
UPDATE retirado SET fecha_ingreso = '22/09/2018', fecha_retiro = '31/01/2024' WHERE id_retiro = 'b4acd591' AND id_cedula = '1095929628';
-- retirado 0457457b | cedula 1005107733
UPDATE retirado SET fecha_ingreso = '11/07/2023', fecha_retiro = '31/01/2024' WHERE id_retiro = '0457457b' AND id_cedula = '1005107733';
-- retirado 7a39a3af | cedula 1065918801
UPDATE retirado SET fecha_ingreso = '27/07/2023', fecha_retiro = '31/01/2024' WHERE id_retiro = '7a39a3af' AND id_cedula = '1065918801';
-- retirado 9d87c4bb | cedula 1098814140
UPDATE retirado SET fecha_ingreso = '12/10/2023', fecha_retiro = '01/02/2024' WHERE id_retiro = '9d87c4bb' AND id_cedula = '1098814140';
-- retirado ce74b835 | cedula 1098822966
UPDATE retirado SET fecha_ingreso = '01/08/2023', fecha_retiro = '31/01/2024' WHERE id_retiro = 'ce74b835' AND id_cedula = '1098822966';
-- retirado eb4589b2 | cedula 1098797421
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '26/01/2023' WHERE id_retiro = 'eb4589b2' AND id_cedula = '1098797421';
-- retirado ae3ee5a5 | cedula 1005209826
UPDATE retirado SET fecha_ingreso = '24/10/2023', fecha_retiro = '05/02/2024' WHERE id_retiro = 'ae3ee5a5' AND id_cedula = '1005209826';
-- retirado 55a041ad | cedula 6202600
UPDATE retirado SET fecha_ingreso = '16/11/2023', fecha_retiro = '07/02/2024' WHERE id_retiro = '55a041ad' AND id_cedula = '6202600';
-- retirado 587f77a5 | cedula 91536699
UPDATE retirado SET fecha_ingreso = '16/01/2024', fecha_retiro = '02/02/2024' WHERE id_retiro = '587f77a5' AND id_cedula = '91536699';
-- retirado 03e3eb4d | cedula 1065234496
UPDATE retirado SET fecha_ingreso = '06/02/2024', fecha_retiro = '08/02/2024' WHERE id_retiro = '03e3eb4d' AND id_cedula = '1065234496';
-- retirado b0bf98c8 | cedula 1098822966
UPDATE retirado SET fecha_ingreso = '01/08/2023', fecha_retiro = '31/01/2024' WHERE id_retiro = 'b0bf98c8' AND id_cedula = '1098822966';
-- retirado 73859411 | cedula 1102387913
UPDATE retirado SET fecha_ingreso = '09/12/2019', fecha_retiro = '09/02/2024' WHERE id_retiro = '73859411' AND id_cedula = '1102387913';
-- retirado 102a5463 | cedula 1066084106
UPDATE retirado SET fecha_ingreso = '02/11/2023', fecha_retiro = '15/02/2024' WHERE id_retiro = '102a5463' AND id_cedula = '1066084106';
-- retirado cd0ede5d | cedula 1099377191
UPDATE retirado SET fecha_ingreso = '27/11/2023', fecha_retiro = '10/02/2024' WHERE id_retiro = 'cd0ede5d' AND id_cedula = '1099377191';
-- retirado 2cc373c4 | cedula 1007715302
UPDATE retirado SET fecha_ingreso = '10/01/2023', fecha_retiro = '31/07/2023' WHERE id_retiro = '2cc373c4' AND id_cedula = '1007715302';
-- retirado 41feaa4a | cedula 1094266549
UPDATE retirado SET fecha_ingreso = '07/01/2023', fecha_retiro = '21/02/2024' WHERE id_retiro = '41feaa4a' AND id_cedula = '1094266549';
-- retirado 9356fbc0 | cedula 6990572
UPDATE retirado SET fecha_ingreso = '13/02/2024', fecha_retiro = '16/02/2024' WHERE id_retiro = '9356fbc0' AND id_cedula = '6990572';
-- retirado 9976af44 | cedula 1098695216
UPDATE retirado SET fecha_ingreso = '12/09/2023', fecha_retiro = '23/02/2024' WHERE id_retiro = '9976af44' AND id_cedula = '1098695216';
-- retirado 6e7746c1 | cedula 1095835587
UPDATE retirado SET fecha_ingreso = '06/02/2024', fecha_retiro = '16/02/2024' WHERE id_retiro = '6e7746c1' AND id_cedula = '1095835587';
-- retirado 22114ee8 | cedula 91286747
UPDATE retirado SET fecha_ingreso = '01/10/2015', fecha_retiro = '22/02/2024' WHERE id_retiro = '22114ee8' AND id_cedula = '91286747';
-- retirado f1eb60b0 | cedula 1102389527
UPDATE retirado SET fecha_ingreso = '05/02/2020', fecha_retiro = '28/02/2024' WHERE id_retiro = 'f1eb60b0' AND id_cedula = '1102389527';
-- retirado e7d53844 | cedula 1097612814
UPDATE retirado SET fecha_ingreso = '07/12/2023', fecha_retiro = '28/02/2024' WHERE id_retiro = 'e7d53844' AND id_cedula = '1097612814';
-- retirado 890e2b40 | cedula 1098606170
UPDATE retirado SET fecha_ingreso = '16/01/2023', fecha_retiro = '28/02/2024' WHERE id_retiro = '890e2b40' AND id_cedula = '1098606170';
-- retirado 38670bcb | cedula 1098688051
UPDATE retirado SET fecha_ingreso = '05/12/2023', fecha_retiro = '28/02/2024' WHERE id_retiro = '38670bcb' AND id_cedula = '1098688051';
-- retirado cb489fb8 | cedula 1098821878
UPDATE retirado SET fecha_ingreso = '06/06/2023', fecha_retiro = '28/02/2024' WHERE id_retiro = 'cb489fb8' AND id_cedula = '1098821878';
-- retirado 5f05379c | cedula 1095298644
UPDATE retirado SET fecha_ingreso = '20/10/2022', fecha_retiro = '28/02/2024' WHERE id_retiro = '5f05379c' AND id_cedula = '1095298644';
-- retirado 17560d20 | cedula 1098760784
UPDATE retirado SET fecha_ingreso = '03/10/2019', fecha_retiro = '28/02/2024' WHERE id_retiro = '17560d20' AND id_cedula = '1098760784';
-- retirado 4c26dc8c | cedula 1098703863
UPDATE retirado SET fecha_ingreso = '27/03/2020', fecha_retiro = '28/02/2024' WHERE id_retiro = '4c26dc8c' AND id_cedula = '1098703863';
-- retirado ac62297a | cedula 1099365824
UPDATE retirado SET fecha_ingreso = '29/01/2013', fecha_retiro = '22/02/2024' WHERE id_retiro = 'ac62297a' AND id_cedula = '1099365824';
-- retirado cc11f496 | cedula 1099364262
UPDATE retirado SET fecha_ingreso = '14/03/2016', fecha_retiro = '28/02/2024' WHERE id_retiro = 'cc11f496' AND id_cedula = '1099364262';
-- retirado f0d35863 | cedula 1095828837
UPDATE retirado SET fecha_ingreso = '21/01/2023', fecha_retiro = '28/02/2024' WHERE id_retiro = 'f0d35863' AND id_cedula = '1095828837';
-- retirado c0f278be | cedula 1098764768
UPDATE retirado SET fecha_ingreso = '02/11/2023', fecha_retiro = '28/02/2024' WHERE id_retiro = 'c0f278be' AND id_cedula = '1098764768';
-- retirado 4429814a | cedula 91514544
UPDATE retirado SET fecha_ingreso = '10/10/2022', fecha_retiro = '28/02/2024' WHERE id_retiro = '4429814a' AND id_cedula = '91514544';
-- retirado 9b646678 | cedula 1095822038
UPDATE retirado SET fecha_ingreso = '10/10/2023', fecha_retiro = '28/02/2024' WHERE id_retiro = '9b646678' AND id_cedula = '1095822038';
-- retirado 095e1a99 | cedula 6158509
UPDATE retirado SET fecha_ingreso = '06/02/2024', fecha_retiro = '24/02/2024' WHERE id_retiro = '095e1a99' AND id_cedula = '6158509';
-- retirado 357f356d | cedula 1098762009
UPDATE retirado SET fecha_ingreso = '13/02/2024', fecha_retiro = '24/02/2024' WHERE id_retiro = '357f356d' AND id_cedula = '1098762009';
-- retirado 33bd6de1 | cedula 1095951615
UPDATE retirado SET fecha_ingreso = '24/03/2021', fecha_retiro = '24/02/2024' WHERE id_retiro = '33bd6de1' AND id_cedula = '1095951615';
-- retirado 015f5418 | cedula 1099622755
UPDATE retirado SET fecha_ingreso = '15/08/2023', fecha_retiro = '14/02/2024' WHERE id_retiro = '015f5418' AND id_cedula = '1099622755';
-- retirado b1c4fe8e | cedula 1098808629
UPDATE retirado SET fecha_ingreso = '06/06/2023', fecha_retiro = '05/03/2024' WHERE id_retiro = 'b1c4fe8e' AND id_cedula = '1098808629';
-- retirado 9eea58f0 | cedula 1098772942
UPDATE retirado SET fecha_ingreso = '01/08/2023', fecha_retiro = '02/03/2024' WHERE id_retiro = '9eea58f0' AND id_cedula = '1098772942';
-- retirado b87e429d | cedula 1100223026
UPDATE retirado SET fecha_ingreso = '04/09/2023', fecha_retiro = '03/03/2024' WHERE id_retiro = 'b87e429d' AND id_cedula = '1100223026';
-- retirado 364ee186 | cedula 91468085
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '01/03/2024' WHERE id_retiro = '364ee186' AND id_cedula = '91468085';
-- retirado c84ddff0 | cedula 1100891232
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '01/03/2024' WHERE id_retiro = 'c84ddff0' AND id_cedula = '1100891232';
-- retirado 2675f7da | cedula 1098609372
UPDATE retirado SET fecha_ingreso = '26/02/2024', fecha_retiro = '02/03/2024' WHERE id_retiro = '2675f7da' AND id_cedula = '1098609372';
-- retirado 2f0fc72e | cedula 63526063
UPDATE retirado SET fecha_ingreso = '18/04/2022', fecha_retiro = '12/03/2024' WHERE id_retiro = '2f0fc72e' AND id_cedula = '63526063';
-- retirado 8cb492c4 | cedula 1095933752
UPDATE retirado SET fecha_ingreso = '11/01/2024', fecha_retiro = '11/03/2024' WHERE id_retiro = '8cb492c4' AND id_cedula = '1095933752';
-- retirado 71da4c29 | cedula 1098797421
UPDATE retirado SET fecha_ingreso = '07/02/2023', fecha_retiro = '12/03/2024' WHERE id_retiro = '71da4c29' AND id_cedula = '1098797421';
-- retirado 18810379 | cedula 1005539233
UPDATE retirado SET fecha_ingreso = '20/12/2018', fecha_retiro = '11/03/2024' WHERE id_retiro = '18810379' AND id_cedula = '1005539233';
-- retirado 6872c2e6 | cedula 1005328311
UPDATE retirado SET fecha_ingreso = '15/06/2022', fecha_retiro = '12/03/2024' WHERE id_retiro = '6872c2e6' AND id_cedula = '1005328311';
-- retirado 1d95b810 | cedula 1005162501
UPDATE retirado SET fecha_ingreso = '01/02/2024', fecha_retiro = '15/03/2024' WHERE id_retiro = '1d95b810' AND id_cedula = '1005162501';
-- retirado c411e416 | cedula 1098698779
UPDATE retirado SET fecha_ingreso = '14/03/2023', fecha_retiro = '21/03/2024' WHERE id_retiro = 'c411e416' AND id_cedula = '1098698779';
-- retirado 3b49d647 | cedula 1098698779
UPDATE retirado SET fecha_ingreso = '14/03/2023', fecha_retiro = '21/03/2024' WHERE id_retiro = '3b49d647' AND id_cedula = '1098698779';
-- retirado RT7186 | cedula 1005197258
UPDATE retirado SET fecha_ingreso = '19/09/2019', fecha_retiro = '28/01/2023' WHERE id_retiro = 'RT7186' AND id_cedula = '1005197258';
-- retirado RT5669 | cedula 1005411643
UPDATE retirado SET fecha_ingreso = '01/06/2015', fecha_retiro = '15/01/2016' WHERE id_retiro = 'RT5669' AND id_cedula = '1005411643';
-- retirado RT8393 | cedula 37760574
UPDATE retirado SET fecha_ingreso = '22/11/2014' WHERE id_retiro = 'RT8393' AND id_cedula = '37760574';
-- retirado RT7824 | cedula 28172589
UPDATE retirado SET fecha_ingreso = '26/07/2012' WHERE id_retiro = 'RT7824' AND id_cedula = '28172589';
-- retirado RT3296 | cedula 1095810568
UPDATE retirado SET fecha_ingreso = '01/08/2021', fecha_retiro = '03/02/2023' WHERE id_retiro = 'RT3296' AND id_cedula = '1095810568';
-- retirado RT6478 | cedula 1094045809
UPDATE retirado SET fecha_ingreso = '06/12/2022', fecha_retiro = '11/04/2023' WHERE id_retiro = 'RT6478' AND id_cedula = '1094045809';
-- retirado RT9304 | cedula 1100838556
UPDATE retirado SET fecha_ingreso = '10/01/2020', fecha_retiro = '03/08/2022' WHERE id_retiro = 'RT9304' AND id_cedula = '1100838556';
-- retirado RT5365 | cedula 1102367746
UPDATE retirado SET fecha_ingreso = '14/01/2019', fecha_retiro = '02/08/2019' WHERE id_retiro = 'RT5365' AND id_cedula = '1102367746';
-- retirado RT7174 | cedula 1102367746
UPDATE retirado SET fecha_ingreso = '06/05/2020', fecha_retiro = '30/04/2021' WHERE id_retiro = 'RT7174' AND id_cedula = '1102367746';
-- retirado RT5550 | cedula 1100893552
UPDATE retirado SET fecha_ingreso = '05/11/2015' WHERE id_retiro = 'RT5550' AND id_cedula = '1100893552';
-- retirado RT3126 | cedula 1096236575
UPDATE retirado SET fecha_retiro = '31/10/2021' WHERE id_retiro = 'RT3126' AND id_cedula = '1096236575';
-- retirado RT4556 | cedula 1098718120
UPDATE retirado SET fecha_ingreso = '01/02/2019', fecha_retiro = '30/07/2019' WHERE id_retiro = 'RT4556' AND id_cedula = '1098718120';
-- retirado RT7030 | cedula 1098718120
UPDATE retirado SET fecha_ingreso = '24/09/2019', fecha_retiro = '11/05/2021' WHERE id_retiro = 'RT7030' AND id_cedula = '1098718120';
-- retirado RT8604 | cedula 80153619
UPDATE retirado SET fecha_ingreso = '01/02/2019', fecha_retiro = '31/07/2019' WHERE id_retiro = 'RT8604' AND id_cedula = '80153619';
-- retirado RT2330 | cedula 91157440
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '06/05/2014' WHERE id_retiro = 'RT2330' AND id_cedula = '91157440';
-- retirado RT7258 | cedula 1005334741
UPDATE retirado SET fecha_ingreso = '11/01/2014', fecha_retiro = '16/04/2014' WHERE id_retiro = 'RT7258' AND id_cedula = '1005334741';
-- retirado RT8480 | cedula 1007536284
UPDATE retirado SET fecha_ingreso = '01/08/2018', fecha_retiro = '01/09/2020' WHERE id_retiro = 'RT8480' AND id_cedula = '1007536284';
-- retirado RT2529 | cedula 1100892188
UPDATE retirado SET fecha_ingreso = '13/07/2021', fecha_retiro = '25/11/2023' WHERE id_retiro = 'RT2529' AND id_cedula = '1100892188';
-- retirado RT2084 | cedula 91468085
UPDATE retirado SET fecha_ingreso = '25/10/2014' WHERE id_retiro = 'RT2084' AND id_cedula = '91468085';
-- retirado RT2276 | cedula 1098607389
UPDATE retirado SET fecha_ingreso = '18/05/2016', fecha_retiro = '07/12/2017' WHERE id_retiro = 'RT2276' AND id_cedula = '1098607389';
-- retirado RT6381 | cedula 91493875
UPDATE retirado SET fecha_ingreso = '16/08/2013', fecha_retiro = '11/11/2013' WHERE id_retiro = 'RT6381' AND id_cedula = '91493875';
-- retirado RT1782 | cedula 37862880
UPDATE retirado SET fecha_ingreso = '12/04/2013' WHERE id_retiro = 'RT1782' AND id_cedula = '37862880';
-- retirado RT9801 | cedula 1095919426
UPDATE retirado SET fecha_ingreso = '26/07/2017', fecha_retiro = '02/05/2021' WHERE id_retiro = 'RT9801' AND id_cedula = '1095919426';
-- retirado RT7115 | cedula 1098785398
UPDATE retirado SET fecha_ingreso = '21/01/2019', fecha_retiro = '06/12/2020' WHERE id_retiro = 'RT7115' AND id_cedula = '1098785398';
-- retirado RT3620 | cedula 91235461
UPDATE retirado SET fecha_ingreso = '27/10/2014' WHERE id_retiro = 'RT3620' AND id_cedula = '91235461';
-- retirado RT8033 | cedula 91297921
UPDATE retirado SET fecha_ingreso = '17/12/2012' WHERE id_retiro = 'RT8033' AND id_cedula = '91297921';
-- retirado RT8749 | cedula 91519270
UPDATE retirado SET fecha_ingreso = '15/11/2015', fecha_retiro = '15/05/2017' WHERE id_retiro = 'RT8749' AND id_cedula = '91519270';
-- retirado RT1906 | cedula 77180913
UPDATE retirado SET fecha_ingreso = '04/02/2014', fecha_retiro = '17/02/2022' WHERE id_retiro = 'RT1906' AND id_cedula = '77180913';
-- retirado RT9294 | cedula 91534887
UPDATE retirado SET fecha_ingreso = '05/01/2021', fecha_retiro = '15/11/2021' WHERE id_retiro = 'RT9294' AND id_cedula = '91534887';
-- retirado RT5070 | cedula 36456889
UPDATE retirado SET fecha_ingreso = '14/01/2015', fecha_retiro = '07/02/2020' WHERE id_retiro = 'RT5070' AND id_cedula = '36456889';
-- retirado RT6253 | cedula 13721873
UPDATE retirado SET fecha_ingreso = '17/10/2020', fecha_retiro = '06/09/2022' WHERE id_retiro = 'RT6253' AND id_cedula = '13721873';
-- retirado RT2971 | cedula 91531009
UPDATE retirado SET fecha_ingreso = '27/07/2013', fecha_retiro = '11/05/2014' WHERE id_retiro = 'RT2971' AND id_cedula = '91531009';
-- retirado RT8320 | cedula 1098707078
UPDATE retirado SET fecha_ingreso = '10/02/2016' WHERE id_retiro = 'RT8320' AND id_cedula = '1098707078';
-- retirado RT3467 | cedula 1098710815
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '10/04/2023' WHERE id_retiro = 'RT3467' AND id_cedula = '1098710815';
-- retirado RT7445 | cedula 1098706160
UPDATE retirado SET fecha_ingreso = '26/01/2021', fecha_retiro = '26/06/2021' WHERE id_retiro = 'RT7445' AND id_cedula = '1098706160';
-- retirado RT8026 | cedula 1102376979
UPDATE retirado SET fecha_ingreso = '01/02/2019', fecha_retiro = '01/08/2019' WHERE id_retiro = 'RT8026' AND id_cedula = '1102376979';
-- retirado RT8505 | cedula 63488143
UPDATE retirado SET fecha_ingreso = '07/04/2013', fecha_retiro = '06/03/2014' WHERE id_retiro = 'RT8505' AND id_cedula = '63488143';
-- retirado RT9015 | cedula 1098715411
UPDATE retirado SET fecha_ingreso = '01/12/2014' WHERE id_retiro = 'RT9015' AND id_cedula = '1098715411';
-- retirado RT5792 | cedula 63518308
UPDATE retirado SET fecha_ingreso = '25/04/2014' WHERE id_retiro = 'RT5792' AND id_cedula = '63518308';
-- retirado RT8934 | cedula 1005478935
UPDATE retirado SET fecha_ingreso = '27/06/2023', fecha_retiro = '27/06/2023' WHERE id_retiro = 'RT8934' AND id_cedula = '1005478935';
-- retirado RT9038 | cedula 1045743020
UPDATE retirado SET fecha_ingreso = '01/02/2019', fecha_retiro = '11/09/2019' WHERE id_retiro = 'RT9038' AND id_cedula = '1045743020';
-- retirado RT2380 | cedula 1095827638
UPDATE retirado SET fecha_ingreso = '04/09/2023', fecha_retiro = '04/11/2023' WHERE id_retiro = 'RT2380' AND id_cedula = '1095827638';
-- retirado RT3658 | cedula 1098830709
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '01/06/2022' WHERE id_retiro = 'RT3658' AND id_cedula = '1098830709';
-- retirado RT8821 | cedula 1100896569
UPDATE retirado SET fecha_ingreso = '09/02/2017', fecha_retiro = '28/11/2020' WHERE id_retiro = 'RT8821' AND id_cedula = '1100896569';
-- retirado RT7622 | cedula 1115740451
UPDATE retirado SET fecha_ingreso = '15/01/2019', fecha_retiro = '01/08/2019' WHERE id_retiro = 'RT7622' AND id_cedula = '1115740451';
-- retirado RT4114 | cedula 1115740451
UPDATE retirado SET fecha_ingreso = '06/10/2020', fecha_retiro = '27/11/2020' WHERE id_retiro = 'RT4114' AND id_cedula = '1115740451';
-- retirado RT8107 | cedula 1193567011
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '23/12/2023' WHERE id_retiro = 'RT8107' AND id_cedula = '1193567011';
-- retirado RT4251 | cedula 1098639230
UPDATE retirado SET fecha_retiro = '29/05/2021' WHERE id_retiro = 'RT4251' AND id_cedula = '1098639230';
-- retirado RT5799 | cedula 1098811433
UPDATE retirado SET fecha_ingreso = '17/01/2020', fecha_retiro = '02/03/2020' WHERE id_retiro = 'RT5799' AND id_cedula = '1098811433';
-- retirado RT2592 | cedula 1232888572
UPDATE retirado SET fecha_ingreso = '12/09/2023', fecha_retiro = '17/11/2023' WHERE id_retiro = 'RT2592' AND id_cedula = '1232888572';
-- retirado RT9847 | cedula 1091683312
UPDATE retirado SET fecha_ingreso = '26/08/2020', fecha_retiro = '09/10/2021' WHERE id_retiro = 'RT9847' AND id_cedula = '1091683312';
-- retirado RT7958 | cedula 1098759821
UPDATE retirado SET fecha_ingreso = '01/06/2020', fecha_retiro = '03/11/2023' WHERE id_retiro = 'RT7958' AND id_cedula = '1098759821';
-- retirado RT5487 | cedula 1098606323
UPDATE retirado SET fecha_ingreso = '04/12/2013' WHERE id_retiro = 'RT5487' AND id_cedula = '1098606323';
-- retirado RT8112 | cedula 1095923919
UPDATE retirado SET fecha_ingreso = '05/10/2015', fecha_retiro = '17/02/2017' WHERE id_retiro = 'RT8112' AND id_cedula = '1095923919';
-- retirado RT2170 | cedula 1007667600
UPDATE retirado SET fecha_ingreso = '01/12/2022', fecha_retiro = '12/09/2023' WHERE id_retiro = 'RT2170' AND id_cedula = '1007667600';
-- retirado RT3536 | cedula 1005373428
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '21/02/2022' WHERE id_retiro = 'RT3536' AND id_cedula = '1005373428';
-- retirado RT7083 | cedula 1005373428
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '02/01/2023' WHERE id_retiro = 'RT7083' AND id_cedula = '1005373428';
-- retirado RT4914 | cedula 1020781611
UPDATE retirado SET fecha_ingreso = '24/03/2020', fecha_retiro = '23/03/2021' WHERE id_retiro = 'RT4914' AND id_cedula = '1020781611';
-- retirado RT5160 | cedula 1098760336
UPDATE retirado SET fecha_ingreso = '03/02/2022', fecha_retiro = '04/08/2022' WHERE id_retiro = 'RT5160' AND id_cedula = '1098760336';
-- retirado RT6778 | cedula 1095948583
UPDATE retirado SET fecha_ingreso = '22/05/2018', fecha_retiro = '22/01/2019' WHERE id_retiro = 'RT6778' AND id_cedula = '1095948583';
-- retirado RT7683 | cedula 1098711993
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '08/09/2018' WHERE id_retiro = 'RT7683' AND id_cedula = '1098711993';
-- retirado RT5658 | cedula 1066083139
UPDATE retirado SET fecha_ingreso = '13/12/2022', fecha_retiro = '13/06/2023' WHERE id_retiro = 'RT5658' AND id_cedula = '1066083139';
-- retirado RT9687 | cedula 1098748955
UPDATE retirado SET fecha_ingreso = '23/04/2018', fecha_retiro = '23/03/2020' WHERE id_retiro = 'RT9687' AND id_cedula = '1098748955';
-- retirado RT5733 | cedula 1098796333
UPDATE retirado SET fecha_ingreso = '04/09/2017', fecha_retiro = '01/12/2018' WHERE id_retiro = 'RT5733' AND id_cedula = '1098796333';
-- retirado RT3043 | cedula 1050920056
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '09/12/2023' WHERE id_retiro = 'RT3043' AND id_cedula = '1050920056';
-- retirado RT4331 | cedula 1007412982
UPDATE retirado SET fecha_ingreso = '04/04/2022', fecha_retiro = '07/09/2023' WHERE id_retiro = 'RT4331' AND id_cedula = '1007412982';
-- retirado RT2551 | cedula 1098743800
UPDATE retirado SET fecha_ingreso = '10/09/2020', fecha_retiro = '28/04/2021' WHERE id_retiro = 'RT2551' AND id_cedula = '1098743800';
-- retirado RT7499 | cedula 1098659117
UPDATE retirado SET fecha_ingreso = '22/03/2016', fecha_retiro = '22/02/2018' WHERE id_retiro = 'RT7499' AND id_cedula = '1098659117';
-- retirado RT9392 | cedula 1005462550
UPDATE retirado SET fecha_ingreso = '12/05/2022', fecha_retiro = '04/07/2022' WHERE id_retiro = 'RT9392' AND id_cedula = '1005462550';
-- retirado RT6366 | cedula 1007408709
UPDATE retirado SET fecha_ingreso = '09/02/2022', fecha_retiro = '06/04/2022' WHERE id_retiro = 'RT6366' AND id_cedula = '1007408709';
-- retirado RT6182 | cedula 1050543959
UPDATE retirado SET fecha_ingreso = '08/09/2020', fecha_retiro = '08/06/2021' WHERE id_retiro = 'RT6182' AND id_cedula = '1050543959';
-- retirado RT3011 | cedula 1095952057
UPDATE retirado SET fecha_ingreso = '10/11/2020', fecha_retiro = '17/11/2020' WHERE id_retiro = 'RT3011' AND id_cedula = '1095952057';
-- retirado RT7245 | cedula 1005151938
UPDATE retirado SET fecha_ingreso = '02/11/2023', fecha_retiro = '15/11/2023' WHERE id_retiro = 'RT7245' AND id_cedula = '1005151938';
-- retirado RT5686 | cedula 1232892050
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '02/01/2021' WHERE id_retiro = 'RT5686' AND id_cedula = '1232892050';
-- retirado RT8492 | cedula 1005259277
UPDATE retirado SET fecha_ingreso = '12/10/2023', fecha_retiro = '15/11/2023' WHERE id_retiro = 'RT8492' AND id_cedula = '1005259277';
-- retirado RT4833 | cedula 1098783031
UPDATE retirado SET fecha_ingreso = '07/10/2019', fecha_retiro = '03/07/2020' WHERE id_retiro = 'RT4833' AND id_cedula = '1098783031';
-- retirado RT4171 | cedula 1052218087
UPDATE retirado SET fecha_ingreso = '08/07/2021', fecha_retiro = '10/10/2022' WHERE id_retiro = 'RT4171' AND id_cedula = '1052218087';
-- retirado RT7415 | cedula 1052218087
UPDATE retirado SET fecha_ingreso = '25/11/2022', fecha_retiro = '01/08/2023' WHERE id_retiro = 'RT7415' AND id_cedula = '1052218087';
-- retirado RT3917 | cedula 1102376123
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '21/01/2019' WHERE id_retiro = 'RT3917' AND id_cedula = '1102376123';
-- retirado RT6111 | cedula 1102376123
UPDATE retirado SET fecha_ingreso = '07/10/2019', fecha_retiro = '26/08/2021' WHERE id_retiro = 'RT6111' AND id_cedula = '1102376123';
-- retirado RT6431 | cedula 1095936284
UPDATE retirado SET fecha_ingreso = '15/10/2020', fecha_retiro = '01/10/2021' WHERE id_retiro = 'RT6431' AND id_cedula = '1095936284';
-- retirado RT6246 | cedula 1095936284
UPDATE retirado SET fecha_ingreso = '09/02/2022', fecha_retiro = '20/11/2023' WHERE id_retiro = 'RT6246' AND id_cedula = '1095936284';
-- retirado RT7837 | cedula 1095798066
UPDATE retirado SET fecha_ingreso = '27/08/2013' WHERE id_retiro = 'RT7837' AND id_cedula = '1095798066';
-- retirado RT3553 | cedula 1004878369
UPDATE retirado SET fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT3553' AND id_cedula = '1004878369';
-- retirado RT3866 | cedula 1095807767
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '13/04/2023' WHERE id_retiro = 'RT3866' AND id_cedula = '1095807767';
-- retirado RT4792 | cedula 1099373643
UPDATE retirado SET fecha_ingreso = '05/08/2020', fecha_retiro = '30/08/2020' WHERE id_retiro = 'RT4792' AND id_cedula = '1099373643';
-- retirado RT4128 | cedula 1005339974
UPDATE retirado SET fecha_ingreso = '26/09/2022', fecha_retiro = '11/10/2022' WHERE id_retiro = 'RT4128' AND id_cedula = '1005339974';
-- retirado RT7234 | cedula 1098619450
UPDATE retirado SET fecha_ingreso = '04/09/2015' WHERE id_retiro = 'RT7234' AND id_cedula = '1098619450';
-- retirado RT8720 | cedula 1098619450
UPDATE retirado SET fecha_ingreso = '18/03/2021', fecha_retiro = '22/08/2021' WHERE id_retiro = 'RT8720' AND id_cedula = '1098619450';
-- retirado RT2757 | cedula 1098821717
UPDATE retirado SET fecha_ingreso = '14/05/2019', fecha_retiro = '24/05/2019' WHERE id_retiro = 'RT2757' AND id_cedula = '1098821717';
-- retirado RT2112 | cedula 1098806105
UPDATE retirado SET fecha_ingreso = '20/10/2016', fecha_retiro = '23/04/2017' WHERE id_retiro = 'RT2112' AND id_cedula = '1098806105';
-- retirado RT2751 | cedula 1005272415
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '04/09/2023' WHERE id_retiro = 'RT2751' AND id_cedula = '1005272415';
-- retirado RT9239 | cedula 1005136554
UPDATE retirado SET fecha_ingreso = '20/01/2023', fecha_retiro = '25/01/2023' WHERE id_retiro = 'RT9239' AND id_cedula = '1005136554';
-- retirado RT5720 | cedula 1098693778
UPDATE retirado SET fecha_ingreso = '24/01/2014' WHERE id_retiro = 'RT5720' AND id_cedula = '1098693778';
-- retirado RT4303 | cedula 1013620318
UPDATE retirado SET fecha_ingreso = '22/02/2017', fecha_retiro = '22/07/2017' WHERE id_retiro = 'RT4303' AND id_cedula = '1013620318';
-- retirado RT6509 | cedula 1005303847
UPDATE retirado SET fecha_ingreso = '09/08/2018', fecha_retiro = '28/02/2019' WHERE id_retiro = 'RT6509' AND id_cedula = '1005303847';
-- retirado RT5728 | cedula 1099364568
UPDATE retirado SET fecha_ingreso = '27/11/2017', fecha_retiro = '15/12/2018' WHERE id_retiro = 'RT5728' AND id_cedula = '1099364568';
-- retirado RT3275 | cedula 37861975
UPDATE retirado SET fecha_ingreso = '01/09/2013' WHERE id_retiro = 'RT3275' AND id_cedula = '37861975';
-- retirado RT6625 | cedula 1097302696
UPDATE retirado SET fecha_ingreso = '11/10/2022', fecha_retiro = '13/02/2023' WHERE id_retiro = 'RT6625' AND id_cedula = '1097302696';
-- retirado RT5427 | cedula 1090374251
UPDATE retirado SET fecha_ingreso = '24/11/2014' WHERE id_retiro = 'RT5427' AND id_cedula = '1090374251';
-- retirado RT8110 | cedula 1102389761
UPDATE retirado SET fecha_ingreso = '19/02/2019', fecha_retiro = '24/08/2019' WHERE id_retiro = 'RT8110' AND id_cedula = '1102389761';
-- retirado RT5905 | cedula 1095942284
UPDATE retirado SET fecha_ingreso = '21/12/2020', fecha_retiro = '19/06/2022' WHERE id_retiro = 'RT5905' AND id_cedula = '1095942284';
-- retirado RT8495 | cedula 18967984
UPDATE retirado SET fecha_ingreso = '17/06/2014' WHERE id_retiro = 'RT8495' AND id_cedula = '18967984';
-- retirado RT7782 | cedula 3983688
UPDATE retirado SET fecha_ingreso = '12/07/2014', fecha_retiro = '12/06/2019' WHERE id_retiro = 'RT7782' AND id_cedula = '3983688';
-- retirado RT5675 | cedula 1098784096
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '01/02/2023' WHERE id_retiro = 'RT5675' AND id_cedula = '1098784096';
-- retirado RT4457 | cedula 63534894
UPDATE retirado SET fecha_ingreso = '24/10/2022', fecha_retiro = '18/01/2023' WHERE id_retiro = 'RT4457' AND id_cedula = '63534894';
-- retirado RT2260 | cedula 1098670846
UPDATE retirado SET fecha_ingreso = '19/01/2014', fecha_retiro = '07/07/2014' WHERE id_retiro = 'RT2260' AND id_cedula = '1098670846';
-- retirado RT9729 | cedula 1095802025
UPDATE retirado SET fecha_ingreso = '24/01/2014' WHERE id_retiro = 'RT9729' AND id_cedula = '1095802025';
-- retirado RT3920 | cedula 1100896253
UPDATE retirado SET fecha_ingreso = '22/07/2020', fecha_retiro = '20/11/2020' WHERE id_retiro = 'RT3920' AND id_cedula = '1100896253';
-- retirado RT2910 | cedula 91161220
UPDATE retirado SET fecha_ingreso = '18/10/2016' WHERE id_retiro = 'RT2910' AND id_cedula = '91161220';
-- retirado RT9179 | cedula 52156325
UPDATE retirado SET fecha_retiro = '12/05/2022' WHERE id_retiro = 'RT9179' AND id_cedula = '52156325';
-- retirado RT8244 | cedula 63391087
UPDATE retirado SET fecha_ingreso = '26/07/2012' WHERE id_retiro = 'RT8244' AND id_cedula = '63391087';
-- retirado RT3043 | cedula 1081787784
UPDATE retirado SET fecha_ingreso = '18/07/2023', fecha_retiro = '02/01/2024' WHERE id_retiro = 'RT3043' AND id_cedula = '1081787784';
-- retirado RT7340 | cedula 1007917956
UPDATE retirado SET fecha_ingreso = '22/11/2022', fecha_retiro = '03/04/2023' WHERE id_retiro = 'RT7340' AND id_cedula = '1007917956';
-- retirado RT7689 | cedula 1095918012
UPDATE retirado SET fecha_ingreso = '24/07/2014' WHERE id_retiro = 'RT7689' AND id_cedula = '1095918012';
-- retirado RT5388 | cedula 7249663
UPDATE retirado SET fecha_ingreso = '01/02/2013' WHERE id_retiro = 'RT5388' AND id_cedula = '7249663';
-- retirado RT2530 | cedula 1005157005
UPDATE retirado SET fecha_retiro = '12/10/2022' WHERE id_retiro = 'RT2530' AND id_cedula = '1005157005';
-- retirado RT7194 | cedula 1005371173
UPDATE retirado SET fecha_ingreso = '11/03/2021', fecha_retiro = '16/04/2022' WHERE id_retiro = 'RT7194' AND id_cedula = '1005371173';
-- retirado RT8474 | cedula 1098666493
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '15/08/2013' WHERE id_retiro = 'RT8474' AND id_cedula = '1098666493';
-- retirado RT9322 | cedula 1007439705
UPDATE retirado SET fecha_ingreso = '19/12/2022', fecha_retiro = '26/06/2023' WHERE id_retiro = 'RT9322' AND id_cedula = '1007439705';
-- retirado RT2385 | cedula 1098631100
UPDATE retirado SET fecha_ingreso = '14/03/2016', fecha_retiro = '10/05/2017' WHERE id_retiro = 'RT2385' AND id_cedula = '1098631100';
-- retirado RT4410 | cedula 1098631100
UPDATE retirado SET fecha_ingreso = '15/04/2021', fecha_retiro = '16/12/2022' WHERE id_retiro = 'RT4410' AND id_cedula = '1098631100';
-- retirado RT6876 | cedula 1102379575
UPDATE retirado SET fecha_ingreso = '16/10/2020', fecha_retiro = '26/10/2021' WHERE id_retiro = 'RT6876' AND id_cedula = '1102379575';
-- retirado RT7060 | cedula 1005136829
UPDATE retirado SET fecha_ingreso = '02/03/2023', fecha_retiro = '09/06/2023' WHERE id_retiro = 'RT7060' AND id_cedula = '1005136829';
-- retirado RT2334 | cedula 1095839027
UPDATE retirado SET fecha_retiro = '18/08/2022' WHERE id_retiro = 'RT2334' AND id_cedula = '1095839027';
-- retirado RT9463 | cedula 1091132102
UPDATE retirado SET fecha_ingreso = '16/11/2023', fecha_retiro = '20/11/2023' WHERE id_retiro = 'RT9463' AND id_cedula = '1091132102';
-- retirado RT9787 | cedula 1065915353
UPDATE retirado SET fecha_ingreso = '12/08/2020', fecha_retiro = '18/08/2020' WHERE id_retiro = 'RT9787' AND id_cedula = '1065915353';
-- retirado RT2081 | cedula 1098773168
UPDATE retirado SET fecha_ingreso = '23/08/2021', fecha_retiro = '17/11/2023' WHERE id_retiro = 'RT2081' AND id_cedula = '1098773168';
-- retirado RT8444 | cedula 1095948341
UPDATE retirado SET fecha_ingreso = '14/09/2020', fecha_retiro = '16/09/2020' WHERE id_retiro = 'RT8444' AND id_cedula = '1095948341';
-- retirado RT1893 | cedula 1193051119
UPDATE retirado SET fecha_ingreso = '16/03/2018', fecha_retiro = '16/06/2018' WHERE id_retiro = 'RT1893' AND id_cedula = '1193051119';
-- retirado RT8989 | cedula 1098824394
UPDATE retirado SET fecha_ingreso = '11/07/2019', fecha_retiro = '23/05/2022' WHERE id_retiro = 'RT8989' AND id_cedula = '1098824394';
-- retirado RT9748 | cedula 1099368587
UPDATE retirado SET fecha_ingreso = '24/04/2015', fecha_retiro = '10/09/2015' WHERE id_retiro = 'RT9748' AND id_cedula = '1099368587';
-- retirado RT3325 | cedula 1102377442
UPDATE retirado SET fecha_ingreso = '24/01/2018', fecha_retiro = '01/09/2020' WHERE id_retiro = 'RT3325' AND id_cedula = '1102377442';
-- retirado RT3307 | cedula 1005152358
UPDATE retirado SET fecha_ingreso = '19/10/2022', fecha_retiro = '05/11/2022' WHERE id_retiro = 'RT3307' AND id_cedula = '1005152358';
-- retirado RT5579 | cedula 1232890895
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '16/01/2021' WHERE id_retiro = 'RT5579' AND id_cedula = '1232890895';
-- retirado RT6716 | cedula 1095817542
UPDATE retirado SET fecha_ingreso = '16/03/2018', fecha_retiro = '05/07/2019' WHERE id_retiro = 'RT6716' AND id_cedula = '1095817542';
-- retirado RT3746 | cedula 1095817542
UPDATE retirado SET fecha_ingreso = '04/12/2019', fecha_retiro = '08/04/2021' WHERE id_retiro = 'RT3746' AND id_cedula = '1095817542';
-- retirado RT2344 | cedula 1095817542
UPDATE retirado SET fecha_ingreso = '07/01/2023', fecha_retiro = '11/12/2023' WHERE id_retiro = 'RT2344' AND id_cedula = '1095817542';
-- retirado RT2940 | cedula 1007189787
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '17/05/2021' WHERE id_retiro = 'RT2940' AND id_cedula = '1007189787';
-- retirado RT7497 | cedula 1095951139
UPDATE retirado SET fecha_ingreso = '11/03/2021', fecha_retiro = '13/09/2021' WHERE id_retiro = 'RT7497' AND id_cedula = '1095951139';
-- retirado RT4142 | cedula 1095923896
UPDATE retirado SET fecha_ingreso = '14/09/2020', fecha_retiro = '14/03/2021' WHERE id_retiro = 'RT4142' AND id_cedula = '1095923896';
-- retirado RT7019 | cedula 1232892334
UPDATE retirado SET fecha_ingreso = '03/08/2022', fecha_retiro = '01/07/2023' WHERE id_retiro = 'RT7019' AND id_cedula = '1232892334';
-- retirado RT7105 | cedula 1005280634
UPDATE retirado SET fecha_ingreso = '24/10/2023', fecha_retiro = '01/11/2023' WHERE id_retiro = 'RT7105' AND id_cedula = '1005280634';
-- retirado RT7114 | cedula 1005372215
UPDATE retirado SET fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT7114' AND id_cedula = '1005372215';
-- retirado RT8065 | cedula 1098681158
UPDATE retirado SET fecha_ingreso = '22/01/2014', fecha_retiro = '22/01/2014' WHERE id_retiro = 'RT8065' AND id_cedula = '1098681158';
-- retirado RT4211 | cedula 1232889782
UPDATE retirado SET fecha_ingreso = '01/02/2019', fecha_retiro = '31/07/2019' WHERE id_retiro = 'RT4211' AND id_cedula = '1232889782';
-- retirado RT7994 | cedula 1002276876
UPDATE retirado SET fecha_ingreso = '07/10/2022', fecha_retiro = '02/06/2023' WHERE id_retiro = 'RT7994' AND id_cedula = '1002276876';
-- retirado RT1862 | cedula 1095828009
UPDATE retirado SET fecha_ingreso = '23/08/2021', fecha_retiro = '01/09/2021' WHERE id_retiro = 'RT1862' AND id_cedula = '1095828009';
-- retirado RT8090 | cedula 1102384251
UPDATE retirado SET fecha_ingreso = '29/10/2020', fecha_retiro = '19/12/2020' WHERE id_retiro = 'RT8090' AND id_cedula = '1102384251';
-- retirado RT7676 | cedula 1102387420
UPDATE retirado SET fecha_ingreso = '19/10/2016', fecha_retiro = '30/04/2017' WHERE id_retiro = 'RT7676' AND id_cedula = '1102387420';
-- retirado RT9594 | cedula 1101697523
UPDATE retirado SET fecha_retiro = '13/02/2021' WHERE id_retiro = 'RT9594' AND id_cedula = '1101697523';
-- retirado RT1758 | cedula 1095842228
UPDATE retirado SET fecha_ingreso = '04/05/2021', fecha_retiro = '01/06/2021' WHERE id_retiro = 'RT1758' AND id_cedula = '1095842228';
-- retirado RT5444 | cedula 1101211304
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT5444' AND id_cedula = '1101211304';
-- retirado RT4860 | cedula 1001047504
UPDATE retirado SET fecha_ingreso = '15/06/2022', fecha_retiro = '03/10/2022' WHERE id_retiro = 'RT4860' AND id_cedula = '1001047504';
-- retirado RT5995 | cedula 1007439697
UPDATE retirado SET fecha_ingreso = '15/06/2022', fecha_retiro = '21/06/2022' WHERE id_retiro = 'RT5995' AND id_cedula = '1007439697';
-- retirado RT4078 | cedula 1007439697
UPDATE retirado SET fecha_ingreso = '18/08/2023', fecha_retiro = '04/09/2023' WHERE id_retiro = 'RT4078' AND id_cedula = '1007439697';
-- retirado RT8270 | cedula 1063482428
UPDATE retirado SET fecha_ingreso = '12/10/2023', fecha_retiro = '11/12/2023' WHERE id_retiro = 'RT8270' AND id_cedula = '1063482428';
-- retirado RT1771 | cedula 1098779701
UPDATE retirado SET fecha_ingreso = '22/07/2021', fecha_retiro = '22/01/2022' WHERE id_retiro = 'RT1771' AND id_cedula = '1098779701';
-- retirado RT3065 | cedula 1098784475
UPDATE retirado SET fecha_ingreso = '03/02/2020', fecha_retiro = '30/05/2020' WHERE id_retiro = 'RT3065' AND id_cedula = '1098784475';
-- retirado RT7777 | cedula 1095826663
UPDATE retirado SET fecha_ingreso = '27/11/2023', fecha_retiro = '23/12/2023' WHERE id_retiro = 'RT7777' AND id_cedula = '1095826663';
-- retirado RT3452 | cedula 1234338031
UPDATE retirado SET fecha_ingreso = '04/09/2015' WHERE id_retiro = 'RT3452' AND id_cedula = '1234338031';
-- retirado RT4418 | cedula 1098765043
UPDATE retirado SET fecha_ingreso = '19/09/2023', fecha_retiro = '03/11/2023' WHERE id_retiro = 'RT4418' AND id_cedula = '1098765043';
-- retirado RT3360 | cedula 1101689968
UPDATE retirado SET fecha_ingreso = '17/04/2015', fecha_retiro = '01/09/2020' WHERE id_retiro = 'RT3360' AND id_cedula = '1101689968';
-- retirado RT1854 | cedula 1004364659
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '01/12/2023' WHERE id_retiro = 'RT1854' AND id_cedula = '1004364659';
-- retirado RT5894 | cedula 1007673697
UPDATE retirado SET fecha_ingreso = '17/01/2020', fecha_retiro = '11/03/2021' WHERE id_retiro = 'RT5894' AND id_cedula = '1007673697';
-- retirado RT4980 | cedula 1097306543
UPDATE retirado SET fecha_ingreso = '04/12/2019', fecha_retiro = '04/02/2020' WHERE id_retiro = 'RT4980' AND id_cedula = '1097306543';
-- retirado RT7090 | cedula 1095816958
UPDATE retirado SET fecha_ingreso = '03/05/2014', fecha_retiro = '30/08/2014' WHERE id_retiro = 'RT7090' AND id_cedula = '1095816958';
-- retirado RT5203 | cedula 1098707370
UPDATE retirado SET fecha_ingreso = '19/09/2019', fecha_retiro = '01/07/2022' WHERE id_retiro = 'RT5203' AND id_cedula = '1098707370';
-- retirado RT6800 | cedula 1063295118
UPDATE retirado SET fecha_ingreso = '18/08/2020', fecha_retiro = '31/08/2021' WHERE id_retiro = 'RT6800' AND id_cedula = '1063295118';
-- retirado RT8398 | cedula 1098673238
UPDATE retirado SET fecha_ingreso = '04/06/2014' WHERE id_retiro = 'RT8398' AND id_cedula = '1098673238';
-- retirado RT5722 | cedula 91539369
UPDATE retirado SET fecha_ingreso = '15/01/2019', fecha_retiro = '17/01/2019' WHERE id_retiro = 'RT5722' AND id_cedula = '91539369';
-- retirado RT6779 | cedula 1098738782
UPDATE retirado SET fecha_ingreso = '08/02/2014', fecha_retiro = '15/02/2014' WHERE id_retiro = 'RT6779' AND id_cedula = '1098738782';
-- retirado RT2174 | cedula 5255447
UPDATE retirado SET fecha_ingreso = '02/05/2022', fecha_retiro = '13/05/2022' WHERE id_retiro = 'RT2174' AND id_cedula = '5255447';
-- retirado RT8279 | cedula 1100891481
UPDATE retirado SET fecha_ingreso = '20/04/2015', fecha_retiro = '09/09/2015' WHERE id_retiro = 'RT8279' AND id_cedula = '1100891481';
-- retirado RT4149 | cedula 1095962531
UPDATE retirado SET fecha_ingreso = '10/02/2021', fecha_retiro = '01/03/2021' WHERE id_retiro = 'RT4149' AND id_cedula = '1095962531';
-- retirado RT8019 | cedula 91185608
UPDATE retirado SET fecha_ingreso = '19/09/2013', fecha_retiro = '07/10/2015' WHERE id_retiro = 'RT8019' AND id_cedula = '91185608';
-- retirado RT5901 | cedula 91249032
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '26/12/2019' WHERE id_retiro = 'RT5901' AND id_cedula = '91249032';
-- retirado RT6185 | cedula 1065583815
UPDATE retirado SET fecha_ingreso = '11/02/2019', fecha_retiro = '27/01/2021' WHERE id_retiro = 'RT6185' AND id_cedula = '1065583815';
-- retirado RT5544 | cedula 1065583815
UPDATE retirado SET fecha_ingreso = '18/08/2021', fecha_retiro = '09/10/2021' WHERE id_retiro = 'RT5544' AND id_cedula = '1065583815';
-- retirado RT2778 | cedula 1102723821
UPDATE retirado SET fecha_ingreso = '21/08/2020', fecha_retiro = '19/11/2023' WHERE id_retiro = 'RT2778' AND id_cedula = '1102723821';
-- retirado RT4711 | cedula 91275550
UPDATE retirado SET fecha_ingreso = '29/01/2014', fecha_retiro = '16/07/2014' WHERE id_retiro = 'RT4711' AND id_cedula = '91275550';
-- retirado RT4731 | cedula 1007953592
UPDATE retirado SET fecha_ingreso = '18/02/2021', fecha_retiro = '15/09/2021' WHERE id_retiro = 'RT4731' AND id_cedula = '1007953592';
-- retirado RT3946 | cedula 1098809485
UPDATE retirado SET fecha_retiro = '04/07/2021' WHERE id_retiro = 'RT3946' AND id_cedula = '1098809485';
-- retirado RT8007 | cedula 1007193872
UPDATE retirado SET fecha_retiro = '28/02/2021' WHERE id_retiro = 'RT8007' AND id_cedula = '1007193872';
-- retirado RT6741 | cedula 1007193872
UPDATE retirado SET fecha_ingreso = '10/03/2021', fecha_retiro = '16/11/2022' WHERE id_retiro = 'RT6741' AND id_cedula = '1007193872';
-- retirado RT8130 | cedula 91042486
UPDATE retirado SET fecha_ingreso = '26/07/2012' WHERE id_retiro = 'RT8130' AND id_cedula = '91042486';
-- retirado RT6699 | cedula 1098799195
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '25/07/2022' WHERE id_retiro = 'RT6699' AND id_cedula = '1098799195';
-- retirado RT7164 | cedula 1095920402
UPDATE retirado SET fecha_ingreso = '16/03/2017', fecha_retiro = '14/05/2017' WHERE id_retiro = 'RT7164' AND id_cedula = '1095920402';
-- retirado RT5893 | cedula 1232888854
UPDATE retirado SET fecha_ingreso = '26/01/2019', fecha_retiro = '27/01/2019' WHERE id_retiro = 'RT5893' AND id_cedula = '1232888854';
-- retirado RT8860 | cedula 1234338072
UPDATE retirado SET fecha_ingreso = '27/08/2022', fecha_retiro = '04/03/2023' WHERE id_retiro = 'RT8860' AND id_cedula = '1234338072';
-- retirado RT5265 | cedula 91515815
UPDATE retirado SET fecha_ingreso = '19/03/2014' WHERE id_retiro = 'RT5265' AND id_cedula = '91515815';
-- retirado RT7054 | cedula 91348399
UPDATE retirado SET fecha_ingreso = '18/04/2013', fecha_retiro = '15/11/2013' WHERE id_retiro = 'RT7054' AND id_cedula = '91348399';
-- retirado RT3982 | cedula 1102805921
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '17/04/2023' WHERE id_retiro = 'RT3982' AND id_cedula = '1102805921';
-- retirado RT2900 | cedula 1005449159
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '26/10/2020' WHERE id_retiro = 'RT2900' AND id_cedula = '1005449159';
-- retirado RT8175 | cedula 1020760654
UPDATE retirado SET fecha_ingreso = '06/08/2014' WHERE id_retiro = 'RT8175' AND id_cedula = '1020760654';
-- retirado RT7848 | cedula 1095821426
UPDATE retirado SET fecha_ingreso = '28/04/2014', fecha_retiro = '11/05/2014' WHERE id_retiro = 'RT7848' AND id_cedula = '1095821426';
-- retirado RT5045 | cedula 7360723
UPDATE retirado SET fecha_ingreso = '27/07/2023', fecha_retiro = '25/09/2023' WHERE id_retiro = 'RT5045' AND id_cedula = '7360723';
-- retirado RT8595 | cedula 13861733
UPDATE retirado SET fecha_ingreso = '26/09/2013' WHERE id_retiro = 'RT8595' AND id_cedula = '13861733';
-- retirado RT7374 | cedula 91467171
UPDATE retirado SET fecha_ingreso = '15/11/2015', fecha_retiro = '01/04/2022' WHERE id_retiro = 'RT7374' AND id_cedula = '91467171';
-- retirado RT5129 | cedula 1098797778
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '07/12/2020' WHERE id_retiro = 'RT5129' AND id_cedula = '1098797778';
-- retirado RT4644 | cedula 1098763741
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT4644' AND id_cedula = '1098763741';
-- retirado RT1658 | cedula 1000729124
UPDATE retirado SET fecha_ingreso = '16/10/2020', fecha_retiro = '08/03/2021' WHERE id_retiro = 'RT1658' AND id_cedula = '1000729124';
-- retirado RT9245 | cedula 91523575
UPDATE retirado SET fecha_ingreso = '26/08/2015' WHERE id_retiro = 'RT9245' AND id_cedula = '91523575';
-- retirado RT2371 | cedula 1543684
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '10/05/2023' WHERE id_retiro = 'RT2371' AND id_cedula = '1543684';
-- retirado RT3159 | cedula 1096780348
UPDATE retirado SET fecha_ingreso = '22/12/2014', fecha_retiro = '07/06/2015' WHERE id_retiro = 'RT3159' AND id_cedula = '1096780348';
-- retirado RT9717 | cedula 1095927567
UPDATE retirado SET fecha_ingreso = '03/10/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT9717' AND id_cedula = '1095927567';
-- retirado RT7581 | cedula 1098667169
UPDATE retirado SET fecha_ingreso = '16/04/2012' WHERE id_retiro = 'RT7581' AND id_cedula = '1098667169';
-- retirado RT5522 | cedula 13722617
UPDATE retirado SET fecha_ingreso = '22/12/2014' WHERE id_retiro = 'RT5522' AND id_cedula = '13722617';
-- retirado RT4766 | cedula 1100896907
UPDATE retirado SET fecha_ingreso = '18/10/2018', fecha_retiro = '09/11/2020' WHERE id_retiro = 'RT4766' AND id_cedula = '1100896907';
-- retirado RT6916 | cedula 1100896907
UPDATE retirado SET fecha_ingreso = '15/05/2021', fecha_retiro = '15/01/2023' WHERE id_retiro = 'RT6916' AND id_cedula = '1100896907';
-- retirado RT6089 | cedula 1095814893
UPDATE retirado SET fecha_ingreso = '26/07/2012' WHERE id_retiro = 'RT6089' AND id_cedula = '1095814893';
-- retirado RT1584 | cedula 63306751
UPDATE retirado SET fecha_ingreso = '16/05/2016', fecha_retiro = '24/07/2016' WHERE id_retiro = 'RT1584' AND id_cedula = '63306751';
-- retirado RT1639 | cedula 1102364240
UPDATE retirado SET fecha_ingreso = '28/01/2014', fecha_retiro = '14/10/2017' WHERE id_retiro = 'RT1639' AND id_cedula = '1102364240';
-- retirado RT5711 | cedula 63528745
UPDATE retirado SET fecha_ingreso = '12/02/2013', fecha_retiro = '30/04/2013' WHERE id_retiro = 'RT5711' AND id_cedula = '63528745';
-- retirado RT2301 | cedula 1102370399
UPDATE retirado SET fecha_ingreso = '13/02/2017', fecha_retiro = '28/01/2018' WHERE id_retiro = 'RT2301' AND id_cedula = '1102370399';
-- retirado RT6628 | cedula 1102389735
UPDATE retirado SET fecha_ingreso = '10/11/2020', fecha_retiro = '11/10/2022' WHERE id_retiro = 'RT6628' AND id_cedula = '1102389735';
-- retirado RT7421 | cedula 1092389738
UPDATE retirado SET fecha_ingreso = '03/11/2022', fecha_retiro = '12/04/2023' WHERE id_retiro = 'RT7421' AND id_cedula = '1092389738';
-- retirado RT4165 | cedula 91186450
UPDATE retirado SET fecha_ingreso = '04/09/2015' WHERE id_retiro = 'RT4165' AND id_cedula = '91186450';
-- retirado RT3266 | cedula 1095931392
UPDATE retirado SET fecha_ingreso = '22/01/2016', fecha_retiro = '11/11/2021' WHERE id_retiro = 'RT3266' AND id_cedula = '1095931392';
-- retirado RT3106 | cedula 1098805752
UPDATE retirado SET fecha_ingreso = '18/03/2021', fecha_retiro = '05/08/2023' WHERE id_retiro = 'RT3106' AND id_cedula = '1098805752';
-- retirado RT9636 | cedula 1098662534
UPDATE retirado SET fecha_ingreso = '26/07/2012' WHERE id_retiro = 'RT9636' AND id_cedula = '1098662534';
-- retirado RT3343 | cedula 1005130716
UPDATE retirado SET fecha_ingreso = '02/01/2020', fecha_retiro = '15/11/2021' WHERE id_retiro = 'RT3343' AND id_cedula = '1005130716';
-- retirado RT8686 | cedula 1095946485
UPDATE retirado SET fecha_ingreso = '18/12/2017', fecha_retiro = '28/03/2018' WHERE id_retiro = 'RT8686' AND id_cedula = '1095946485';
-- retirado RT3445 | cedula 1102723572
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '09/07/2022' WHERE id_retiro = 'RT3445' AND id_cedula = '1102723572';
-- retirado RT8504 | cedula 1100893628
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '03/08/2023' WHERE id_retiro = 'RT8504' AND id_cedula = '1100893628';
-- retirado RT7017 | cedula 1098761161
UPDATE retirado SET fecha_ingreso = '04/05/2021', fecha_retiro = '05/06/2021' WHERE id_retiro = 'RT7017' AND id_cedula = '1098761161';
-- retirado RT9799 | cedula 1098677053
UPDATE retirado SET fecha_ingreso = '18/07/2016', fecha_retiro = '24/08/2017' WHERE id_retiro = 'RT9799' AND id_cedula = '1098677053';
-- retirado RT9134 | cedula 1151937598
UPDATE retirado SET fecha_ingreso = '26/10/2015' WHERE id_retiro = 'RT9134' AND id_cedula = '1151937598';
-- retirado RT5041 | cedula 1005155974
UPDATE retirado SET fecha_ingreso = '19/10/2022', fecha_retiro = '24/10/2022' WHERE id_retiro = 'RT5041' AND id_cedula = '1005155974';
-- retirado RT3862 | cedula 91507807
UPDATE retirado SET fecha_ingreso = '22/12/2014', fecha_retiro = '30/11/2018' WHERE id_retiro = 'RT3862' AND id_cedula = '91507807';
-- retirado RT5153 | cedula 1098712821
UPDATE retirado SET fecha_ingreso = '10/01/2017', fecha_retiro = '30/07/2017' WHERE id_retiro = 'RT5153' AND id_cedula = '1098712821';
-- retirado RT5393 | cedula 1005448006
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '19/08/2021' WHERE id_retiro = 'RT5393' AND id_cedula = '1005448006';
-- retirado RT8576 | cedula 1095820844
UPDATE retirado SET fecha_ingreso = '17/04/2017', fecha_retiro = '27/07/2017' WHERE id_retiro = 'RT8576' AND id_cedula = '1095820844';
-- retirado RT5091 | cedula 1099375705
UPDATE retirado SET fecha_ingreso = '18/12/2017', fecha_retiro = '20/04/2018' WHERE id_retiro = 'RT5091' AND id_cedula = '1099375705';
-- retirado RT7663 | cedula 1095952035
UPDATE retirado SET fecha_ingreso = '04/03/2021', fecha_retiro = '26/03/2021' WHERE id_retiro = 'RT7663' AND id_cedula = '1095952035';
-- retirado RT8084 | cedula 1110576442
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '02/10/2023' WHERE id_retiro = 'RT8084' AND id_cedula = '1110576442';
-- retirado RT3772 | cedula 4264702
UPDATE retirado SET fecha_ingreso = '04/04/2022', fecha_retiro = '21/04/2022' WHERE id_retiro = 'RT3772' AND id_cedula = '4264702';
-- retirado RT1555 | cedula 1128327468
UPDATE retirado SET fecha_ingreso = '19/04/2018', fecha_retiro = '02/11/2021' WHERE id_retiro = 'RT1555' AND id_cedula = '1128327468';
-- retirado RT2779 | cedula 18974435
UPDATE retirado SET fecha_ingreso = '11/09/2015', fecha_retiro = '28/12/2023' WHERE id_retiro = 'RT2779' AND id_cedula = '18974435';
-- retirado RT7477 | cedula 1095835185
UPDATE retirado SET fecha_ingreso = '03/02/2020', fecha_retiro = '05/02/2021' WHERE id_retiro = 'RT7477' AND id_cedula = '1095835185';
-- retirado RT4730 | cedula 1099552436
UPDATE retirado SET fecha_ingreso = '12/06/2019', fecha_retiro = '12/12/2019' WHERE id_retiro = 'RT4730' AND id_cedula = '1099552436';
-- retirado RT6924 | cedula 1095795504
UPDATE retirado SET fecha_ingreso = '09/05/2017', fecha_retiro = '11/01/2022' WHERE id_retiro = 'RT6924' AND id_cedula = '1095795504';
-- retirado RT7241 | cedula 1095795504
UPDATE retirado SET fecha_ingreso = '25/04/2023', fecha_retiro = '08/09/2022' WHERE id_retiro = 'RT7241' AND id_cedula = '1095795504';
-- retirado RT8308 | cedula 4769521
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '15/09/2023' WHERE id_retiro = 'RT8308' AND id_cedula = '4769521';
-- retirado RT4862 | cedula 1095927146
UPDATE retirado SET fecha_ingreso = '23/12/2019', fecha_retiro = '02/11/2020' WHERE id_retiro = 'RT4862' AND id_cedula = '1095927146';
-- retirado RT3931 | cedula 1097302025
UPDATE retirado SET fecha_ingreso = '09/12/2022', fecha_retiro = '16/12/2022' WHERE id_retiro = 'RT3931' AND id_cedula = '1097302025';
-- retirado RT7578 | cedula 1095927976
UPDATE retirado SET fecha_ingreso = '01/02/2017', fecha_retiro = '30/07/2017' WHERE id_retiro = 'RT7578' AND id_cedula = '1095927976';
-- retirado RT3488 | cedula 1098672597
UPDATE retirado SET fecha_ingreso = '21/02/2023', fecha_retiro = '06/03/2023' WHERE id_retiro = 'RT3488' AND id_cedula = '1098672597';
-- retirado RT1554 | cedula 1095909053
UPDATE retirado SET fecha_ingreso = '19/12/2023', fecha_retiro = '04/01/2024' WHERE id_retiro = 'RT1554' AND id_cedula = '1095909053';
-- retirado RT5007 | cedula 1006875622
UPDATE retirado SET fecha_ingreso = '14/03/2023', fecha_retiro = '15/03/2023' WHERE id_retiro = 'RT5007' AND id_cedula = '1006875622';
-- retirado RT8063 | cedula 1098693074
UPDATE retirado SET fecha_ingreso = '27/04/2018', fecha_retiro = '15/05/2018' WHERE id_retiro = 'RT8063' AND id_cedula = '1098693074';
-- retirado RT4529 | cedula 1098764916
UPDATE retirado SET fecha_ingreso = '17/11/2017', fecha_retiro = '01/07/2019' WHERE id_retiro = 'RT4529' AND id_cedula = '1098764916';
-- retirado RT7626 | cedula 1121906426
UPDATE retirado SET fecha_ingreso = '18/05/2021', fecha_retiro = '31/01/2023' WHERE id_retiro = 'RT7626' AND id_cedula = '1121906426';
-- retirado RT8485 | cedula 1095814299
UPDATE retirado SET fecha_ingreso = '17/04/2013' WHERE id_retiro = 'RT8485' AND id_cedula = '1095814299';
-- retirado RT8461 | cedula 1095918579
UPDATE retirado SET fecha_ingreso = '25/01/2014', fecha_retiro = '24/02/2014' WHERE id_retiro = 'RT8461' AND id_cedula = '1095918579';
-- retirado RT5335 | cedula 1007669266
UPDATE retirado SET fecha_ingreso = '01/02/2021', fecha_retiro = '20/08/2022' WHERE id_retiro = 'RT5335' AND id_cedula = '1007669266';
-- retirado RT5215 | cedula 1095819257
UPDATE retirado SET fecha_ingreso = '23/12/2015', fecha_retiro = '24/12/2015' WHERE id_retiro = 'RT5215' AND id_cedula = '1095819257';
-- retirado RT7277 | cedula 1102390829
UPDATE retirado SET fecha_ingreso = '13/03/2019', fecha_retiro = '30/03/2019' WHERE id_retiro = 'RT7277' AND id_cedula = '1102390829';
-- retirado RT7472 | cedula 1098786031
UPDATE retirado SET fecha_retiro = '15/02/2022' WHERE id_retiro = 'RT7472' AND id_cedula = '1098786031';
-- retirado RT8442 | cedula 37580247
UPDATE retirado SET fecha_retiro = '27/08/2021' WHERE id_retiro = 'RT8442' AND id_cedula = '37580247';
-- retirado RT6411 | cedula 1098780789
UPDATE retirado SET fecha_ingreso = '22/05/2018', fecha_retiro = '31/05/2018' WHERE id_retiro = 'RT6411' AND id_cedula = '1098780789';
-- retirado RT9707 | cedula 80023627
UPDATE retirado SET fecha_ingreso = '28/09/2013', fecha_retiro = '28/09/2013' WHERE id_retiro = 'RT9707' AND id_cedula = '80023627';
-- retirado RT6619 | cedula 91179887
UPDATE retirado SET fecha_ingreso = '18/01/2014', fecha_retiro = '24/02/2014' WHERE id_retiro = 'RT6619' AND id_cedula = '91179887';
-- retirado RT2404 | cedula 1098702471
UPDATE retirado SET fecha_retiro = '08/07/2021' WHERE id_retiro = 'RT2404' AND id_cedula = '1098702471';
-- retirado RT4606 | cedula 1095794980
UPDATE retirado SET fecha_ingreso = '04/09/2013', fecha_retiro = '17/03/2014' WHERE id_retiro = 'RT4606' AND id_cedula = '1095794980';
-- retirado RT4305 | cedula 1098694759
UPDATE retirado SET fecha_ingreso = '12/01/2018', fecha_retiro = '12/07/2018' WHERE id_retiro = 'RT4305' AND id_cedula = '1098694759';
-- retirado RT6958 | cedula 1098797761
UPDATE retirado SET fecha_retiro = '28/02/2021' WHERE id_retiro = 'RT6958' AND id_cedula = '1098797761';
-- retirado RT5199 | cedula 1062809447
UPDATE retirado SET fecha_ingreso = '16/01/2023', fecha_retiro = '28/01/2023' WHERE id_retiro = 'RT5199' AND id_cedula = '1062809447';
-- retirado RT2482 | cedula 1098780998
UPDATE retirado SET fecha_ingreso = '10/08/2022', fecha_retiro = '05/04/2023' WHERE id_retiro = 'RT2482' AND id_cedula = '1098780998';
-- retirado RT5891 | cedula 1001815858
UPDATE retirado SET fecha_ingreso = '12/01/2023', fecha_retiro = '04/05/2023' WHERE id_retiro = 'RT5891' AND id_cedula = '1001815858';
-- retirado RT6659 | cedula 1005237515
UPDATE retirado SET fecha_ingreso = '24/03/2021', fecha_retiro = '15/04/2021' WHERE id_retiro = 'RT6659' AND id_cedula = '1005237515';
-- retirado RT1854 | cedula 1102724697
UPDATE retirado SET fecha_ingreso = '21/01/2019', fecha_retiro = '09/06/2022' WHERE id_retiro = 'RT1854' AND id_cedula = '1102724697';
-- retirado RT7861 | cedula 1096227432
UPDATE retirado SET fecha_ingreso = '01/09/2021', fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT7861' AND id_cedula = '1096227432';
-- retirado RT7276 | cedula 1100967339
UPDATE retirado SET fecha_ingreso = '22/04/2019', fecha_retiro = '30/08/2020' WHERE id_retiro = 'RT7276' AND id_cedula = '1100967339';
-- retirado RT9060 | cedula 1127953404
UPDATE retirado SET fecha_ingreso = '22/09/2017', fecha_retiro = '02/11/2017' WHERE id_retiro = 'RT9060' AND id_cedula = '1127953404';
-- retirado RT6314 | cedula 13563494
UPDATE retirado SET fecha_ingreso = '23/01/2014', fecha_retiro = '10/12/2015' WHERE id_retiro = 'RT6314' AND id_cedula = '13563494';
-- retirado RT7755 | cedula 1007419503
UPDATE retirado SET fecha_ingreso = '10/06/2021', fecha_retiro = '01/07/2022' WHERE id_retiro = 'RT7755' AND id_cedula = '1007419503';
-- retirado RT4034 | cedula 1098650974
UPDATE retirado SET fecha_ingreso = '20/07/2014' WHERE id_retiro = 'RT4034' AND id_cedula = '1098650974';
-- retirado RT6916 | cedula 1095937389
UPDATE retirado SET fecha_ingreso = '07/09/2020', fecha_retiro = '16/01/2024' WHERE id_retiro = 'RT6916' AND id_cedula = '1095937389';
-- retirado RT4412 | cedula 1005154237
UPDATE retirado SET fecha_ingreso = '13/12/2019', fecha_retiro = '13/06/2020' WHERE id_retiro = 'RT4412' AND id_cedula = '1005154237';
-- retirado RT9220 | cedula 1098357296
UPDATE retirado SET fecha_ingreso = '03/04/2013', fecha_retiro = '13/05/2014' WHERE id_retiro = 'RT9220' AND id_cedula = '1098357296';
-- retirado RT5761 | cedula 1005340456
UPDATE retirado SET fecha_retiro = '30/09/2022' WHERE id_retiro = 'RT5761' AND id_cedula = '1005340456';
-- retirado RT7536 | cedula 37551857
UPDATE retirado SET fecha_ingreso = '13/08/2013', fecha_retiro = '27/11/2020' WHERE id_retiro = 'RT7536' AND id_cedula = '37551857';
-- retirado RT2304 | cedula 1129485327
UPDATE retirado SET fecha_ingreso = '15/05/2023', fecha_retiro = '14/08/2023' WHERE id_retiro = 'RT2304' AND id_cedula = '1129485327';
-- retirado RT7561 | cedula 91542915
UPDATE retirado SET fecha_ingreso = '07/07/2018', fecha_retiro = '07/07/2018' WHERE id_retiro = 'RT7561' AND id_cedula = '91542915';
-- retirado RT3818 | cedula 1095805767
UPDATE retirado SET fecha_ingreso = '30/07/2014', fecha_retiro = '30/11/2014' WHERE id_retiro = 'RT3818' AND id_cedula = '1095805767';
-- retirado RT8599 | cedula 1098670618
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '28/02/2018' WHERE id_retiro = 'RT8599' AND id_cedula = '1098670618';
-- retirado RT3611 | cedula 37619967
UPDATE retirado SET fecha_ingreso = '03/03/2014', fecha_retiro = '30/10/2015' WHERE id_retiro = 'RT3611' AND id_cedula = '37619967';
-- retirado RT1774 | cedula 1098676186
UPDATE retirado SET fecha_ingreso = '24/03/2015', fecha_retiro = '10/02/2017' WHERE id_retiro = 'RT1774' AND id_cedula = '1098676186';
-- retirado RT1902 | cedula 13516286
UPDATE retirado SET fecha_ingreso = '15/07/2013', fecha_retiro = '15/02/2016' WHERE id_retiro = 'RT1902' AND id_cedula = '13516286';
-- retirado RT8471 | cedula 1098618560
UPDATE retirado SET fecha_ingreso = '08/09/2020', fecha_retiro = '20/11/2023' WHERE id_retiro = 'RT8471' AND id_cedula = '1098618560';
-- retirado RT3331 | cedula 1098768643
UPDATE retirado SET fecha_ingreso = '24/04/2015', fecha_retiro = '23/10/2015' WHERE id_retiro = 'RT3331' AND id_cedula = '1098768643';
-- retirado RT3436 | cedula 1098741522
UPDATE retirado SET fecha_ingreso = '25/06/2019', fecha_retiro = '25/12/2019' WHERE id_retiro = 'RT3436' AND id_cedula = '1098741522';
-- retirado RT7460 | cedula 1098634229
UPDATE retirado SET fecha_ingreso = '20/10/2014', fecha_retiro = '13/09/2018' WHERE id_retiro = 'RT7460' AND id_cedula = '1098634229';
-- retirado RT8340 | cedula 1098798666
UPDATE retirado SET fecha_ingreso = '02/07/2019', fecha_retiro = '17/12/2019' WHERE id_retiro = 'RT8340' AND id_cedula = '1098798666';
-- retirado RT1714 | cedula 1030556425
UPDATE retirado SET fecha_ingreso = '01/11/2014' WHERE id_retiro = 'RT1714' AND id_cedula = '1030556425';
-- retirado RT2519 | cedula 1234340651
UPDATE retirado SET fecha_ingreso = '10/10/2023', fecha_retiro = '21/10/2023' WHERE id_retiro = 'RT2519' AND id_cedula = '1234340651';
-- retirado RT9745 | cedula 1095925075
UPDATE retirado SET fecha_ingreso = '21/10/2016', fecha_retiro = '30/08/2022' WHERE id_retiro = 'RT9745' AND id_cedula = '1095925075';
-- retirado RT4795 | cedula 1098682215
UPDATE retirado SET fecha_ingreso = '12/11/2014', fecha_retiro = '11/10/2017' WHERE id_retiro = 'RT4795' AND id_cedula = '1098682215';
-- retirado RT7236 | cedula 1095951398
UPDATE retirado SET fecha_ingreso = '12/10/2019', fecha_retiro = '29/02/2020' WHERE id_retiro = 'RT7236' AND id_cedula = '1095951398';
-- retirado RT8235 | cedula 1005197045
UPDATE retirado SET fecha_ingreso = '02/04/2018', fecha_retiro = '08/09/2020' WHERE id_retiro = 'RT8235' AND id_cedula = '1005197045';
-- retirado RT9633 | cedula 1095926782
UPDATE retirado SET fecha_ingreso = '24/03/2021', fecha_retiro = '11/05/2021' WHERE id_retiro = 'RT9633' AND id_cedula = '1095926782';
-- retirado RT6233 | cedula 1111197139
UPDATE retirado SET fecha_ingreso = '27/07/2012', fecha_retiro = '10/01/2013' WHERE id_retiro = 'RT6233' AND id_cedula = '1111197139';
-- retirado RT3129 | cedula 13743715
UPDATE retirado SET fecha_ingreso = '13/10/2013' WHERE id_retiro = 'RT3129' AND id_cedula = '13743715';
-- retirado RT2490 | cedula 91525019
UPDATE retirado SET fecha_ingreso = '04/02/2019', fecha_retiro = '16/06/2022' WHERE id_retiro = 'RT2490' AND id_cedula = '91525019';
-- retirado RT1640 | cedula 1095831796
UPDATE retirado SET fecha_ingreso = '22/03/2016', fecha_retiro = '30/10/2016' WHERE id_retiro = 'RT1640' AND id_cedula = '1095831796';
-- retirado RT8642 | cedula 1095831796
UPDATE retirado SET fecha_ingreso = '20/09/2017', fecha_retiro = '17/05/2019' WHERE id_retiro = 'RT8642' AND id_cedula = '1095831796';
-- retirado RT2331 | cedula 1095831796
UPDATE retirado SET fecha_ingreso = '12/05/2022', fecha_retiro = '01/08/2022' WHERE id_retiro = 'RT2331' AND id_cedula = '1095831796';
-- retirado RT8434 | cedula 1098671024
UPDATE retirado SET fecha_ingreso = '02/01/2016', fecha_retiro = '04/01/2016' WHERE id_retiro = 'RT8434' AND id_cedula = '1098671024';
-- retirado RT5493 | cedula 1095916477
UPDATE retirado SET fecha_ingreso = '04/05/2015' WHERE id_retiro = 'RT5493' AND id_cedula = '1095916477';
-- retirado RT1834 | cedula 1097093759
UPDATE retirado SET fecha_ingreso = '11/07/2019', fecha_retiro = '08/09/2020' WHERE id_retiro = 'RT1834' AND id_cedula = '1097093759';
-- retirado RT9233 | cedula 1005083598
UPDATE retirado SET fecha_ingreso = '05/02/2018', fecha_retiro = '09/12/2021' WHERE id_retiro = 'RT9233' AND id_cedula = '1005083598';
-- retirado RT2320 | cedula 1098616169
UPDATE retirado SET fecha_retiro = '19/10/2017' WHERE id_retiro = 'RT2320' AND id_cedula = '1098616169';
-- retirado RT3606 | cedula 1098616169
UPDATE retirado SET fecha_ingreso = '16/07/2019', fecha_retiro = '09/07/2022' WHERE id_retiro = 'RT3606' AND id_cedula = '1098616169';
-- retirado RT5486 | cedula 1095819627
UPDATE retirado SET fecha_ingreso = '20/05/2021', fecha_retiro = '07/06/2021' WHERE id_retiro = 'RT5486' AND id_cedula = '1095819627';
-- retirado RT4672 | cedula 1005452210
UPDATE retirado SET fecha_ingreso = '17/04/2017', fecha_retiro = '05/12/2023' WHERE id_retiro = 'RT4672' AND id_cedula = '1005452210';
-- retirado RT9684 | cedula 1005149975
UPDATE retirado SET fecha_ingreso = '19/12/2019', fecha_retiro = '19/12/2019' WHERE id_retiro = 'RT9684' AND id_cedula = '1005149975';
-- retirado RT8588 | cedula 91519314
UPDATE retirado SET fecha_ingreso = '01/11/2018', fecha_retiro = '22/11/2018' WHERE id_retiro = 'RT8588' AND id_cedula = '91519314';
-- retirado RT4259 | cedula 1098816989
UPDATE retirado SET fecha_retiro = '21/05/2022' WHERE id_retiro = 'RT4259' AND id_cedula = '1098816989';
-- retirado RT9758 | cedula 1095948885
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '23/12/2022' WHERE id_retiro = 'RT9758' AND id_cedula = '1095948885';
-- retirado RT4380 | cedula 1098647725
UPDATE retirado SET fecha_ingreso = '15/10/2013' WHERE id_retiro = 'RT4380' AND id_cedula = '1098647725';
-- retirado RT8376 | cedula 1005369411
UPDATE retirado SET fecha_ingreso = '25/04/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = 'RT8376' AND id_cedula = '1005369411';
-- retirado RT2472 | cedula 88278220
UPDATE retirado SET fecha_ingreso = '01/08/2012', fecha_retiro = '06/05/2021' WHERE id_retiro = 'RT2472' AND id_cedula = '88278220';
-- retirado RT5758 | cedula 91518870
UPDATE retirado SET fecha_ingreso = '25/04/2014', fecha_retiro = '28/06/2014' WHERE id_retiro = 'RT5758' AND id_cedula = '91518870';
-- retirado RT6426 | cedula 2677781
UPDATE retirado SET fecha_ingreso = '16/01/2023', fecha_retiro = '03/06/2023' WHERE id_retiro = 'RT6426' AND id_cedula = '2677781';
-- retirado RT9258 | cedula 1002444626
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '12/12/2023' WHERE id_retiro = 'RT9258' AND id_cedula = '1002444626';
-- retirado RT4145 | cedula 37546616
UPDATE retirado SET fecha_ingreso = '10/09/2013', fecha_retiro = '30/12/2022' WHERE id_retiro = 'RT4145' AND id_cedula = '37546616';
-- retirado RT8211 | cedula 13716199
UPDATE retirado SET fecha_ingreso = '06/08/2016', fecha_retiro = '05/07/2019' WHERE id_retiro = 'RT8211' AND id_cedula = '13716199';
-- retirado RT6786 | cedula 1005448392
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '06/05/2021' WHERE id_retiro = 'RT6786' AND id_cedula = '1005448392';
-- retirado RT6180 | cedula 1095958145
UPDATE retirado SET fecha_ingreso = '08/04/2019', fecha_retiro = '08/01/2020' WHERE id_retiro = 'RT6180' AND id_cedula = '1095958145';
-- retirado RT5986 | cedula 1095946883
UPDATE retirado SET fecha_ingreso = '16/10/2020', fecha_retiro = '01/07/2021' WHERE id_retiro = 'RT5986' AND id_cedula = '1095946883';
-- retirado RT8055 | cedula 1095946883
UPDATE retirado SET fecha_ingreso = '18/02/2022', fecha_retiro = '01/07/2023' WHERE id_retiro = 'RT8055' AND id_cedula = '1095946883';
-- retirado RT5218 | cedula 88171047
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '01/02/2021' WHERE id_retiro = 'RT5218' AND id_cedula = '88171047';
-- retirado RT9244 | cedula 1098614468
UPDATE retirado SET fecha_ingreso = '07/10/2014' WHERE id_retiro = 'RT9244' AND id_cedula = '1098614468';
-- retirado RT7488 | cedula 1098731546
UPDATE retirado SET fecha_ingreso = '12/01/2019', fecha_retiro = '12/07/2019' WHERE id_retiro = 'RT7488' AND id_cedula = '1098731546';
-- retirado RT8381 | cedula 1099545701
UPDATE retirado SET fecha_ingreso = '28/11/2014' WHERE id_retiro = 'RT8381' AND id_cedula = '1099545701';
-- retirado RT2273 | cedula 13873520
UPDATE retirado SET fecha_ingreso = '11/04/2023', fecha_retiro = '20/06/2023' WHERE id_retiro = 'RT2273' AND id_cedula = '13873520';
-- retirado RT9163 | cedula 1098782376
UPDATE retirado SET fecha_ingreso = '18/08/2020', fecha_retiro = '30/07/2021' WHERE id_retiro = 'RT9163' AND id_cedula = '1098782376';
-- retirado RT6938 | cedula 1098782376
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT6938' AND id_cedula = '1098782376';
-- retirado RT5309 | cedula 1082999714
UPDATE retirado SET fecha_ingreso = '08/08/2023', fecha_retiro = '18/08/2023' WHERE id_retiro = 'RT5309' AND id_cedula = '1082999714';
-- retirado RT2275 | cedula 1005337802
UPDATE retirado SET fecha_ingreso = '01/02/2021', fecha_retiro = '08/06/2023' WHERE id_retiro = 'RT2275' AND id_cedula = '1005337802';
-- retirado RT2454 | cedula 1100895040
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT2454' AND id_cedula = '1100895040';
-- retirado RT6288 | cedula 1005178601
UPDATE retirado SET fecha_ingreso = '25/04/2023', fecha_retiro = '10/11/2025' WHERE id_retiro = 'RT6288' AND id_cedula = '1005178601';
-- retirado RT4711 | cedula 1098727097
UPDATE retirado SET fecha_ingreso = '03/03/2015', fecha_retiro = '02/02/2018' WHERE id_retiro = 'RT4711' AND id_cedula = '1098727097';
-- retirado RT4058 | cedula 1095726280
UPDATE retirado SET fecha_ingreso = '04/10/2019', fecha_retiro = '05/09/2020' WHERE id_retiro = 'RT4058' AND id_cedula = '1095726280';
-- retirado RT2867 | cedula 1095726280
UPDATE retirado SET fecha_ingreso = '01/09/2021', fecha_retiro = '09/07/2022' WHERE id_retiro = 'RT2867' AND id_cedula = '1095726280';
-- retirado RT4384 | cedula 1234339521
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '09/10/2021' WHERE id_retiro = 'RT4384' AND id_cedula = '1234339521';
-- retirado RT6253 | cedula 5777920
UPDATE retirado SET fecha_ingreso = '02/08/2012', fecha_retiro = '27/09/2013' WHERE id_retiro = 'RT6253' AND id_cedula = '5777920';
-- retirado RT5627 | cedula 1100896906
UPDATE retirado SET fecha_ingreso = '24/02/2023', fecha_retiro = '07/03/2023' WHERE id_retiro = 'RT5627' AND id_cedula = '1100896906';
-- retirado RT3613 | cedula 1095919836
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '10/09/2019' WHERE id_retiro = 'RT3613' AND id_cedula = '1095919836';
-- retirado RT7676 | cedula 91505856
UPDATE retirado SET fecha_ingreso = '23/10/2013', fecha_retiro = '16/02/2016' WHERE id_retiro = 'RT7676' AND id_cedula = '91505856';
-- retirado RT8200 | cedula 91295443
UPDATE retirado SET fecha_ingreso = '09/09/2020', fecha_retiro = '15/09/2022' WHERE id_retiro = 'RT8200' AND id_cedula = '91295443';
-- retirado RT9341 | cedula 1098731860
UPDATE retirado SET fecha_ingreso = '22/09/2023', fecha_retiro = '05/10/2023' WHERE id_retiro = 'RT9341' AND id_cedula = '1098731860';
-- retirado RT2895 | cedula 9693976
UPDATE retirado SET fecha_ingreso = '08/01/2014', fecha_retiro = '30/06/2014' WHERE id_retiro = 'RT2895' AND id_cedula = '9693976';
-- retirado RT5287 | cedula 1098609486
UPDATE retirado SET fecha_ingreso = '16/03/2015', fecha_retiro = '23/08/2015' WHERE id_retiro = 'RT5287' AND id_cedula = '1098609486';
-- retirado RT2898 | cedula 1100896725
UPDATE retirado SET fecha_ingreso = '26/02/2018', fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT2898' AND id_cedula = '1100896725';
-- retirado RT4103 | cedula 1100896725
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '17/08/2023' WHERE id_retiro = 'RT4103' AND id_cedula = '1100896725';
-- retirado RT5719 | cedula 1098357270
UPDATE retirado SET fecha_ingreso = '12/07/2014', fecha_retiro = '30/08/2014' WHERE id_retiro = 'RT5719' AND id_cedula = '1098357270';
-- retirado RT3437 | cedula 1101597954
UPDATE retirado SET fecha_retiro = '05/09/2022' WHERE id_retiro = 'RT3437' AND id_cedula = '1101597954';
-- retirado RT5466 | cedula 1003196602
UPDATE retirado SET fecha_ingreso = '01/02/2017', fecha_retiro = '05/07/2020' WHERE id_retiro = 'RT5466' AND id_cedula = '1003196602';
-- retirado RT6901 | cedula 1005447475
UPDATE retirado SET fecha_ingreso = '12/09/2023', fecha_retiro = '13/09/2023' WHERE id_retiro = 'RT6901' AND id_cedula = '1005447475';
-- retirado RT9259 | cedula 1098755273
UPDATE retirado SET fecha_ingreso = '02/07/2019', fecha_retiro = '02/01/2020' WHERE id_retiro = 'RT9259' AND id_cedula = '1098755273';
-- retirado RT7928 | cedula 1098755273
UPDATE retirado SET fecha_retiro = '15/08/2021' WHERE id_retiro = 'RT7928' AND id_cedula = '1098755273';
-- retirado RT7676 | cedula 1098707090
UPDATE retirado SET fecha_ingreso = '08/11/2021', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT7676' AND id_cedula = '1098707090';
-- retirado RT6792 | cedula 1102357989
UPDATE retirado SET fecha_ingreso = '10/01/2014', fecha_retiro = '10/01/2014' WHERE id_retiro = 'RT6792' AND id_cedula = '1102357989';
-- retirado RT3234 | cedula 1095932342
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '22/10/2020' WHERE id_retiro = 'RT3234' AND id_cedula = '1095932342';
-- retirado RT8640 | cedula 91157238
UPDATE retirado SET fecha_ingreso = '03/04/2013', fecha_retiro = '05/12/2018' WHERE id_retiro = 'RT8640' AND id_cedula = '91157238';
-- retirado RT3068 | cedula 1065874397
UPDATE retirado SET fecha_ingreso = '11/01/2015' WHERE id_retiro = 'RT3068' AND id_cedula = '1065874397';
-- retirado RT9555 | cedula 1005076416
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '18/08/2022' WHERE id_retiro = 'RT9555' AND id_cedula = '1005076416';
-- retirado RT7133 | cedula 91180238
UPDATE retirado SET fecha_ingreso = '04/09/2015', fecha_retiro = '01/12/2020' WHERE id_retiro = 'RT7133' AND id_cedula = '91180238';
-- retirado RT3979 | cedula 1102357280
UPDATE retirado SET fecha_ingreso = '08/06/2016', fecha_retiro = '11/02/2018' WHERE id_retiro = 'RT3979' AND id_cedula = '1102357280';
-- retirado RT9067 | cedula 88034054
UPDATE retirado SET fecha_ingreso = '01/06/2012', fecha_retiro = '30/07/2013' WHERE id_retiro = 'RT9067' AND id_cedula = '88034054';
-- retirado RT4507 | cedula 1148144537
UPDATE retirado SET fecha_ingreso = '25/04/2019', fecha_retiro = '12/07/2019' WHERE id_retiro = 'RT4507' AND id_cedula = '1148144537';
-- retirado RT2188 | cedula 6567752
UPDATE retirado SET fecha_ingreso = '23/06/2022', fecha_retiro = '22/11/2022' WHERE id_retiro = 'RT2188' AND id_cedula = '6567752';
-- retirado RT9010 | cedula 13743223
UPDATE retirado SET fecha_ingreso = '01/04/2013', fecha_retiro = '08/07/2013' WHERE id_retiro = 'RT9010' AND id_cedula = '13743223';
-- retirado RT6268 | cedula 1095951752
UPDATE retirado SET fecha_ingreso = '20/10/2021', fecha_retiro = '13/10/2022' WHERE id_retiro = 'RT6268' AND id_cedula = '1095951752';
-- retirado RT5277 | cedula 1098787074
UPDATE retirado SET fecha_ingreso = '18/12/2017', fecha_retiro = '22/01/2018' WHERE id_retiro = 'RT5277' AND id_cedula = '1098787074';
-- retirado RT7418 | cedula 13749516
UPDATE retirado SET fecha_ingreso = '02/11/2013', fecha_retiro = '16/04/2019' WHERE id_retiro = 'RT7418' AND id_cedula = '13749516';
-- retirado RT5117 | cedula 1098666494
UPDATE retirado SET fecha_ingreso = '17/04/2018', fecha_retiro = '30/01/2019' WHERE id_retiro = 'RT5117' AND id_cedula = '1098666494';
-- retirado RT8021 | cedula 13720554
UPDATE retirado SET fecha_ingreso = '04/07/2014', fecha_retiro = '15/10/2021' WHERE id_retiro = 'RT8021' AND id_cedula = '13720554';
-- retirado RT4376 | cedula 79850529
UPDATE retirado SET fecha_ingreso = '26/07/2012' WHERE id_retiro = 'RT4376' AND id_cedula = '79850529';
-- retirado RT6695 | cedula 1095485520
UPDATE retirado SET fecha_ingreso = '25/06/2019', fecha_retiro = '14/12/2019' WHERE id_retiro = 'RT6695' AND id_cedula = '1095485520';
-- retirado RT3188 | cedula 1098798343
UPDATE retirado SET fecha_ingreso = '15/07/2017', fecha_retiro = '01/04/2018' WHERE id_retiro = 'RT3188' AND id_cedula = '1098798343';
-- retirado RT5281 | cedula 1098754596
UPDATE retirado SET fecha_ingreso = '26/01/2021', fecha_retiro = '03/08/2021' WHERE id_retiro = 'RT5281' AND id_cedula = '1098754596';
-- retirado RT2576 | cedula 1095928390
UPDATE retirado SET fecha_ingreso = '05/06/2015', fecha_retiro = '13/12/2015' WHERE id_retiro = 'RT2576' AND id_cedula = '1095928390';
-- retirado RT9081 | cedula 91527820
UPDATE retirado SET fecha_ingreso = '16/10/2013', fecha_retiro = '01/11/2013' WHERE id_retiro = 'RT9081' AND id_cedula = '91527820';
-- retirado RT1764 | cedula 91353575
UPDATE retirado SET fecha_ingreso = '05/12/2023', fecha_retiro = '02/01/2024' WHERE id_retiro = 'RT1764' AND id_cedula = '91353575';
-- retirado RT4153 | cedula 1007415886
UPDATE retirado SET fecha_ingreso = '06/09/2021', fecha_retiro = '01/12/2021' WHERE id_retiro = 'RT4153' AND id_cedula = '1007415886';
-- retirado RT2464 | cedula 72193699
UPDATE retirado SET fecha_ingreso = '19/04/2016' WHERE id_retiro = 'RT2464' AND id_cedula = '72193699';
-- retirado RT7498 | cedula 1095828729
UPDATE retirado SET fecha_ingreso = '19/08/2020', fecha_retiro = '07/09/2020' WHERE id_retiro = 'RT7498' AND id_cedula = '1095828729';
-- retirado RT8080 | cedula 1005448604
UPDATE retirado SET fecha_ingreso = '13/08/2019', fecha_retiro = '28/09/2019' WHERE id_retiro = 'RT8080' AND id_cedula = '1005448604';
-- retirado RT3946 | cedula 100694000000000
UPDATE retirado SET fecha_ingreso = '01/12/2021', fecha_retiro = '13/12/2021' WHERE id_retiro = 'RT3946' AND id_cedula = '100694000000000';
-- retirado RT8664 | cedula 91283360
UPDATE retirado SET fecha_ingreso = '22/12/2014', fecha_retiro = '01/12/2020' WHERE id_retiro = 'RT8664' AND id_cedula = '91283360';
-- retirado RT3953 | cedula 1007764199
UPDATE retirado SET fecha_ingreso = '13/12/2019', fecha_retiro = '01/03/2021' WHERE id_retiro = 'RT3953' AND id_cedula = '1007764199';
-- retirado RT2286 | cedula 1007764199
UPDATE retirado SET fecha_ingreso = '01/12/2022', fecha_retiro = '01/02/2023' WHERE id_retiro = 'RT2286' AND id_cedula = '1007764199';
-- retirado RT4426 | cedula 1066095815
UPDATE retirado SET fecha_ingreso = '22/11/2021', fecha_retiro = '15/02/2022' WHERE id_retiro = 'RT4426' AND id_cedula = '1066095815';
-- retirado RT2473 | cedula 1098705943
UPDATE retirado SET fecha_ingreso = '18/04/2022', fecha_retiro = '10/06/2023' WHERE id_retiro = 'RT2473' AND id_cedula = '1098705943';
-- retirado RT6540 | cedula 13741426
UPDATE retirado SET fecha_ingreso = '03/12/2013' WHERE id_retiro = 'RT6540' AND id_cedula = '13741426';
-- retirado RT9833 | cedula 1045079502
UPDATE retirado SET fecha_retiro = '30/04/2022' WHERE id_retiro = 'RT9833' AND id_cedula = '1045079502';
-- retirado RT7874 | cedula 1005449657
UPDATE retirado SET fecha_ingreso = '10/11/2020', fecha_retiro = '14/11/2020' WHERE id_retiro = 'RT7874' AND id_cedula = '1005449657';
-- retirado RT2005 | cedula 13721910
UPDATE retirado SET fecha_ingreso = '18/01/2014' WHERE id_retiro = 'RT2005' AND id_cedula = '13721910';
-- retirado RT9629 | cedula 1005654241
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '04/11/2022' WHERE id_retiro = 'RT9629' AND id_cedula = '1005654241';
-- retirado RT5775 | cedula 1100892588
UPDATE retirado SET fecha_ingreso = '08/10/2015', fecha_retiro = '16/01/2020' WHERE id_retiro = 'RT5775' AND id_cedula = '1100892588';
-- retirado RT5780 | cedula 12584171
UPDATE retirado SET fecha_ingreso = '24/01/2014', fecha_retiro = '30/12/2019' WHERE id_retiro = 'RT5780' AND id_cedula = '12584171';
-- retirado RT5789 | cedula 5746565
UPDATE retirado SET fecha_ingreso = '22/01/2014', fecha_retiro = '19/03/2014' WHERE id_retiro = 'RT5789' AND id_cedula = '5746565';
-- retirado RT8676 | cedula 1102375619
UPDATE retirado SET fecha_ingreso = '11/07/2016', fecha_retiro = '31/01/2017' WHERE id_retiro = 'RT8676' AND id_cedula = '1102375619';
-- retirado RT2429 | cedula 1098680122
UPDATE retirado SET fecha_ingreso = '14/01/2014', fecha_retiro = '14/01/2014' WHERE id_retiro = 'RT2429' AND id_cedula = '1098680122';
-- retirado RT7434 | cedula 1005151052
UPDATE retirado SET fecha_ingreso = '03/02/2020', fecha_retiro = '25/07/2020' WHERE id_retiro = 'RT7434' AND id_cedula = '1005151052';
-- retirado RT9266 | cedula 1005151052
UPDATE retirado SET fecha_ingreso = '03/11/2020', fecha_retiro = '01/01/2021' WHERE id_retiro = 'RT9266' AND id_cedula = '1005151052';
-- retirado RT2910 | cedula 1005335817
UPDATE retirado SET fecha_ingreso = '08/07/2021', fecha_retiro = '01/05/2022' WHERE id_retiro = 'RT2910' AND id_cedula = '1005335817';
-- retirado RT9641 | cedula 1095832126
UPDATE retirado SET fecha_ingreso = '07/02/2023', fecha_retiro = '07/07/2023' WHERE id_retiro = 'RT9641' AND id_cedula = '1095832126';
-- retirado RT8038 | cedula 1098660541
UPDATE retirado SET fecha_ingreso = '08/08/2023', fecha_retiro = '16/08/2023' WHERE id_retiro = 'RT8038' AND id_cedula = '1098660541';
-- retirado RT6057 | cedula 13724576
UPDATE retirado SET fecha_ingreso = '11/09/2013' WHERE id_retiro = 'RT6057' AND id_cedula = '13724576';
-- retirado RT8294 | cedula 1098689118
UPDATE retirado SET fecha_ingreso = '20/01/2014', fecha_retiro = '27/06/2014' WHERE id_retiro = 'RT8294' AND id_cedula = '1098689118';
-- retirado RT9525 | cedula 5594368
UPDATE retirado SET fecha_ingreso = '15/11/2015' WHERE id_retiro = 'RT9525' AND id_cedula = '5594368';
-- retirado RT5701 | cedula 1095925635
UPDATE retirado SET fecha_ingreso = '06/04/2013' WHERE id_retiro = 'RT5701' AND id_cedula = '1095925635';
-- retirado RT4818 | cedula 1098623058
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '01/08/2022' WHERE id_retiro = 'RT4818' AND id_cedula = '1098623058';
-- retirado RT2711 | cedula 1098623058
UPDATE retirado SET fecha_ingreso = '05/09/2022', fecha_retiro = '15/08/2023' WHERE id_retiro = 'RT2711' AND id_cedula = '1098623058';
-- retirado RT6268 | cedula 1095788843
UPDATE retirado SET fecha_ingreso = '20/11/2013', fecha_retiro = '19/05/2014' WHERE id_retiro = 'RT6268' AND id_cedula = '1095788843';
-- retirado RT7631 | cedula 1085037288
UPDATE retirado SET fecha_ingreso = '06/12/2022', fecha_retiro = '24/03/2023' WHERE id_retiro = 'RT7631' AND id_cedula = '1085037288';
-- retirado RT7750 | cedula 1100896031
UPDATE retirado SET fecha_ingreso = '17/09/2022', fecha_retiro = '17/09/2022' WHERE id_retiro = 'RT7750' AND id_cedula = '1100896031';
-- retirado RT8809 | cedula 1094350312
UPDATE retirado SET fecha_ingreso = '10/11/2020', fecha_retiro = '14/11/2020' WHERE id_retiro = 'RT8809' AND id_cedula = '1094350312';
-- retirado RT7571 | cedula 91184721
UPDATE retirado SET fecha_retiro = '25/10/2021' WHERE id_retiro = 'RT7571' AND id_cedula = '91184721';
-- retirado RT3036 | cedula 1005337257
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '07/12/2020' WHERE id_retiro = 'RT3036' AND id_cedula = '1005337257';
-- retirado RT6837 | cedula 91526854
UPDATE retirado SET fecha_ingreso = '04/01/2024', fecha_retiro = '09/01/2024' WHERE id_retiro = 'RT6837' AND id_cedula = '91526854';
-- retirado RT9200 | cedula 1005040763
UPDATE retirado SET fecha_ingreso = '11/07/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = 'RT9200' AND id_cedula = '1005040763';
-- retirado RT3800 | cedula 1100896066
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '08/07/2022' WHERE id_retiro = 'RT3800' AND id_cedula = '1100896066';
-- retirado RT3519 | cedula 1005321713
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '25/07/2022' WHERE id_retiro = 'RT3519' AND id_cedula = '1005321713';
-- retirado RT8873 | cedula 1100891011
UPDATE retirado SET fecha_ingreso = '01/02/2015' WHERE id_retiro = 'RT8873' AND id_cedula = '1100891011';
-- retirado RT7429 | cedula 1098679029
UPDATE retirado SET fecha_ingreso = '23/09/2014' WHERE id_retiro = 'RT7429' AND id_cedula = '1098679029';
-- retirado RT5486 | cedula 1143117819
UPDATE retirado SET fecha_ingreso = '08/04/2013', fecha_retiro = '30/07/2014' WHERE id_retiro = 'RT5486' AND id_cedula = '1143117819';
-- retirado RT1789 | cedula 80230965
UPDATE retirado SET fecha_ingreso = '15/09/2022', fecha_retiro = '14/02/2023' WHERE id_retiro = 'RT1789' AND id_cedula = '80230965';
-- retirado RT4094 | cedula 1005156060
UPDATE retirado SET fecha_ingreso = '04/05/2021', fecha_retiro = '02/06/2021' WHERE id_retiro = 'RT4094' AND id_cedula = '1005156060';
-- retirado RT9627 | cedula 1102383396
UPDATE retirado SET fecha_ingreso = '25/04/2019', fecha_retiro = '09/07/2019' WHERE id_retiro = 'RT9627' AND id_cedula = '1102383396';
-- retirado RT4301 | cedula 1098711001
UPDATE retirado SET fecha_ingreso = '23/06/2017', fecha_retiro = '14/07/2017' WHERE id_retiro = 'RT4301' AND id_cedula = '1098711001';
-- retirado RT7094 | cedula 1102369897
UPDATE retirado SET fecha_retiro = '25/10/2021' WHERE id_retiro = 'RT7094' AND id_cedula = '1102369897';
-- retirado RT2294 | cedula 1095796144
UPDATE retirado SET fecha_ingreso = '16/04/2013', fecha_retiro = '01/09/2013' WHERE id_retiro = 'RT2294' AND id_cedula = '1095796144';
-- retirado RT8268 | cedula 1090416806
UPDATE retirado SET fecha_ingreso = '04/06/2014', fecha_retiro = '11/09/2014' WHERE id_retiro = 'RT8268' AND id_cedula = '1090416806';
-- retirado RT6632 | cedula 1099369902
UPDATE retirado SET fecha_ingreso = '09/10/2020', fecha_retiro = '15/10/2020' WHERE id_retiro = 'RT6632' AND id_cedula = '1099369902';
-- retirado RT4153 | cedula 1007733276
UPDATE retirado SET fecha_ingreso = '22/11/2021', fecha_retiro = '05/07/2022' WHERE id_retiro = 'RT4153' AND id_cedula = '1007733276';
-- retirado RT1852 | cedula 1100971152
UPDATE retirado SET fecha_ingreso = '19/12/2022', fecha_retiro = '30/06/2023' WHERE id_retiro = 'RT1852' AND id_cedula = '1100971152';
-- retirado RT5776 | cedula 1005447991
UPDATE retirado SET fecha_ingreso = '10/10/2017', fecha_retiro = '23/11/2020' WHERE id_retiro = 'RT5776' AND id_cedula = '1005447991';
-- retirado RT6625 | cedula 1100897052
UPDATE retirado SET fecha_ingreso = '05/09/2019', fecha_retiro = '18/08/2021' WHERE id_retiro = 'RT6625' AND id_cedula = '1100897052';
-- retirado RT6175 | cedula 1090463650
UPDATE retirado SET fecha_ingreso = '09/03/2022', fecha_retiro = '01/05/2022' WHERE id_retiro = 'RT6175' AND id_cedula = '1090463650';
-- retirado RT6203 | cedula 1098750363
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '02/05/2020' WHERE id_retiro = 'RT6203' AND id_cedula = '1098750363';
-- retirado RT6237 | cedula 91494142
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '10/10/2022' WHERE id_retiro = 'RT6237' AND id_cedula = '91494142';
-- retirado RT3368 | cedula 1095825899
UPDATE retirado SET fecha_ingreso = '16/08/2022', fecha_retiro = '15/08/2021' WHERE id_retiro = 'RT3368' AND id_cedula = '1095825899';
-- retirado RT3848 | cedula 1095825899
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT3848' AND id_cedula = '1095825899';
-- retirado RT9510 | cedula 1095825899
UPDATE retirado SET fecha_ingreso = '16/08/2022', fecha_retiro = '01/07/2023' WHERE id_retiro = 'RT9510' AND id_cedula = '1095825899';
-- retirado RT6715 | cedula 91510381
UPDATE retirado SET fecha_ingreso = '24/08/2022', fecha_retiro = '01/11/2022' WHERE id_retiro = 'RT6715' AND id_cedula = '91510381';
-- retirado RT7163 | cedula 1098711543
UPDATE retirado SET fecha_ingreso = '16/10/2020', fecha_retiro = '18/01/2021' WHERE id_retiro = 'RT7163' AND id_cedula = '1098711543';
-- retirado RT7439 | cedula 63474745
UPDATE retirado SET fecha_ingreso = '06/05/2014', fecha_retiro = '08/06/2014' WHERE id_retiro = 'RT7439' AND id_cedula = '63474745';
-- retirado RT8979 | cedula 1095908103
UPDATE retirado SET fecha_ingreso = '16/03/2015' WHERE id_retiro = 'RT8979' AND id_cedula = '1095908103';
-- retirado RT1546 | cedula 91491843
UPDATE retirado SET fecha_ingreso = '08/01/2014', fecha_retiro = '19/08/2014' WHERE id_retiro = 'RT1546' AND id_cedula = '91491843';
-- retirado RT7428 | cedula 1099363604
UPDATE retirado SET fecha_retiro = '11/03/2022' WHERE id_retiro = 'RT7428' AND id_cedula = '1099363604';
-- retirado RT3087 | cedula 91468047
UPDATE retirado SET fecha_ingreso = '26/07/2017', fecha_retiro = '24/01/2019' WHERE id_retiro = 'RT3087' AND id_cedula = '91468047';
-- retirado RT2090 | cedula 1065906232
UPDATE retirado SET fecha_ingreso = '20/09/2014' WHERE id_retiro = 'RT2090' AND id_cedula = '1065906232';
-- retirado RT6559 | cedula 1005083564
UPDATE retirado SET fecha_ingreso = '07/07/2018', fecha_retiro = '20/08/2021' WHERE id_retiro = 'RT6559' AND id_cedula = '1005083564';
-- retirado RT7235 | cedula 1099376421
UPDATE retirado SET fecha_ingreso = '24/01/2020', fecha_retiro = '01/11/2020' WHERE id_retiro = 'RT7235' AND id_cedula = '1099376421';
-- retirado RT4169 | cedula 1095928641
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '05/01/2021' WHERE id_retiro = 'RT4169' AND id_cedula = '1095928641';
-- retirado RT8724 | cedula 1098800312
UPDATE retirado SET fecha_ingreso = '22/02/2017', fecha_retiro = '28/10/2020' WHERE id_retiro = 'RT8724' AND id_cedula = '1098800312';
-- retirado RT2101 | cedula 1098693346
UPDATE retirado SET fecha_ingreso = '09/01/2016', fecha_retiro = '08/07/2016' WHERE id_retiro = 'RT2101' AND id_cedula = '1098693346';
-- retirado RT3775 | cedula 949844000000000
UPDATE retirado SET fecha_ingreso = '02/08/2019', fecha_retiro = '25/08/2021' WHERE id_retiro = 'RT3775' AND id_cedula = '949844000000000';
-- retirado RT8747 | cedula 1102386736
UPDATE retirado SET fecha_ingreso = '17/12/2020', fecha_retiro = '07/05/2021' WHERE id_retiro = 'RT8747' AND id_cedula = '1102386736';
-- retirado RT9613 | cedula 1098783677
UPDATE retirado SET fecha_ingreso = '18/09/2015' WHERE id_retiro = 'RT9613' AND id_cedula = '1098783677';
-- retirado RT7436 | cedula 12503914
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '05/06/2023' WHERE id_retiro = 'RT7436' AND id_cedula = '12503914';
-- retirado RT5407 | cedula 1095953202
UPDATE retirado SET fecha_ingreso = '24/09/2019', fecha_retiro = '06/03/2020' WHERE id_retiro = 'RT5407' AND id_cedula = '1095953202';
-- retirado RT4691 | cedula 1234339501
UPDATE retirado SET fecha_ingreso = '11/05/2023', fecha_retiro = '10/11/2023' WHERE id_retiro = 'RT4691' AND id_cedula = '1234339501';
-- retirado RT3588 | cedula 1234339501
UPDATE retirado SET fecha_ingreso = '11/11/2023', fecha_retiro = '11/01/2024' WHERE id_retiro = 'RT3588' AND id_cedula = '1234339501';
-- retirado RT9411 | cedula 1100890383
UPDATE retirado SET fecha_ingreso = '09/12/2016', fecha_retiro = '12/06/2017' WHERE id_retiro = 'RT9411' AND id_cedula = '1100890383';
-- retirado RT9298 | cedula 1100890383
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '06/10/2021' WHERE id_retiro = 'RT9298' AND id_cedula = '1100890383';
-- retirado RT8994 | cedula 13872972
UPDATE retirado SET fecha_ingreso = '04/06/2014', fecha_retiro = '05/10/2014' WHERE id_retiro = 'RT8994' AND id_cedula = '13872972';
-- retirado RT5366 | cedula 13872972
UPDATE retirado SET fecha_ingreso = '11/08/2017', fecha_retiro = '09/09/2023' WHERE id_retiro = 'RT5366' AND id_cedula = '13872972';
-- retirado RT2599 | cedula 91511904
UPDATE retirado SET fecha_ingreso = '26/07/2017', fecha_retiro = '26/10/2017' WHERE id_retiro = 'RT2599' AND id_cedula = '91511904';
-- retirado RT6190 | cedula 1098734566
UPDATE retirado SET fecha_ingreso = '14/03/2016', fecha_retiro = '17/09/2017' WHERE id_retiro = 'RT6190' AND id_cedula = '1098734566';
-- retirado RT5520 | cedula 13871343
UPDATE retirado SET fecha_ingreso = '22/05/2013', fecha_retiro = '01/10/2017' WHERE id_retiro = 'RT5520' AND id_cedula = '13871343';
-- retirado RT7940 | cedula 11235279
UPDATE retirado SET fecha_ingreso = '14/12/2020', fecha_retiro = '30/12/2023' WHERE id_retiro = 'RT7940' AND id_cedula = '11235279';
-- retirado RT5094 | cedula 13716407
UPDATE retirado SET fecha_ingreso = '01/09/2022', fecha_retiro = '01/02/2023' WHERE id_retiro = 'RT5094' AND id_cedula = '13716407';
-- retirado RT4543 | cedula 91244525
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '24/04/2014' WHERE id_retiro = 'RT4543' AND id_cedula = '91244525';
-- retirado RT2449 | cedula 91160167
UPDATE retirado SET fecha_ingreso = '04/07/2014', fecha_retiro = '02/01/2015' WHERE id_retiro = 'RT2449' AND id_cedula = '91160167';
-- retirado RT6168 | cedula 13749678
UPDATE retirado SET fecha_ingreso = '26/12/2016', fecha_retiro = '06/07/2018' WHERE id_retiro = 'RT6168' AND id_cedula = '13749678';
-- retirado RT7984 | cedula 1095822040
UPDATE retirado SET fecha_ingreso = '02/03/2023', fecha_retiro = '18/10/2023' WHERE id_retiro = 'RT7984' AND id_cedula = '1095822040';
-- retirado RT7416 | cedula 9692087
UPDATE retirado SET fecha_ingreso = '22/01/2014', fecha_retiro = '24/03/2020' WHERE id_retiro = 'RT7416' AND id_cedula = '9692087';
-- retirado RT1560 | cedula 9692087
UPDATE retirado SET fecha_ingreso = '06/10/2020', fecha_retiro = '15/01/2021' WHERE id_retiro = 'RT1560' AND id_cedula = '9692087';
-- retirado RT7865 | cedula 13747178
UPDATE retirado SET fecha_ingreso = '10/04/2013', fecha_retiro = '09/10/2014' WHERE id_retiro = 'RT7865' AND id_cedula = '13747178';
-- retirado RT3349 | cedula 91516783
UPDATE retirado SET fecha_ingreso = '28/01/2014', fecha_retiro = '10/08/2020' WHERE id_retiro = 'RT3349' AND id_cedula = '91516783';
-- retirado RT2299 | cedula 91516783
UPDATE retirado SET fecha_ingreso = '11/08/2021', fecha_retiro = '09/07/2022' WHERE id_retiro = 'RT2299' AND id_cedula = '91516783';
-- retirado RT8566 | cedula 88171560
UPDATE retirado SET fecha_ingreso = '07/10/2014', fecha_retiro = '30/01/2018' WHERE id_retiro = 'RT8566' AND id_cedula = '88171560';
-- retirado RT7478 | cedula 88171560
UPDATE retirado SET fecha_ingreso = '19/08/2020', fecha_retiro = '28/01/2022' WHERE id_retiro = 'RT7478' AND id_cedula = '88171560';
-- retirado RT9163 | cedula 1100895296
UPDATE retirado SET fecha_ingreso = '02/12/2016', fecha_retiro = '13/04/2018' WHERE id_retiro = 'RT9163' AND id_cedula = '1100895296';
-- retirado RT2375 | cedula 1102351113
UPDATE retirado SET fecha_ingreso = '11/12/2020', fecha_retiro = '07/04/2021' WHERE id_retiro = 'RT2375' AND id_cedula = '1102351113';
-- retirado RT5046 | cedula 1098782901
UPDATE retirado SET fecha_ingreso = '04/03/2021', fecha_retiro = '15/01/2024' WHERE id_retiro = 'RT5046' AND id_cedula = '1098782901';
-- retirado RT3027 | cedula 37749257
UPDATE retirado SET fecha_ingreso = '05/04/2013', fecha_retiro = '30/08/2013' WHERE id_retiro = 'RT3027' AND id_cedula = '37749257';
-- retirado RT3670 | cedula 91293462
UPDATE retirado SET fecha_ingreso = '04/01/2012', fecha_retiro = '07/10/2013' WHERE id_retiro = 'RT3670' AND id_cedula = '91293462';
-- retirado RT5626 | cedula 77179737
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '11/05/2021' WHERE id_retiro = 'RT5626' AND id_cedula = '77179737';
-- retirado RT5373 | cedula 1102382514
UPDATE retirado SET fecha_ingreso = '11/03/2021', fecha_retiro = '01/10/2022' WHERE id_retiro = 'RT5373' AND id_cedula = '1102382514';
-- retirado RT9197 | cedula 1095839632
UPDATE retirado SET fecha_ingreso = '17/02/2020', fecha_retiro = '26/12/2020' WHERE id_retiro = 'RT9197' AND id_cedula = '1095839632';
-- retirado RT5646 | cedula 1095820451
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '01/08/2022' WHERE id_retiro = 'RT5646' AND id_cedula = '1095820451';
-- retirado RT6674 | cedula 1095794720
UPDATE retirado SET fecha_ingreso = '08/09/2020', fecha_retiro = '03/02/2022' WHERE id_retiro = 'RT6674' AND id_cedula = '1095794720';
-- retirado RT5252 | cedula 1100893889
UPDATE retirado SET fecha_ingreso = '01/09/2020', fecha_retiro = '04/03/2021' WHERE id_retiro = 'RT5252' AND id_cedula = '1100893889';
-- retirado RT9690 | cedula 1098604707
UPDATE retirado SET fecha_ingreso = '01/07/2016' WHERE id_retiro = 'RT9690' AND id_cedula = '1098604707';
-- retirado RT6941 | cedula 1095918848
UPDATE retirado SET fecha_ingreso = '13/06/2015', fecha_retiro = '30/01/2016' WHERE id_retiro = 'RT6941' AND id_cedula = '1095918848';
-- retirado RT4705 | cedula 91247687
UPDATE retirado SET fecha_ingreso = '16/02/2013' WHERE id_retiro = 'RT4705' AND id_cedula = '91247687';
-- retirado RT6034 | cedula 1095941572
UPDATE retirado SET fecha_ingreso = '07/07/2018', fecha_retiro = '30/07/2019' WHERE id_retiro = 'RT6034' AND id_cedula = '1095941572';
-- retirado RT2796 | cedula 1098681854
UPDATE retirado SET fecha_ingreso = '17/12/2020', fecha_retiro = '20/04/2021' WHERE id_retiro = 'RT2796' AND id_cedula = '1098681854';
-- retirado RT1928 | cedula 91526091
UPDATE retirado SET fecha_ingreso = '05/04/2013', fecha_retiro = '07/11/2013' WHERE id_retiro = 'RT1928' AND id_cedula = '91526091';
-- retirado RT5111 | cedula 1005156911
UPDATE retirado SET fecha_ingreso = '22/11/2021', fecha_retiro = '07/09/2023' WHERE id_retiro = 'RT5111' AND id_cedula = '1005156911';
-- retirado RT2871 | cedula 13761911
UPDATE retirado SET fecha_ingreso = '04/06/2014', fecha_retiro = '04/05/2019' WHERE id_retiro = 'RT2871' AND id_cedula = '13761911';
-- retirado RT9800 | cedula 1005221739
UPDATE retirado SET fecha_ingreso = '07/09/2022', fecha_retiro = '01/11/2022' WHERE id_retiro = 'RT9800' AND id_cedula = '1005221739';
-- retirado RT8642 | cedula 1005651057
UPDATE retirado SET fecha_ingreso = '10/10/2022', fecha_retiro = '22/11/2022' WHERE id_retiro = 'RT8642' AND id_cedula = '1005651057';
-- retirado RT5006 | cedula 1098613518
UPDATE retirado SET fecha_ingreso = '04/09/2015' WHERE id_retiro = 'RT5006' AND id_cedula = '1098613518';
-- retirado RT8766 | cedula 1101204999
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '16/06/2023' WHERE id_retiro = 'RT8766' AND id_cedula = '1101204999';
-- retirado RT3145 | cedula 13720284
UPDATE retirado SET fecha_ingreso = '09/04/2013' WHERE id_retiro = 'RT3145' AND id_cedula = '13720284';
-- retirado RT2680 | cedula 1045712379
UPDATE retirado SET fecha_ingreso = '28/12/2013', fecha_retiro = '28/12/2013' WHERE id_retiro = 'RT2680' AND id_cedula = '1045712379';
-- retirado RT6593 | cedula 13642480
UPDATE retirado SET fecha_ingreso = '05/09/2013' WHERE id_retiro = 'RT6593' AND id_cedula = '13642480';
-- retirado RT8992 | cedula 91510640
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '30/01/2013' WHERE id_retiro = 'RT8992' AND id_cedula = '91510640';
-- retirado RT2049 | cedula 1095828524
UPDATE retirado SET fecha_ingreso = '04/09/2023', fecha_retiro = '08/09/2023' WHERE id_retiro = 'RT2049' AND id_cedula = '1095828524';
-- retirado RT3357 | cedula 1095911729
UPDATE retirado SET fecha_ingreso = '11/02/2019', fecha_retiro = '10/07/2019' WHERE id_retiro = 'RT3357' AND id_cedula = '1095911729';
-- retirado RT5534 | cedula 1095824629
UPDATE retirado SET fecha_ingreso = '06/07/2018', fecha_retiro = '24/10/2018' WHERE id_retiro = 'RT5534' AND id_cedula = '1095824629';
-- retirado RT2322 | cedula 1095912361
UPDATE retirado SET fecha_ingreso = '09/07/2018', fecha_retiro = '01/03/2019' WHERE id_retiro = 'RT2322' AND id_cedula = '1095912361';
-- retirado RT3249 | cedula 1098829810
UPDATE retirado SET fecha_ingreso = '14/09/2020', fecha_retiro = '05/06/2023' WHERE id_retiro = 'RT3249' AND id_cedula = '1098829810';
-- retirado RT9078 | cedula 1098632981
UPDATE retirado SET fecha_ingreso = '09/03/2016', fecha_retiro = '09/02/2017' WHERE id_retiro = 'RT9078' AND id_cedula = '1098632981';
-- retirado RT2196 | cedula 1098632981
UPDATE retirado SET fecha_ingreso = '06/10/2020', fecha_retiro = '28/04/2021' WHERE id_retiro = 'RT2196' AND id_cedula = '1098632981';
-- retirado RT3547 | cedula 1102725515
UPDATE retirado SET fecha_ingreso = '02/05/2022', fecha_retiro = '13/10/2022' WHERE id_retiro = 'RT3547' AND id_cedula = '1102725515';
-- retirado RT3454 | cedula 1095788981
UPDATE retirado SET fecha_ingreso = '17/04/2017', fecha_retiro = '01/01/2018' WHERE id_retiro = 'RT3454' AND id_cedula = '1095788981';
-- retirado RT4398 | cedula 1099372186
UPDATE retirado SET fecha_ingreso = '11/02/2019', fecha_retiro = '05/01/2021' WHERE id_retiro = 'RT4398' AND id_cedula = '1099372186';
-- retirado RT5201 | cedula 1099372186
UPDATE retirado SET fecha_ingreso = '04/03/2021', fecha_retiro = '13/03/2021' WHERE id_retiro = 'RT5201' AND id_cedula = '1099372186';
-- retirado RT5815 | cedula 91185482
UPDATE retirado SET fecha_ingreso = '26/09/2013' WHERE id_retiro = 'RT5815' AND id_cedula = '91185482';
-- retirado RT3777 | cedula 91424796
UPDATE retirado SET fecha_ingreso = '05/11/2015' WHERE id_retiro = 'RT3777' AND id_cedula = '91424796';
-- retirado RT3285 | cedula 1007917729
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '13/10/2020' WHERE id_retiro = 'RT3285' AND id_cedula = '1007917729';
-- retirado RT9644 | cedula 91467288
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '05/01/2018' WHERE id_retiro = 'RT9644' AND id_cedula = '91467288';
-- retirado RT7607 | cedula 1102714371
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '19/05/2014' WHERE id_retiro = 'RT7607' AND id_cedula = '1102714371';
-- retirado RT6731 | cedula 91348527
UPDATE retirado SET fecha_ingreso = '06/11/2014', fecha_retiro = '06/10/2020' WHERE id_retiro = 'RT6731' AND id_cedula = '91348527';
-- retirado RT1751 | cedula 1102391208
UPDATE retirado SET fecha_ingreso = '18/02/2021', fecha_retiro = '20/08/2021' WHERE id_retiro = 'RT1751' AND id_cedula = '1102391208';
-- retirado RT4362 | cedula 1102725251
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '03/10/2022' WHERE id_retiro = 'RT4362' AND id_cedula = '1102725251';
-- retirado RT8713 | cedula 91518638
UPDATE retirado SET fecha_ingreso = '04/12/2014' WHERE id_retiro = 'RT8713' AND id_cedula = '91518638';
-- retirado RT4308 | cedula 95121703425
UPDATE retirado SET fecha_ingreso = '13/09/2013' WHERE id_retiro = 'RT4308' AND id_cedula = '95121703425';
-- retirado RT3006 | cedula 1095802403
UPDATE retirado SET fecha_ingreso = '16/07/2019', fecha_retiro = '18/07/2019' WHERE id_retiro = 'RT3006' AND id_cedula = '1095802403';
-- retirado RT3804 | cedula 63539104
UPDATE retirado SET fecha_ingreso = '15/04/2013', fecha_retiro = '16/08/2014' WHERE id_retiro = 'RT3804' AND id_cedula = '63539104';
-- retirado RT7802 | cedula 63337445
UPDATE retirado SET fecha_ingreso = '17/10/2014', fecha_retiro = '09/02/2016' WHERE id_retiro = 'RT7802' AND id_cedula = '63337445';
-- retirado RT8327 | cedula 91517416
UPDATE retirado SET fecha_ingreso = '10/11/2021', fecha_retiro = '19/11/2021' WHERE id_retiro = 'RT8327' AND id_cedula = '91517416';
-- retirado RT2943 | cedula 1004823930
UPDATE retirado SET fecha_ingreso = '08/11/2021', fecha_retiro = '01/07/2023' WHERE id_retiro = 'RT2943' AND id_cedula = '1004823930';
-- retirado RT5543 | cedula 1095941897
UPDATE retirado SET fecha_ingreso = '10/10/2017', fecha_retiro = '27/05/2019' WHERE id_retiro = 'RT5543' AND id_cedula = '1095941897';
-- retirado RT8672 | cedula 1098356684
UPDATE retirado SET fecha_ingreso = '09/02/2015', fecha_retiro = '15/03/2015' WHERE id_retiro = 'RT8672' AND id_cedula = '1098356684';
-- retirado RT8556 | cedula 91533656
UPDATE retirado SET fecha_ingreso = '21/10/2014' WHERE id_retiro = 'RT8556' AND id_cedula = '91533656';
-- retirado RT4260 | cedula 91154888
UPDATE retirado SET fecha_ingreso = '16/05/2013' WHERE id_retiro = 'RT4260' AND id_cedula = '91154888';
-- retirado RT2626 | cedula 1098757420
UPDATE retirado SET fecha_ingreso = '10/06/2021', fecha_retiro = '10/08/2021' WHERE id_retiro = 'RT2626' AND id_cedula = '1098757420';
-- retirado RT7314 | cedula 1005299754
UPDATE retirado SET fecha_retiro = '05/06/2021' WHERE id_retiro = 'RT7314' AND id_cedula = '1005299754';
-- retirado RT5390 | cedula 1098739333
UPDATE retirado SET fecha_ingreso = '18/08/2016', fecha_retiro = '12/04/2017' WHERE id_retiro = 'RT5390' AND id_cedula = '1098739333';
-- retirado RT9840 | cedula 91536065
UPDATE retirado SET fecha_ingreso = '01/05/2022', fecha_retiro = '30/04/2022' WHERE id_retiro = 'RT9840' AND id_cedula = '91536065';
-- retirado RT2985 | cedula 91353814
UPDATE retirado SET fecha_ingreso = '24/09/2014' WHERE id_retiro = 'RT2985' AND id_cedula = '91353814';
-- retirado RT2868 | cedula 1005136808
UPDATE retirado SET fecha_ingreso = '19/07/2022', fecha_retiro = '19/01/2023' WHERE id_retiro = 'RT2868' AND id_cedula = '1005136808';
-- retirado RT2432 | cedula 77092856
UPDATE retirado SET fecha_ingreso = '11/04/2013', fecha_retiro = '15/04/2014' WHERE id_retiro = 'RT2432' AND id_cedula = '77092856';
-- retirado RT8844 | cedula 91185789
UPDATE retirado SET fecha_ingreso = '16/11/2013', fecha_retiro = '15/01/2014' WHERE id_retiro = 'RT8844' AND id_cedula = '91185789';
-- retirado RT6270 | cedula 91363246
UPDATE retirado SET fecha_ingreso = '23/01/2014' WHERE id_retiro = 'RT6270' AND id_cedula = '91363246';
-- retirado RT6800 | cedula 1095956478
UPDATE retirado SET fecha_ingreso = '09/10/2020', fecha_retiro = '01/11/2020' WHERE id_retiro = 'RT6800' AND id_cedula = '1095956478';
-- retirado RT2342 | cedula 1095918375
UPDATE retirado SET fecha_ingreso = '12/02/2014', fecha_retiro = '30/11/2018' WHERE id_retiro = 'RT2342' AND id_cedula = '1095918375';
-- retirado RT3257 | cedula 1099215398
UPDATE retirado SET fecha_ingreso = '01/12/2019', fecha_retiro = '12/05/2022' WHERE id_retiro = 'RT3257' AND id_cedula = '1099215398';
-- retirado RT5331 | cedula 1005448250
UPDATE retirado SET fecha_ingreso = '12/05/2022', fecha_retiro = '03/04/2023' WHERE id_retiro = 'RT5331' AND id_cedula = '1005448250';
-- retirado RT6337 | cedula 1095952994
UPDATE retirado SET fecha_ingreso = '26/01/2019', fecha_retiro = '11/12/2020' WHERE id_retiro = 'RT6337' AND id_cedula = '1095952994';
-- retirado RT7102 | cedula 1095792575
UPDATE retirado SET fecha_ingreso = '25/05/2013', fecha_retiro = '01/01/2018' WHERE id_retiro = 'RT7102' AND id_cedula = '1095792575';
-- retirado RT1757 | cedula 1095792575
UPDATE retirado SET fecha_ingreso = '15/10/2018', fecha_retiro = '20/10/2018' WHERE id_retiro = 'RT1757' AND id_cedula = '1095792575';
-- retirado RT6156 | cedula 1091671182
UPDATE retirado SET fecha_ingreso = '17/11/2017', fecha_retiro = '19/11/2018' WHERE id_retiro = 'RT6156' AND id_cedula = '1091671182';
-- retirado RT9780 | cedula 1095806839
UPDATE retirado SET fecha_ingreso = '01/07/2016' WHERE id_retiro = 'RT9780' AND id_cedula = '1095806839';
-- retirado RT2707 | cedula 13746151
UPDATE retirado SET fecha_ingreso = '04/07/2014', fecha_retiro = '24/03/2017' WHERE id_retiro = 'RT2707' AND id_cedula = '13746151';
-- retirado RT6749 | cedula 1005157758
UPDATE retirado SET fecha_retiro = '14/03/2022' WHERE id_retiro = 'RT6749' AND id_cedula = '1005157758';
-- retirado RT5029 | cedula 1066063030
UPDATE retirado SET fecha_ingreso = '01/03/2017', fecha_retiro = '21/05/2018' WHERE id_retiro = 'RT5029' AND id_cedula = '1066063030';
-- retirado RT7507 | cedula 1102378371
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '04/12/2018' WHERE id_retiro = 'RT7507' AND id_cedula = '1102378371';
-- retirado RT2575 | cedula 1099622387
UPDATE retirado SET fecha_ingreso = '23/09/2020', fecha_retiro = '17/10/2020' WHERE id_retiro = 'RT2575' AND id_cedula = '1099622387';
-- retirado RT6817 | cedula 1098357711
UPDATE retirado SET fecha_ingreso = '20/11/2015' WHERE id_retiro = 'RT6817' AND id_cedula = '1098357711';
-- retirado RT6841 | cedula 1005325403
UPDATE retirado SET fecha_ingreso = '20/09/2022', fecha_retiro = '01/10/2022' WHERE id_retiro = 'RT6841' AND id_cedula = '1005325403';
-- retirado RT6493 | cedula 1095907091
UPDATE retirado SET fecha_ingreso = '16/06/2023', fecha_retiro = '05/07/2023' WHERE id_retiro = 'RT6493' AND id_cedula = '1095907091';
-- retirado RT4102 | cedula 13544593
UPDATE retirado SET fecha_ingreso = '07/01/2016', fecha_retiro = '06/07/2016' WHERE id_retiro = 'RT4102' AND id_cedula = '13544593';
-- retirado RT7394 | cedula 2081730
UPDATE retirado SET fecha_ingreso = '24/12/2013', fecha_retiro = '23/03/2014' WHERE id_retiro = 'RT7394' AND id_cedula = '2081730';
-- retirado RT3386 | cedula 1232892424
UPDATE retirado SET fecha_ingreso = '16/06/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = 'RT3386' AND id_cedula = '1232892424';
-- retirado RT4986 | cedula 1095950936
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '28/02/2021' WHERE id_retiro = 'RT4986' AND id_cedula = '1095950936';
-- retirado RT3734 | cedula 1095809899
UPDATE retirado SET fecha_ingreso = '18/07/2019', fecha_retiro = '18/07/2019' WHERE id_retiro = 'RT3734' AND id_cedula = '1095809899';
-- retirado RT2054 | cedula 11448882
UPDATE retirado SET fecha_ingreso = '23/06/2010', fecha_retiro = '23/06/2010' WHERE id_retiro = 'RT2054' AND id_cedula = '11448882';
-- retirado RT6722 | cedula 1095819172
UPDATE retirado SET fecha_ingreso = '09/05/2023', fecha_retiro = '11/05/2023' WHERE id_retiro = 'RT6722' AND id_cedula = '1095819172';
-- retirado RT3665 | cedula 13872749
UPDATE retirado SET fecha_ingreso = '22/09/2017', fecha_retiro = '02/12/2017' WHERE id_retiro = 'RT3665' AND id_cedula = '13872749';
-- retirado RT2089 | cedula 4885921
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '30/09/2022' WHERE id_retiro = 'RT2089' AND id_cedula = '4885921';
-- retirado RT6931 | cedula 908097000000000
UPDATE retirado SET fecha_ingreso = '08/09/2020', fecha_retiro = '10/09/2020' WHERE id_retiro = 'RT6931' AND id_cedula = '908097000000000';
-- retirado RT2041 | cedula 1098697292
UPDATE retirado SET fecha_ingreso = '17/06/2014', fecha_retiro = '04/05/2019' WHERE id_retiro = 'RT2041' AND id_cedula = '1098697292';
-- retirado RT4035 | cedula 1098697292
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '10/09/2023' WHERE id_retiro = 'RT4035' AND id_cedula = '1098697292';
-- retirado RT4003 | cedula 1095927116
UPDATE retirado SET fecha_ingreso = '12/09/2019', fecha_retiro = '15/01/2020' WHERE id_retiro = 'RT4003' AND id_cedula = '1095927116';
-- retirado RT2473 | cedula 1096957994
UPDATE retirado SET fecha_ingreso = '01/06/2021', fecha_retiro = '06/05/2023' WHERE id_retiro = 'RT2473' AND id_cedula = '1096957994';
-- retirado RT5315 | cedula 95092721923
UPDATE retirado SET fecha_ingreso = '01/09/2013', fecha_retiro = '09/03/2014' WHERE id_retiro = 'RT5315' AND id_cedula = '95092721923';
-- retirado RT8251 | cedula 1095909817
UPDATE retirado SET fecha_ingreso = '08/02/2016', fecha_retiro = '27/02/2016' WHERE id_retiro = 'RT8251' AND id_cedula = '1095909817';
-- retirado RT8531 | cedula 1095950229
UPDATE retirado SET fecha_ingreso = '27/09/2021', fecha_retiro = '28/08/2023' WHERE id_retiro = 'RT8531' AND id_cedula = '1095950229';
-- retirado RT8682 | cedula 1090384267
UPDATE retirado SET fecha_ingreso = '04/02/2014', fecha_retiro = '30/01/2015' WHERE id_retiro = 'RT8682' AND id_cedula = '1090384267';
-- retirado RT2650 | cedula 1193094051
UPDATE retirado SET fecha_ingreso = '19/10/2020', fecha_retiro = '21/10/2020' WHERE id_retiro = 'RT2650' AND id_cedula = '1193094051';
-- retirado RT2707 | cedula 1095914971
UPDATE retirado SET fecha_ingreso = '10/05/2013' WHERE id_retiro = 'RT2707' AND id_cedula = '1095914971';
-- retirado RT9554 | cedula 1007740648
UPDATE retirado SET fecha_ingreso = '28/12/2018', fecha_retiro = '04/02/2022' WHERE id_retiro = 'RT9554' AND id_cedula = '1007740648';
-- retirado RT4989 | cedula 1120374907
UPDATE retirado SET fecha_ingreso = '08/02/2016' WHERE id_retiro = 'RT4989' AND id_cedula = '1120374907';
-- retirado RT8435 | cedula 10077679366
UPDATE retirado SET fecha_ingreso = '09/03/2022', fecha_retiro = '09/03/2022' WHERE id_retiro = 'RT8435' AND id_cedula = '10077679366';
-- retirado RT6941 | cedula 1050921309
UPDATE retirado SET fecha_ingreso = '01/02/2019', fecha_retiro = '08/08/2019' WHERE id_retiro = 'RT6941' AND id_cedula = '1050921309';
-- retirado RT1543 | cedula 91467429
UPDATE retirado SET fecha_ingreso = '08/02/2013' WHERE id_retiro = 'RT1543' AND id_cedula = '91467429';
-- retirado RT4521 | cedula 1095821450
UPDATE retirado SET fecha_ingreso = '22/09/2023', fecha_retiro = '21/11/2023' WHERE id_retiro = 'RT4521' AND id_cedula = '1095821450';
-- retirado RT2267 | cedula 1098628868
UPDATE retirado SET fecha_ingreso = '05/04/2013', fecha_retiro = '15/02/2016' WHERE id_retiro = 'RT2267' AND id_cedula = '1098628868';
-- retirado RT4257 | cedula 1095949394
UPDATE retirado SET fecha_ingreso = '26/09/2022', fecha_retiro = '05/12/2022' WHERE id_retiro = 'RT4257' AND id_cedula = '1095949394';
-- retirado RT7253 | cedula 1005154487
UPDATE retirado SET fecha_ingreso = '25/02/2019', fecha_retiro = '25/08/2019' WHERE id_retiro = 'RT7253' AND id_cedula = '1005154487';
-- retirado RT8497 | cedula 19685159
UPDATE retirado SET fecha_ingreso = '06/11/2014', fecha_retiro = '01/01/2015' WHERE id_retiro = 'RT8497' AND id_cedula = '19685159';
-- retirado RT8106 | cedula 1098758625
UPDATE retirado SET fecha_ingreso = '10/04/2018', fecha_retiro = '09/01/2019' WHERE id_retiro = 'RT8106' AND id_cedula = '1098758625';
-- retirado RT5415 | cedula 1098758625
UPDATE retirado SET fecha_ingreso = '27/12/2021', fecha_retiro = '01/01/2022' WHERE id_retiro = 'RT5415' AND id_cedula = '1098758625';
-- retirado RT8529 | cedula 1098816614
UPDATE retirado SET fecha_ingreso = '18/09/2019', fecha_retiro = '26/03/2021' WHERE id_retiro = 'RT8529' AND id_cedula = '1098816614';
-- retirado RT2323 | cedula 1098816614
UPDATE retirado SET fecha_ingreso = '03/01/2023', fecha_retiro = '15/01/2023' WHERE id_retiro = 'RT2323' AND id_cedula = '1098816614';
-- retirado RT7171 | cedula 1098645540
UPDATE retirado SET fecha_ingreso = '05/01/2014', fecha_retiro = '26/03/2014' WHERE id_retiro = 'RT7171' AND id_cedula = '1098645540';
-- retirado RT7427 | cedula 1098604561
UPDATE retirado SET fecha_ingreso = '11/01/2014', fecha_retiro = '11/01/2014' WHERE id_retiro = 'RT7427' AND id_cedula = '1098604561';
-- retirado RT2102 | cedula 1102377583
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '06/08/2022' WHERE id_retiro = 'RT2102' AND id_cedula = '1102377583';
-- retirado RT3829 | cedula 1050546330
UPDATE retirado SET fecha_ingreso = '17/06/2015' WHERE id_retiro = 'RT3829' AND id_cedula = '1050546330';
-- retirado RT4760 | cedula 4252864
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '04/09/2018' WHERE id_retiro = 'RT4760' AND id_cedula = '4252864';
-- retirado RT4965 | cedula 88214746
UPDATE retirado SET fecha_ingreso = '29/01/2014' WHERE id_retiro = 'RT4965' AND id_cedula = '88214746';
-- retirado RT1539 | cedula 1093884473
UPDATE retirado SET fecha_ingreso = '10/09/2016', fecha_retiro = '30/06/2018' WHERE id_retiro = 'RT1539' AND id_cedula = '1093884473';
-- retirado RT3451 | cedula 91177708
UPDATE retirado SET fecha_ingreso = '05/11/2013' WHERE id_retiro = 'RT3451' AND id_cedula = '91177708';
-- retirado RT8280 | cedula 1098626235
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '10/10/2020' WHERE id_retiro = 'RT8280' AND id_cedula = '1098626235';
-- retirado RT3515 | cedula 1098626235
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '10/10/2020' WHERE id_retiro = 'RT3515' AND id_cedula = '1098626235';
-- retirado RT9287 | cedula 1073672734
UPDATE retirado SET fecha_ingreso = '13/11/2013', fecha_retiro = '25/06/2014' WHERE id_retiro = 'RT9287' AND id_cedula = '1073672734';
-- retirado RT6560 | cedula 1098700957
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '18/11/2023' WHERE id_retiro = 'RT6560' AND id_cedula = '1098700957';
-- retirado RT4459 | cedula 1095940472
UPDATE retirado SET fecha_ingreso = '27/11/2023', fecha_retiro = '10/01/2024' WHERE id_retiro = 'RT4459' AND id_cedula = '1095940472';
-- retirado RT2636 | cedula 3085315
UPDATE retirado SET fecha_ingreso = '11/07/2023', fecha_retiro = '15/07/2023' WHERE id_retiro = 'RT2636' AND id_cedula = '3085315';
-- retirado RT6101 | cedula 91540947
UPDATE retirado SET fecha_ingreso = '09/01/2014', fecha_retiro = '02/01/2019' WHERE id_retiro = 'RT6101' AND id_cedula = '91540947';
-- retirado RT7792 | cedula 91185275
UPDATE retirado SET fecha_ingreso = '01/11/2014', fecha_retiro = '26/09/2019' WHERE id_retiro = 'RT7792' AND id_cedula = '91185275';
-- retirado RT9733 | cedula 1098702208
UPDATE retirado SET fecha_ingreso = '25/08/2017', fecha_retiro = '25/04/2018' WHERE id_retiro = 'RT9733' AND id_cedula = '1098702208';
-- retirado RT1805 | cedula 1098721078
UPDATE retirado SET fecha_ingreso = '04/05/2021', fecha_retiro = '04/06/2021' WHERE id_retiro = 'RT1805' AND id_cedula = '1098721078';
-- retirado RT5309 | cedula 1192911383
UPDATE retirado SET fecha_ingreso = '29/07/2019', fecha_retiro = '19/08/2021' WHERE id_retiro = 'RT5309' AND id_cedula = '1192911383';
-- retirado RT8411 | cedula 1102380827
UPDATE retirado SET fecha_ingreso = '06/07/2018', fecha_retiro = '02/01/2024' WHERE id_retiro = 'RT8411' AND id_cedula = '1102380827';
-- retirado RT1641 | cedula 1095909939
UPDATE retirado SET fecha_ingreso = '09/02/2022', fecha_retiro = '04/07/2022' WHERE id_retiro = 'RT1641' AND id_cedula = '1095909939';
-- retirado RT7465 | cedula 1007773693
UPDATE retirado SET fecha_ingreso = '24/07/2019', fecha_retiro = '23/03/2020' WHERE id_retiro = 'RT7465' AND id_cedula = '1007773693';
-- retirado RT2774 | cedula 1007784687
UPDATE retirado SET fecha_ingreso = '25/10/2021', fecha_retiro = '26/06/2022' WHERE id_retiro = 'RT2774' AND id_cedula = '1007784687';
-- retirado RT4934 | cedula 1065232181
UPDATE retirado SET fecha_ingreso = '08/02/2016', fecha_retiro = '11/12/2017' WHERE id_retiro = 'RT4934' AND id_cedula = '1065232181';
-- retirado RT8132 | cedula 1193360503
UPDATE retirado SET fecha_ingreso = '22/02/2017', fecha_retiro = '15/06/2017' WHERE id_retiro = 'RT8132' AND id_cedula = '1193360503';
-- retirado RT2938 | cedula 1096214357
UPDATE retirado SET fecha_ingreso = '23/03/2022', fecha_retiro = '30/03/2022' WHERE id_retiro = 'RT2938' AND id_cedula = '1096214357';
-- retirado RT3041 | cedula 1098771486
UPDATE retirado SET fecha_ingreso = '15/02/2018', fecha_retiro = '30/10/2018' WHERE id_retiro = 'RT3041' AND id_cedula = '1098771486';
-- retirado RT5556 | cedula 1005541986
UPDATE retirado SET fecha_ingreso = '21/11/2023', fecha_retiro = '06/12/2023' WHERE id_retiro = 'RT5556' AND id_cedula = '1005541986';
-- retirado RT6717 | cedula 1098708677
UPDATE retirado SET fecha_ingreso = '10/10/2017', fecha_retiro = '09/12/2017' WHERE id_retiro = 'RT6717' AND id_cedula = '1098708677';
-- retirado RT9487 | cedula 1005321409
UPDATE retirado SET fecha_ingreso = '26/10/2015' WHERE id_retiro = 'RT9487' AND id_cedula = '1005321409';
-- retirado RT4689 | cedula 1140814254
UPDATE retirado SET fecha_ingreso = '10/10/2017', fecha_retiro = '09/12/2017' WHERE id_retiro = 'RT4689' AND id_cedula = '1140814254';
-- retirado RT8804 | cedula 1095915699
UPDATE retirado SET fecha_ingreso = '21/08/2015' WHERE id_retiro = 'RT8804' AND id_cedula = '1095915699';
-- retirado RT2650 | cedula 1095811648
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '15/10/2020' WHERE id_retiro = 'RT2650' AND id_cedula = '1095811648';
-- retirado RT3582 | cedula 1007764469
UPDATE retirado SET fecha_ingreso = '20/05/2021', fecha_retiro = '19/09/2021' WHERE id_retiro = 'RT3582' AND id_cedula = '1007764469';
-- retirado RT8945 | cedula 1102372376
UPDATE retirado SET fecha_ingreso = '06/10/2016', fecha_retiro = '05/09/2017' WHERE id_retiro = 'RT8945' AND id_cedula = '1102372376';
-- retirado RT1614 | cedula 1005153680
UPDATE retirado SET fecha_ingreso = '25/04/2023', fecha_retiro = '09/01/2024' WHERE id_retiro = 'RT1614' AND id_cedula = '1005153680';
-- retirado RT7537 | cedula 1098781354
UPDATE retirado SET fecha_ingreso = '02/08/2016', fecha_retiro = '15/06/2020' WHERE id_retiro = 'RT7537' AND id_cedula = '1098781354';
-- retirado RT4314 | cedula 1098825946
UPDATE retirado SET fecha_ingreso = '14/09/2020', fecha_retiro = '14/09/2022' WHERE id_retiro = 'RT4314' AND id_cedula = '1098825946';
-- retirado RT4634 | cedula 1095952230
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '12/09/2021' WHERE id_retiro = 'RT4634' AND id_cedula = '1095952230';
-- retirado RT9748 | cedula 1098790239
UPDATE retirado SET fecha_ingreso = '19/08/2020', fecha_retiro = '17/09/2020' WHERE id_retiro = 'RT9748' AND id_cedula = '1098790239';
-- retirado RT1784 | cedula 1095917663
UPDATE retirado SET fecha_ingreso = '04/07/2014' WHERE id_retiro = 'RT1784' AND id_cedula = '1095917663';
-- retirado RT5662 | cedula 1102373962
UPDATE retirado SET fecha_ingreso = '08/04/2016', fecha_retiro = '30/10/2016' WHERE id_retiro = 'RT5662' AND id_cedula = '1102373962';
-- retirado RT7196 | cedula 1065595423
UPDATE retirado SET fecha_ingreso = '09/07/2016' WHERE id_retiro = 'RT7196' AND id_cedula = '1065595423';
-- retirado RT2584 | cedula 1098705242
UPDATE retirado SET fecha_ingreso = '16/01/2018', fecha_retiro = '28/02/2019' WHERE id_retiro = 'RT2584' AND id_cedula = '1098705242';
-- retirado RT6254 | cedula 1098699870
UPDATE retirado SET fecha_ingreso = '02/05/2013', fecha_retiro = '15/01/2015' WHERE id_retiro = 'RT6254' AND id_cedula = '1098699870';
-- retirado RT4885 | cedula 1122134258
UPDATE retirado SET fecha_ingreso = '16/04/2013' WHERE id_retiro = 'RT4885' AND id_cedula = '1122134258';
-- retirado RT2750 | cedula 1098716179
UPDATE retirado SET fecha_ingreso = '22/11/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT2750' AND id_cedula = '1098716179';
-- retirado RT7171 | cedula 1005336305
UPDATE retirado SET fecha_ingreso = '24/05/2022', fecha_retiro = '08/06/2022' WHERE id_retiro = 'RT7171' AND id_cedula = '1005336305';
-- retirado RT7754 | cedula 1095952072
UPDATE retirado SET fecha_ingreso = '01/02/2019', fecha_retiro = '31/07/2019' WHERE id_retiro = 'RT7754' AND id_cedula = '1095952072';
-- retirado RT8160 | cedula 1098807906
UPDATE retirado SET fecha_ingreso = '16/08/2022', fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT8160' AND id_cedula = '1098807906';
-- retirado RT6446 | cedula 1098807906
UPDATE retirado SET fecha_ingreso = '16/08/2022', fecha_retiro = '18/07/2023' WHERE id_retiro = 'RT6446' AND id_cedula = '1098807906';
-- retirado RT9403 | cedula 1098713666
UPDATE retirado SET fecha_ingreso = '13/05/2021', fecha_retiro = '30/06/2021' WHERE id_retiro = 'RT9403' AND id_cedula = '1098713666';
-- retirado RT8339 | cedula 1098761480
UPDATE retirado SET fecha_ingreso = '01/02/2019', fecha_retiro = '12/11/2020' WHERE id_retiro = 'RT8339' AND id_cedula = '1098761480';
-- retirado RT8183 | cedula 1098748935
UPDATE retirado SET fecha_ingreso = '28/12/2013', fecha_retiro = '19/03/2014' WHERE id_retiro = 'RT8183' AND id_cedula = '1098748935';
-- retirado RT7503 | cedula 1005364907
UPDATE retirado SET fecha_ingreso = '14/05/2019', fecha_retiro = '11/07/2019' WHERE id_retiro = 'RT7503' AND id_cedula = '1005364907';
-- retirado RT8690 | cedula 1094266549
UPDATE retirado SET fecha_ingreso = '04/05/2021', fecha_retiro = '01/04/2022' WHERE id_retiro = 'RT8690' AND id_cedula = '1094266549';
-- retirado RT3745 | cedula 5425331
UPDATE retirado SET fecha_ingreso = '21/12/2023', fecha_retiro = '22/12/2023' WHERE id_retiro = 'RT3745' AND id_cedula = '5425331';
-- retirado RT7498 | cedula 1102366087
UPDATE retirado SET fecha_ingreso = '18/07/2013', fecha_retiro = '03/11/2013' WHERE id_retiro = 'RT7498' AND id_cedula = '1102366087';
-- retirado RT3735 | cedula 91463157
UPDATE retirado SET fecha_ingreso = '30/08/2013', fecha_retiro = '18/01/2019' WHERE id_retiro = 'RT3735' AND id_cedula = '91463157';
-- retirado RT8605 | cedula 91261256
UPDATE retirado SET fecha_retiro = '05/10/2021' WHERE id_retiro = 'RT8605' AND id_cedula = '91261256';
-- retirado RT4208 | cedula 13542746
UPDATE retirado SET fecha_ingreso = '25/01/2014' WHERE id_retiro = 'RT4208' AND id_cedula = '13542746';
-- retirado RT2380 | cedula 1098632619
UPDATE retirado SET fecha_ingreso = '18/05/2020', fecha_retiro = '09/10/2020' WHERE id_retiro = 'RT2380' AND id_cedula = '1098632619';
-- retirado RT7252 | cedula 91512961
UPDATE retirado SET fecha_ingreso = '14/08/2013', fecha_retiro = '22/04/2019' WHERE id_retiro = 'RT7252' AND id_cedula = '91512961';
-- retirado RT8437 | cedula 1098641318
UPDATE retirado SET fecha_ingreso = '24/03/2021', fecha_retiro = '24/05/2021' WHERE id_retiro = 'RT8437' AND id_cedula = '1098641318';
-- retirado RT7440 | cedula 1005336732
UPDATE retirado SET fecha_ingreso = '03/12/2018', fecha_retiro = '30/12/2018' WHERE id_retiro = 'RT7440' AND id_cedula = '1005336732';
-- retirado RT8870 | cedula 1095806171
UPDATE retirado SET fecha_ingreso = '01/07/2013' WHERE id_retiro = 'RT8870' AND id_cedula = '1095806171';
-- retirado RT4168 | cedula 12459860
UPDATE retirado SET fecha_ingreso = '07/10/2014', fecha_retiro = '02/12/2020' WHERE id_retiro = 'RT4168' AND id_cedula = '12459860';
-- retirado RT3436 | cedula 13724716
UPDATE retirado SET fecha_ingreso = '05/06/2015' WHERE id_retiro = 'RT3436' AND id_cedula = '13724716';
-- retirado RT6907 | cedula 1098676057
UPDATE retirado SET fecha_ingreso = '12/02/2013', fecha_retiro = '14/10/2018' WHERE id_retiro = 'RT6907' AND id_cedula = '1098676057';
-- retirado RT5232 | cedula 1098731452
UPDATE retirado SET fecha_ingreso = '08/02/2018', fecha_retiro = '24/10/2018' WHERE id_retiro = 'RT5232' AND id_cedula = '1098731452';
-- retirado RT8710 | cedula 1098731452
UPDATE retirado SET fecha_ingreso = '15/12/2014' WHERE id_retiro = 'RT8710' AND id_cedula = '1098731452';
-- retirado RT1722 | cedula 1095298644
UPDATE retirado SET fecha_ingreso = '20/10/2022', fecha_retiro = '19/10/2022' WHERE id_retiro = 'RT1722' AND id_cedula = '1095298644';
-- retirado RT5467 | cedula 6404018
UPDATE retirado SET fecha_ingreso = '02/05/2022', fecha_retiro = '15/11/2022' WHERE id_retiro = 'RT5467' AND id_cedula = '6404018';
-- retirado RT3840 | cedula 1102361434
UPDATE retirado SET fecha_retiro = '30/09/2022' WHERE id_retiro = 'RT3840' AND id_cedula = '1102361434';
-- retirado RT7532 | cedula 1007769879
UPDATE retirado SET fecha_ingreso = '27/09/2021', fecha_retiro = '19/08/2023' WHERE id_retiro = 'RT7532' AND id_cedula = '1007769879';
-- retirado RT9719 | cedula 1005272534
UPDATE retirado SET fecha_ingreso = '07/06/2019', fecha_retiro = '11/08/2020' WHERE id_retiro = 'RT9719' AND id_cedula = '1005272534';
-- retirado RT3539 | cedula 1005272534
UPDATE retirado SET fecha_ingreso = '06/10/2020', fecha_retiro = '27/11/2020' WHERE id_retiro = 'RT3539' AND id_cedula = '1005272534';
-- retirado RT5454 | cedula 1005109317
UPDATE retirado SET fecha_ingreso = '13/12/2019', fecha_retiro = '23/07/2020' WHERE id_retiro = 'RT5454' AND id_cedula = '1005109317';
-- retirado RT4561 | cedula 1005109317
UPDATE retirado SET fecha_ingreso = '12/08/2020', fecha_retiro = '12/08/2020' WHERE id_retiro = 'RT4561' AND id_cedula = '1005109317';
-- retirado RT8350 | cedula 1005334341
UPDATE retirado SET fecha_ingreso = '23/01/2019', fecha_retiro = '17/10/2020' WHERE id_retiro = 'RT8350' AND id_cedula = '1005334341';
-- retirado RT5074 | cedula 1005334341
UPDATE retirado SET fecha_ingreso = '11/05/2021', fecha_retiro = '02/01/2022' WHERE id_retiro = 'RT5074' AND id_cedula = '1005334341';
-- retirado RT2820 | cedula 1005163223
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '15/06/2022' WHERE id_retiro = 'RT2820' AND id_cedula = '1005163223';
-- retirado RT6538 | cedula 1096248201
UPDATE retirado SET fecha_ingreso = '01/08/2019', fecha_retiro = '01/02/2020' WHERE id_retiro = 'RT6538' AND id_cedula = '1096248201';
-- retirado RT8430 | cedula 1096248201
UPDATE retirado SET fecha_ingreso = '16/12/2020', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT8430' AND id_cedula = '1096248201';
-- retirado RT7139 | cedula 1087132070
UPDATE retirado SET fecha_ingreso = '06/09/2014' WHERE id_retiro = 'RT7139' AND id_cedula = '1087132070';
-- retirado RT7526 | cedula 1098810995
UPDATE retirado SET fecha_ingreso = '16/10/2020', fecha_retiro = '20/04/2022' WHERE id_retiro = 'RT7526' AND id_cedula = '1098810995';
-- retirado RT9468 | cedula 1062813058
UPDATE retirado SET fecha_ingreso = '23/08/2021', fecha_retiro = '24/08/2021' WHERE id_retiro = 'RT9468' AND id_cedula = '1062813058';
-- retirado RT2719 | cedula 1232894792
UPDATE retirado SET fecha_ingreso = '14/10/2020', fecha_retiro = '12/10/2023' WHERE id_retiro = 'RT2719' AND id_cedula = '1232894792';
-- retirado RT1851 | cedula 1098726762
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '05/01/2021' WHERE id_retiro = 'RT1851' AND id_cedula = '1098726762';
-- retirado RT8542 | cedula 1098716436
UPDATE retirado SET fecha_ingreso = '12/09/2019', fecha_retiro = '20/08/2021' WHERE id_retiro = 'RT8542' AND id_cedula = '1098716436';
-- retirado RT7212 | cedula 1098767584
UPDATE retirado SET fecha_ingreso = '19/10/2022', fecha_retiro = '04/11/2022' WHERE id_retiro = 'RT7212' AND id_cedula = '1098767584';
-- retirado RT6681 | cedula 1142915174
UPDATE retirado SET fecha_ingreso = '19/09/2023', fecha_retiro = '18/11/2023' WHERE id_retiro = 'RT6681' AND id_cedula = '1142915174';
-- retirado RT8691 | cedula 1098791772
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '21/10/2023' WHERE id_retiro = 'RT8691' AND id_cedula = '1098791772';
-- retirado RT4195 | cedula 1065577704
UPDATE retirado SET fecha_ingreso = '18/09/2018', fecha_retiro = '12/08/2023' WHERE id_retiro = 'RT4195' AND id_cedula = '1065577704';
-- retirado RT5121 | cedula 1004818160
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '14/09/2022' WHERE id_retiro = 'RT5121' AND id_cedula = '1004818160';
-- retirado RT9496 | cedula 91494743
UPDATE retirado SET fecha_ingreso = '18/08/2013', fecha_retiro = '20/06/2014' WHERE id_retiro = 'RT9496' AND id_cedula = '91494743';
-- retirado RT8928 | cedula 1104136006
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '04/11/2022' WHERE id_retiro = 'RT8928' AND id_cedula = '1104136006';
-- retirado RT4256 | cedula 1095942917
UPDATE retirado SET fecha_ingreso = '11/07/2019', fecha_retiro = '09/09/2019' WHERE id_retiro = 'RT4256' AND id_cedula = '1095942917';
-- retirado RT2470 | cedula 1098764805
UPDATE retirado SET fecha_ingreso = '13/08/2019', fecha_retiro = '03/08/2020' WHERE id_retiro = 'RT2470' AND id_cedula = '1098764805';
-- retirado RT3361 | cedula 1005188222
UPDATE retirado SET fecha_ingreso = '28/08/2019', fecha_retiro = '15/05/2020' WHERE id_retiro = 'RT3361' AND id_cedula = '1005188222';
-- retirado RT9385 | cedula 1005188222
UPDATE retirado SET fecha_ingreso = '20/05/2021', fecha_retiro = '03/11/2023' WHERE id_retiro = 'RT9385' AND id_cedula = '1005188222';
-- retirado RT6975 | cedula 77180735
UPDATE retirado SET fecha_ingreso = '14/01/2014' WHERE id_retiro = 'RT6975' AND id_cedula = '77180735';
-- retirado RT9572 | cedula 1012363759
UPDATE retirado SET fecha_ingreso = '04/09/2015' WHERE id_retiro = 'RT9572' AND id_cedula = '1012363759';
-- retirado RT8537 | cedula 1095828837
UPDATE retirado SET fecha_ingreso = '01/12/2016', fecha_retiro = '12/12/2022' WHERE id_retiro = 'RT8537' AND id_cedula = '1095828837';
-- retirado RT2462 | cedula 1005310749
UPDATE retirado SET fecha_ingreso = '15/11/2022', fecha_retiro = '24/11/2022' WHERE id_retiro = 'RT2462' AND id_cedula = '1005310749';
-- retirado RT4455 | cedula 1102355567
UPDATE retirado SET fecha_ingreso = '03/11/2020', fecha_retiro = '20/11/2020' WHERE id_retiro = 'RT4455' AND id_cedula = '1102355567';
-- retirado RT9847 | cedula 1102720758
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '26/08/2020' WHERE id_retiro = 'RT9847' AND id_cedula = '1102720758';
-- retirado RT5052 | cedula 1095939376
UPDATE retirado SET fecha_ingreso = '14/10/2020', fecha_retiro = '22/10/2020' WHERE id_retiro = 'RT5052' AND id_cedula = '1095939376';
-- retirado RT7568 | cedula 1005288502
UPDATE retirado SET fecha_ingreso = '16/10/2020', fecha_retiro = '09/03/2021' WHERE id_retiro = 'RT7568' AND id_cedula = '1005288502';
-- retirado RT7010 | cedula 1095943646
UPDATE retirado SET fecha_ingreso = '21/08/2020', fecha_retiro = '06/09/2020' WHERE id_retiro = 'RT7010' AND id_cedula = '1095943646';
-- retirado RT6284 | cedula 1065889521
UPDATE retirado SET fecha_ingreso = '03/01/2017', fecha_retiro = '03/07/2017' WHERE id_retiro = 'RT6284' AND id_cedula = '1065889521';
-- retirado RT1905 | cedula 1096224736
UPDATE retirado SET fecha_ingreso = '01/03/2022', fecha_retiro = '08/07/2022' WHERE id_retiro = 'RT1905' AND id_cedula = '1096224736';
-- retirado RT6517 | cedula 1234340765
UPDATE retirado SET fecha_ingreso = '09/11/2019', fecha_retiro = '30/07/2020' WHERE id_retiro = 'RT6517' AND id_cedula = '1234340765';
-- retirado RT5753 | cedula 1234340765
UPDATE retirado SET fecha_ingreso = '05/08/2020', fecha_retiro = '05/07/2023' WHERE id_retiro = 'RT5753' AND id_cedula = '1234340765';
-- retirado RT9075 | cedula 1098765061
UPDATE retirado SET fecha_ingreso = '05/04/2013' WHERE id_retiro = 'RT9075' AND id_cedula = '1098765061';
-- retirado RT8099 | cedula 1102385607
UPDATE retirado SET fecha_ingreso = '31/07/2017', fecha_retiro = '03/02/2018' WHERE id_retiro = 'RT8099' AND id_cedula = '1102385607';
-- retirado RT4098 | cedula 1098694351
UPDATE retirado SET fecha_retiro = '15/12/2021' WHERE id_retiro = 'RT4098' AND id_cedula = '1098694351';
-- retirado RT7525 | cedula 91540171
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '11/09/2018' WHERE id_retiro = 'RT7525' AND id_cedula = '91540171';
-- retirado RT3581 | cedula 1094840635
UPDATE retirado SET fecha_ingreso = '01/12/2022', fecha_retiro = '21/10/2023' WHERE id_retiro = 'RT3581' AND id_cedula = '1094840635';
-- retirado RT1992 | cedula 1097092641
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '27/01/2022' WHERE id_retiro = 'RT1992' AND id_cedula = '1097092641';
-- retirado RT6007 | cedula 18927054
UPDATE retirado SET fecha_ingreso = '11/01/2015' WHERE id_retiro = 'RT6007' AND id_cedula = '18927054';
-- retirado RT2590 | cedula 1005565551
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '28/12/2023' WHERE id_retiro = 'RT2590' AND id_cedula = '1005565551';
-- retirado RT5984 | cedula 1096538631
UPDATE retirado SET fecha_ingreso = '09/05/2023', fecha_retiro = '06/12/2023' WHERE id_retiro = 'RT5984' AND id_cedula = '1096538631';
-- retirado RT6673 | cedula 1097092472
UPDATE retirado SET fecha_ingreso = '01/07/2022', fecha_retiro = '30/01/2023' WHERE id_retiro = 'RT6673' AND id_cedula = '1097092472';
-- retirado RT8439 | cedula 1097092472
UPDATE retirado SET fecha_ingreso = '01/07/2022', fecha_retiro = '30/01/2023' WHERE id_retiro = 'RT8439' AND id_cedula = '1097092472';
-- retirado RT8811 | cedula 1097092472
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '23/09/2023' WHERE id_retiro = 'RT8811' AND id_cedula = '1097092472';
-- retirado RT7520 | cedula 1095298757
UPDATE retirado SET fecha_ingreso = '10/11/2020', fecha_retiro = '30/11/2020' WHERE id_retiro = 'RT7520' AND id_cedula = '1095298757';
-- retirado RT6700 | cedula 1099363033
UPDATE retirado SET fecha_ingreso = '07/07/2018', fecha_retiro = '01/05/2019' WHERE id_retiro = 'RT6700' AND id_cedula = '1099363033';
-- retirado RT4563 | cedula 13718096
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '25/03/2022' WHERE id_retiro = 'RT4563' AND id_cedula = '13718096';
-- retirado RT2481 | cedula 1098710036
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '15/07/2019' WHERE id_retiro = 'RT2481' AND id_cedula = '1098710036';
-- retirado RT4748 | cedula 1007189288
UPDATE retirado SET fecha_ingreso = '19/03/2021', fecha_retiro = '19/05/2021' WHERE id_retiro = 'RT4748' AND id_cedula = '1007189288';
-- retirado RT8613 | cedula 91527147
UPDATE retirado SET fecha_ingreso = '01/04/2013', fecha_retiro = '30/09/2013' WHERE id_retiro = 'RT8613' AND id_cedula = '91527147';
-- retirado RT8461 | cedula 13740638
UPDATE retirado SET fecha_ingreso = '20/04/2015', fecha_retiro = '19/10/2015' WHERE id_retiro = 'RT8461' AND id_cedula = '13740638';
-- retirado RT4411 | cedula 1097128877
UPDATE retirado SET fecha_ingreso = '26/01/2021', fecha_retiro = '01/09/2021' WHERE id_retiro = 'RT4411' AND id_cedula = '1097128877';
-- retirado RT6465 | cedula 1098613963
UPDATE retirado SET fecha_ingreso = '18/04/2016' WHERE id_retiro = 'RT6465' AND id_cedula = '1098613963';
-- retirado RT7278 | cedula 1100895582
UPDATE retirado SET fecha_ingreso = '26/08/2020', fecha_retiro = '05/04/2021' WHERE id_retiro = 'RT7278' AND id_cedula = '1100895582';
-- retirado RT2451 | cedula 91535729
UPDATE retirado SET fecha_ingreso = '27/11/2013', fecha_retiro = '27/09/2022' WHERE id_retiro = 'RT2451' AND id_cedula = '91535729';
-- retirado RT4841 | cedula 1102379554
UPDATE retirado SET fecha_ingreso = '03/06/2015' WHERE id_retiro = 'RT4841' AND id_cedula = '1102379554';
-- retirado RT1746 | cedula 1095913275
UPDATE retirado SET fecha_ingreso = '16/02/2014', fecha_retiro = '24/10/2017' WHERE id_retiro = 'RT1746' AND id_cedula = '1095913275';
-- retirado RT7681 | cedula 1098786817
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '08/11/2021' WHERE id_retiro = 'RT7681' AND id_cedula = '1098786817';
-- retirado RT6833 | cedula 1095927427
UPDATE retirado SET fecha_ingreso = '02/02/2022', fecha_retiro = '15/02/2022' WHERE id_retiro = 'RT6833' AND id_cedula = '1095927427';
-- retirado RT8409 | cedula 1005452256
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '03/11/2022' WHERE id_retiro = 'RT8409' AND id_cedula = '1005452256';
-- retirado RT3117 | cedula 1099362471
UPDATE retirado SET fecha_ingreso = '13/08/2019', fecha_retiro = '01/12/2020' WHERE id_retiro = 'RT3117' AND id_cedula = '1099362471';
-- retirado RT4642 | cedula 1095938115
UPDATE retirado SET fecha_ingreso = '02/07/2019', fecha_retiro = '15/01/2020' WHERE id_retiro = 'RT4642' AND id_cedula = '1095938115';
-- retirado RT7954 | cedula 1103712455
UPDATE retirado SET fecha_ingreso = '28/01/2014', fecha_retiro = '11/03/2014' WHERE id_retiro = 'RT7954' AND id_cedula = '1103712455';
-- retirado RT8955 | cedula 1102358776
UPDATE retirado SET fecha_ingreso = '14/09/2020', fecha_retiro = '15/03/2021' WHERE id_retiro = 'RT8955' AND id_cedula = '1102358776';
-- retirado RT7798 | cedula 1102349587
UPDATE retirado SET fecha_ingreso = '17/06/2021', fecha_retiro = '03/09/2021' WHERE id_retiro = 'RT7798' AND id_cedula = '1102349587';
-- retirado RT3581 | cedula 1095930628
UPDATE retirado SET fecha_ingreso = '16/10/2020', fecha_retiro = '11/09/2021' WHERE id_retiro = 'RT3581' AND id_cedula = '1095930628';
-- retirado RT6855 | cedula 91486771
UPDATE retirado SET fecha_ingreso = '15/10/2015', fecha_retiro = '30/01/2016' WHERE id_retiro = 'RT6855' AND id_cedula = '91486771';
-- retirado RT4634 | cedula 1095829712
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '01/07/2021' WHERE id_retiro = 'RT4634' AND id_cedula = '1095829712';
-- retirado RT1756 | cedula 1101688221
UPDATE retirado SET fecha_ingreso = '02/11/2013' WHERE id_retiro = 'RT1756' AND id_cedula = '1101688221';
-- retirado RT4430 | cedula 1005449421
UPDATE retirado SET fecha_ingreso = '10/02/2021', fecha_retiro = '22/08/2022' WHERE id_retiro = 'RT4430' AND id_cedula = '1005449421';
-- retirado RT4221 | cedula 1126427505
UPDATE retirado SET fecha_ingreso = '22/11/2021', fecha_retiro = '01/01/2022' WHERE id_retiro = 'RT4221' AND id_cedula = '1126427505';
-- retirado RT5490 | cedula 1098762236
UPDATE retirado SET fecha_ingreso = '17/02/2020', fecha_retiro = '17/02/2020' WHERE id_retiro = 'RT5490' AND id_cedula = '1098762236';
-- retirado RT4076 | cedula 1098682417
UPDATE retirado SET fecha_ingreso = '10/09/2013', fecha_retiro = '06/01/2014' WHERE id_retiro = 'RT4076' AND id_cedula = '1098682417';
-- retirado RT9449 | cedula 1098622425
UPDATE retirado SET fecha_ingreso = '27/07/2013' WHERE id_retiro = 'RT9449' AND id_cedula = '1098622425';
-- retirado RT6184 | cedula 1098622425
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '16/09/2023' WHERE id_retiro = 'RT6184' AND id_cedula = '1098622425';
-- retirado RT8484 | cedula 91493044
UPDATE retirado SET fecha_ingreso = '03/12/2013' WHERE id_retiro = 'RT8484' AND id_cedula = '91493044';
-- retirado RT7680 | cedula 1099622300
UPDATE retirado SET fecha_ingreso = '01/03/2015', fecha_retiro = '01/08/2017' WHERE id_retiro = 'RT7680' AND id_cedula = '1099622300';
-- retirado RT9789 | cedula 1095935058
UPDATE retirado SET fecha_ingreso = '25/07/2015' WHERE id_retiro = 'RT9789' AND id_cedula = '1095935058';
-- retirado RT7767 | cedula 13514355
UPDATE retirado SET fecha_ingreso = '10/01/2014' WHERE id_retiro = 'RT7767' AND id_cedula = '13514355';
-- retirado RT7687 | cedula 1065859756
UPDATE retirado SET fecha_ingreso = '02/02/2021', fecha_retiro = '21/04/2021' WHERE id_retiro = 'RT7687' AND id_cedula = '1065859756';
-- retirado RT6008 | cedula 1098783186
UPDATE retirado SET fecha_ingreso = '04/05/2021', fecha_retiro = '04/11/2022' WHERE id_retiro = 'RT6008' AND id_cedula = '1098783186';
-- retirado RT4185 | cedula 1052312296
UPDATE retirado SET fecha_ingreso = '14/11/2014', fecha_retiro = '01/10/2019' WHERE id_retiro = 'RT4185' AND id_cedula = '1052312296';
-- retirado RT4115 | cedula 91232589
UPDATE retirado SET fecha_ingreso = '15/10/2014', fecha_retiro = '30/06/2023' WHERE id_retiro = 'RT4115' AND id_cedula = '91232589';
-- retirado RT9224 | cedula 1096243471
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = 'RT9224' AND id_cedula = '1096243471';
-- retirado RT3512 | cedula 1098634075
UPDATE retirado SET fecha_ingreso = '10/04/2018', fecha_retiro = '04/01/2023' WHERE id_retiro = 'RT3512' AND id_cedula = '1098634075';
-- retirado RT4215 | cedula 1129536155
UPDATE retirado SET fecha_ingreso = '23/01/2014' WHERE id_retiro = 'RT4215' AND id_cedula = '1129536155';
-- retirado RT6024 | cedula 91325558
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '23/10/2014' WHERE id_retiro = 'RT6024' AND id_cedula = '91325558';
-- retirado RT7427 | cedula 1098695554
UPDATE retirado SET fecha_ingreso = '04/02/2014', fecha_retiro = '30/06/2014' WHERE id_retiro = 'RT7427' AND id_cedula = '1098695554';
-- retirado RT9319 | cedula 91221251
UPDATE retirado SET fecha_ingreso = '15/11/2013' WHERE id_retiro = 'RT9319' AND id_cedula = '91221251';
-- retirado RT2241 | cedula 91184655
UPDATE retirado SET fecha_ingreso = '23/06/2022', fecha_retiro = '01/07/2022' WHERE id_retiro = 'RT2241' AND id_cedula = '91184655';
-- retirado RT8836 | cedula 91292935
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '01/06/2018' WHERE id_retiro = 'RT8836' AND id_cedula = '91292935';
-- retirado RT6573 | cedula 1007669251
UPDATE retirado SET fecha_ingreso = '22/07/2019', fecha_retiro = '07/03/2021' WHERE id_retiro = 'RT6573' AND id_cedula = '1007669251';
-- retirado RT6491 | cedula 1099369575
UPDATE retirado SET fecha_ingreso = '18/09/2018', fecha_retiro = '07/09/2019' WHERE id_retiro = 'RT6491' AND id_cedula = '1099369575';
-- retirado RT2672 | cedula 18915627
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '28/12/2013' WHERE id_retiro = 'RT2672' AND id_cedula = '18915627';
-- retirado RT6614 | cedula 1090993306
UPDATE retirado SET fecha_ingreso = '17/12/2020', fecha_retiro = '20/12/2022' WHERE id_retiro = 'RT6614' AND id_cedula = '1090993306';
-- retirado RT5655 | cedula 1102383455
UPDATE retirado SET fecha_ingreso = '23/01/2019', fecha_retiro = '01/04/2019' WHERE id_retiro = 'RT5655' AND id_cedula = '1102383455';
-- retirado RT4387 | cedula 91179757
UPDATE retirado SET fecha_ingreso = '01/11/2014', fecha_retiro = '26/09/2019' WHERE id_retiro = 'RT4387' AND id_cedula = '91179757';
-- retirado RT6619 | cedula 91179757
UPDATE retirado SET fecha_ingreso = '08/10/2020', fecha_retiro = '09/10/2020' WHERE id_retiro = 'RT6619' AND id_cedula = '91179757';
-- retirado RT2309 | cedula 1098710067
UPDATE retirado SET fecha_ingreso = '10/06/2021', fecha_retiro = '21/07/2022' WHERE id_retiro = 'RT2309' AND id_cedula = '1098710067';
-- retirado RT4754 | cedula 13872352
UPDATE retirado SET fecha_ingreso = '26/07/2012' WHERE id_retiro = 'RT4754' AND id_cedula = '13872352';
-- retirado RT5886 | cedula 1232890049
UPDATE retirado SET fecha_ingreso = '18/07/2019', fecha_retiro = '13/01/2020' WHERE id_retiro = 'RT5886' AND id_cedula = '1232890049';
-- retirado RT2237 | cedula 1095943754
UPDATE retirado SET fecha_ingreso = '09/12/2022', fecha_retiro = '07/09/2023' WHERE id_retiro = 'RT2237' AND id_cedula = '1095943754';
-- retirado RT3270 | cedula 1098647645
UPDATE retirado SET fecha_ingreso = '14/01/2016', fecha_retiro = '15/09/2017' WHERE id_retiro = 'RT3270' AND id_cedula = '1098647645';
-- retirado RT7999 | cedula 1065245739
UPDATE retirado SET fecha_ingreso = '24/03/2021', fecha_retiro = '15/01/2024' WHERE id_retiro = 'RT7999' AND id_cedula = '1065245739';
-- retirado RT2258 | cedula 1100892416
UPDATE retirado SET fecha_ingreso = '18/01/2015' WHERE id_retiro = 'RT2258' AND id_cedula = '1100892416';
-- retirado RT3663 | cedula 1100892416
UPDATE retirado SET fecha_ingreso = '16/12/2020', fecha_retiro = '20/01/2021' WHERE id_retiro = 'RT3663' AND id_cedula = '1100892416';
-- retirado RT1714 | cedula 1100222724
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT1714' AND id_cedula = '1100222724';
-- retirado RT3994 | cedula 91540655
UPDATE retirado SET fecha_ingreso = '16/05/2013', fecha_retiro = '04/12/2020' WHERE id_retiro = 'RT3994' AND id_cedula = '91540655';
-- retirado RT7781 | cedula 1098750682
UPDATE retirado SET fecha_ingreso = '15/01/2014' WHERE id_retiro = 'RT7781' AND id_cedula = '1098750682';
-- retirado RT2616 | cedula 18914855
UPDATE retirado SET fecha_ingreso = '10/01/2014', fecha_retiro = '15/01/2014' WHERE id_retiro = 'RT2616' AND id_cedula = '18914855';
-- retirado RT5886 | cedula 1100890947
UPDATE retirado SET fecha_ingreso = '24/06/2015' WHERE id_retiro = 'RT5886' AND id_cedula = '1100890947';
-- retirado RT6894 | cedula 1095942355
UPDATE retirado SET fecha_ingreso = '15/11/2015', fecha_retiro = '30/05/2016' WHERE id_retiro = 'RT6894' AND id_cedula = '1095942355';
-- retirado RT2892 | cedula 1193148717
UPDATE retirado SET fecha_ingreso = '18/07/2019', fecha_retiro = '15/10/2019' WHERE id_retiro = 'RT2892' AND id_cedula = '1193148717';
-- retirado RT7088 | cedula 1100893759
UPDATE retirado SET fecha_ingreso = '10/10/2022', fecha_retiro = '15/02/2023' WHERE id_retiro = 'RT7088' AND id_cedula = '1100893759';
-- retirado RT5102 | cedula 91541834
UPDATE retirado SET fecha_ingreso = '14/02/2023', fecha_retiro = '18/11/2023' WHERE id_retiro = 'RT5102' AND id_cedula = '91541834';
-- retirado RT7951 | cedula 1102356871
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '24/05/2015' WHERE id_retiro = 'RT7951' AND id_cedula = '1102356871';
-- retirado RT5266 | cedula 1003335359
UPDATE retirado SET fecha_ingreso = '09/02/2022', fecha_retiro = '01/09/2023' WHERE id_retiro = 'RT5266' AND id_cedula = '1003335359';
-- retirado RT5825 | cedula 1095963764
UPDATE retirado SET fecha_ingreso = '20/09/2021', fecha_retiro = '19/08/2023' WHERE id_retiro = 'RT5825' AND id_cedula = '1095963764';
-- retirado RT6476 | cedula 1095939467
UPDATE retirado SET fecha_retiro = '20/05/2022' WHERE id_retiro = 'RT6476' AND id_cedula = '1095939467';
-- retirado RT2147 | cedula 91478766
UPDATE retirado SET fecha_ingreso = '10/01/2014', fecha_retiro = '10/01/2014' WHERE id_retiro = 'RT2147' AND id_cedula = '91478766';
-- retirado RT2488 | cedula 13743405
UPDATE retirado SET fecha_ingreso = '16/12/2021', fecha_retiro = '03/02/2022' WHERE id_retiro = 'RT2488' AND id_cedula = '13743405';
-- retirado RT7547 | cedula 1005028028
UPDATE retirado SET fecha_ingreso = '10/06/2021', fecha_retiro = '17/11/2021' WHERE id_retiro = 'RT7547' AND id_cedula = '1005028028';
-- retirado RT2110 | cedula 1092008906
UPDATE retirado SET fecha_ingreso = '25/10/2021', fecha_retiro = '02/11/2021' WHERE id_retiro = 'RT2110' AND id_cedula = '1092008906';
-- retirado RT5645 | cedula 5727159
UPDATE retirado SET fecha_ingreso = '26/02/2013', fecha_retiro = '25/01/2019' WHERE id_retiro = 'RT5645' AND id_cedula = '5727159';
-- retirado RT8549 | cedula 1126419521
UPDATE retirado SET fecha_ingreso = '10/01/2020', fecha_retiro = '18/03/2023' WHERE id_retiro = 'RT8549' AND id_cedula = '1126419521';
-- retirado RT2653 | cedula 88312493
UPDATE retirado SET fecha_ingreso = '15/10/2014', fecha_retiro = '29/02/2020' WHERE id_retiro = 'RT2653' AND id_cedula = '88312493';
-- retirado RT6292 | cedula 1098647256
UPDATE retirado SET fecha_ingreso = '02/03/2017', fecha_retiro = '01/10/2019' WHERE id_retiro = 'RT6292' AND id_cedula = '1098647256';
-- retirado RT2940 | cedula 1098386385
UPDATE retirado SET fecha_ingreso = '10/02/2021', fecha_retiro = '02/11/2021' WHERE id_retiro = 'RT2940' AND id_cedula = '1098386385';
-- retirado RT4476 | cedula 1098633899
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '03/08/2021' WHERE id_retiro = 'RT4476' AND id_cedula = '1098633899';
-- retirado RT3525 | cedula 1098773861
UPDATE retirado SET fecha_ingreso = '20/05/2021', fecha_retiro = '03/07/2021' WHERE id_retiro = 'RT3525' AND id_cedula = '1098773861';
-- retirado RT8502 | cedula 1003168515
UPDATE retirado SET fecha_ingreso = '13/07/2021', fecha_retiro = '02/05/2022' WHERE id_retiro = 'RT8502' AND id_cedula = '1003168515';
-- retirado RT7165 | cedula 1098765011
UPDATE retirado SET fecha_ingreso = '12/11/2015' WHERE id_retiro = 'RT7165' AND id_cedula = '1098765011';
-- retirado RT4176 | cedula 1095828717
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '15/11/2021' WHERE id_retiro = 'RT4176' AND id_cedula = '1095828717';
-- retirado RT4960 | cedula 1098652782
UPDATE retirado SET fecha_ingreso = '24/12/2013' WHERE id_retiro = 'RT4960' AND id_cedula = '1098652782';
-- retirado RT6237 | cedula 91468932
UPDATE retirado SET fecha_ingreso = '16/03/2015', fecha_retiro = '15/02/2016' WHERE id_retiro = 'RT6237' AND id_cedula = '91468932';
-- retirado RT5787 | cedula 91273218
UPDATE retirado SET fecha_ingreso = '18/04/2013' WHERE id_retiro = 'RT5787' AND id_cedula = '91273218';
-- retirado RT4268 | cedula 1099371977
UPDATE retirado SET fecha_ingreso = '18/12/2017', fecha_retiro = '15/08/2018' WHERE id_retiro = 'RT4268' AND id_cedula = '1099371977';
-- retirado RT5097 | cedula 1099371977
UPDATE retirado SET fecha_ingreso = '17/07/2020', fecha_retiro = '19/03/2021' WHERE id_retiro = 'RT5097' AND id_cedula = '1099371977';
-- retirado RT8773 | cedula 1098690912
UPDATE retirado SET fecha_retiro = '16/08/2022' WHERE id_retiro = 'RT8773' AND id_cedula = '1098690912';
-- retirado RT2301 | cedula 91524531
UPDATE retirado SET fecha_ingreso = '08/04/2016', fecha_retiro = '26/02/2017' WHERE id_retiro = 'RT2301' AND id_cedula = '91524531';
-- retirado RT5418 | cedula 1095923014
UPDATE retirado SET fecha_ingreso = '01/09/2020', fecha_retiro = '30/10/2020' WHERE id_retiro = 'RT5418' AND id_cedula = '1095923014';
-- retirado RT6732 | cedula 1098612173
UPDATE retirado SET fecha_ingreso = '07/04/2014', fecha_retiro = '14/02/2015' WHERE id_retiro = 'RT6732' AND id_cedula = '1098612173';
-- retirado RT6618 | cedula 1005280727
UPDATE retirado SET fecha_ingreso = '08/08/2023', fecha_retiro = '02/09/2023' WHERE id_retiro = 'RT6618' AND id_cedula = '1005280727';
-- retirado RT6613 | cedula 1007382985
UPDATE retirado SET fecha_ingreso = '12/05/2022', fecha_retiro = '10/06/2022' WHERE id_retiro = 'RT6613' AND id_cedula = '1007382985';
-- retirado RT7719 | cedula 91527256
UPDATE retirado SET fecha_ingreso = '01/02/2016' WHERE id_retiro = 'RT7719' AND id_cedula = '91527256';
-- retirado RT8703 | cedula 1095957344
UPDATE retirado SET fecha_ingreso = '15/10/2022', fecha_retiro = '26/12/2021' WHERE id_retiro = 'RT8703' AND id_cedula = '1095957344';
-- retirado RT3104 | cedula 1095957344
UPDATE retirado SET fecha_ingreso = '15/10/2022', fecha_retiro = '14/12/2022' WHERE id_retiro = 'RT3104' AND id_cedula = '1095957344';
-- retirado RT8162 | cedula 91541313
UPDATE retirado SET fecha_ingreso = '30/01/2014' WHERE id_retiro = 'RT8162' AND id_cedula = '91541313';
-- retirado RT5275 | cedula 1098826186
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT5275' AND id_cedula = '1098826186';
-- retirado RT4058 | cedula 1005337245
UPDATE retirado SET fecha_ingreso = '01/02/2021', fecha_retiro = '28/04/2021' WHERE id_retiro = 'RT4058' AND id_cedula = '1005337245';
-- retirado RT2630 | cedula 1095930979
UPDATE retirado SET fecha_ingreso = '01/04/2013', fecha_retiro = '18/02/2014' WHERE id_retiro = 'RT2630' AND id_cedula = '1095930979';
-- retirado RT7758 | cedula 1005199895
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '05/12/2020' WHERE id_retiro = 'RT7758' AND id_cedula = '1005199895';
-- retirado RT2326 | cedula 91230176
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '30/08/2013' WHERE id_retiro = 'RT2326' AND id_cedula = '91230176';
-- retirado RT4062 | cedula 1005553211
UPDATE retirado SET fecha_ingreso = '26/08/2020', fecha_retiro = '22/03/2021' WHERE id_retiro = 'RT4062' AND id_cedula = '1005553211';
-- retirado RT9100 | cedula 1095907290
UPDATE retirado SET fecha_ingreso = '20/09/2022', fecha_retiro = '17/11/2022' WHERE id_retiro = 'RT9100' AND id_cedula = '1095907290';
-- retirado RT9753 | cedula 91527084
UPDATE retirado SET fecha_ingreso = '02/05/2016', fecha_retiro = '17/11/2018' WHERE id_retiro = 'RT9753' AND id_cedula = '91527084';
-- retirado RT1662 | cedula 1005305627
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '12/07/2021' WHERE id_retiro = 'RT1662' AND id_cedula = '1005305627';
-- retirado RT4122 | cedula 1005150399
UPDATE retirado SET fecha_ingreso = '17/12/2019', fecha_retiro = '17/06/2020' WHERE id_retiro = 'RT4122' AND id_cedula = '1005150399';
-- retirado RT4434 | cedula 1065850714
UPDATE retirado SET fecha_ingreso = '22/04/2019', fecha_retiro = '02/08/2022' WHERE id_retiro = 'RT4434' AND id_cedula = '1065850714';
-- retirado RT8662 | cedula 1095843731
UPDATE retirado SET fecha_ingreso = '10/11/2021', fecha_retiro = '23/09/2022' WHERE id_retiro = 'RT8662' AND id_cedula = '1095843731';
-- retirado RT8525 | cedula 1127346938
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '05/12/2020' WHERE id_retiro = 'RT8525' AND id_cedula = '1127346938';
-- retirado RT7849 | cedula 1095944205
UPDATE retirado SET fecha_ingreso = '15/11/2022', fecha_retiro = '01/12/2023' WHERE id_retiro = 'RT7849' AND id_cedula = '1095944205';
-- retirado RT6754 | cedula 1234338409
UPDATE retirado SET fecha_ingreso = '13/07/2022', fecha_retiro = '13/07/2022' WHERE id_retiro = 'RT6754' AND id_cedula = '1234338409';
-- retirado RT1841 | cedula 1102389527
UPDATE retirado SET fecha_ingreso = '17/06/2019', fecha_retiro = '16/12/2019' WHERE id_retiro = 'RT1841' AND id_cedula = '1102389527';
-- retirado RT5704 | cedula 1112226190
UPDATE retirado SET fecha_ingreso = '02/09/2017', fecha_retiro = '01/02/2018' WHERE id_retiro = 'RT5704' AND id_cedula = '1112226190';
-- retirado RT7305 | cedula 1098695216
UPDATE retirado SET fecha_ingreso = '11/02/2019', fecha_retiro = '03/04/2021' WHERE id_retiro = 'RT7305' AND id_cedula = '1098695216';
-- retirado RT2269 | cedula 1095838517
UPDATE retirado SET fecha_ingreso = '03/08/2020', fecha_retiro = '07/09/2020' WHERE id_retiro = 'RT2269' AND id_cedula = '1095838517';
-- retirado RT8797 | cedula 1098784694
UPDATE retirado SET fecha_ingreso = '21/02/2023', fecha_retiro = '01/03/2023' WHERE id_retiro = 'RT8797' AND id_cedula = '1098784694';
-- retirado RT8049 | cedula 1098741181
UPDATE retirado SET fecha_ingreso = '15/12/2014', fecha_retiro = '14/11/2017' WHERE id_retiro = 'RT8049' AND id_cedula = '1098741181';
-- retirado RT4850 | cedula 5692107
UPDATE retirado SET fecha_ingreso = '23/01/2014' WHERE id_retiro = 'RT4850' AND id_cedula = '5692107';
-- retirado RT6567 | cedula 1005161950
UPDATE retirado SET fecha_ingreso = '03/10/2023', fecha_retiro = '04/10/2023' WHERE id_retiro = 'RT6567' AND id_cedula = '1005161950';
-- retirado RT9740 | cedula 91070804
UPDATE retirado SET fecha_ingreso = '01/01/2011' WHERE id_retiro = 'RT9740' AND id_cedula = '91070804';
-- retirado RT3286 | cedula 1095958019
UPDATE retirado SET fecha_ingreso = '03/08/2020', fecha_retiro = '19/01/2021' WHERE id_retiro = 'RT3286' AND id_cedula = '1095958019';
-- retirado RT2500 | cedula 1095946934
UPDATE retirado SET fecha_retiro = '15/08/2021' WHERE id_retiro = 'RT2500' AND id_cedula = '1095946934';
-- retirado RT4944 | cedula 1095946934
UPDATE retirado SET fecha_ingreso = '06/09/2021', fecha_retiro = '15/08/2022' WHERE id_retiro = 'RT4944' AND id_cedula = '1095946934';
-- retirado RT9618 | cedula 1099367927
UPDATE retirado SET fecha_ingreso = '26/01/2021', fecha_retiro = '15/03/2022' WHERE id_retiro = 'RT9618' AND id_cedula = '1099367927';
-- retirado RT1975 | cedula 91184075
UPDATE retirado SET fecha_ingreso = '04/06/2014', fecha_retiro = '18/07/2017' WHERE id_retiro = 'RT1975' AND id_cedula = '91184075';
-- retirado RT7381 | cedula 91101765
UPDATE retirado SET fecha_ingreso = '16/08/2013' WHERE id_retiro = 'RT7381' AND id_cedula = '91101765';
-- retirado RT8647 | cedula 1095817738
UPDATE retirado SET fecha_ingreso = '01/02/2019', fecha_retiro = '09/10/2019' WHERE id_retiro = 'RT8647' AND id_cedula = '1095817738';
-- retirado RT7305 | cedula 1005108421
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '04/11/2023' WHERE id_retiro = 'RT7305' AND id_cedula = '1005108421';
-- retirado RT5119 | cedula 13544240
UPDATE retirado SET fecha_ingreso = '28/12/2013', fecha_retiro = '02/05/2014' WHERE id_retiro = 'RT5119' AND id_cedula = '13544240';
-- retirado RT5357 | cedula 1005329972
UPDATE retirado SET fecha_ingreso = '19/09/2023', fecha_retiro = '01/12/2023' WHERE id_retiro = 'RT5357' AND id_cedula = '1005329972';
-- retirado RT5980 | cedula 1098790418
UPDATE retirado SET fecha_ingreso = '08/09/2020', fecha_retiro = '30/09/2020' WHERE id_retiro = 'RT5980' AND id_cedula = '1098790418';
-- retirado RT8930 | cedula 1005322881
UPDATE retirado SET fecha_ingreso = '10/10/2022', fecha_retiro = '15/10/2022' WHERE id_retiro = 'RT8930' AND id_cedula = '1005322881';
-- retirado RT5568 | cedula 80419853
UPDATE retirado SET fecha_ingreso = '16/10/2020', fecha_retiro = '14/05/2021' WHERE id_retiro = 'RT5568' AND id_cedula = '80419853';
-- retirado RT8881 | cedula 1102381921
UPDATE retirado SET fecha_ingreso = '17/12/2019', fecha_retiro = '14/01/2020' WHERE id_retiro = 'RT8881' AND id_cedula = '1102381921';
-- retirado RT7725 | cedula 1094962899
UPDATE retirado SET fecha_ingreso = '19/12/2023', fecha_retiro = '21/12/2023' WHERE id_retiro = 'RT7725' AND id_cedula = '1094962899';
-- retirado RT5699 | cedula 7068396
UPDATE retirado SET fecha_ingreso = '11/10/2022', fecha_retiro = '21/12/2022' WHERE id_retiro = 'RT5699' AND id_cedula = '7068396';
-- retirado RT1889 | cedula 1005307033
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '16/03/2021' WHERE id_retiro = 'RT1889' AND id_cedula = '1005307033';
-- retirado RT6344 | cedula 1005327062
UPDATE retirado SET fecha_ingreso = '15/01/2021', fecha_retiro = '16/06/2021' WHERE id_retiro = 'RT6344' AND id_cedula = '1005327062';
-- retirado RT8961 | cedula 1100897117
UPDATE retirado SET fecha_ingreso = '13/03/2021', fecha_retiro = '11/02/2023' WHERE id_retiro = 'RT8961' AND id_cedula = '1100897117';
-- retirado RT5782 | cedula 1102362432
UPDATE retirado SET fecha_ingreso = '05/12/2023', fecha_retiro = '02/01/2024' WHERE id_retiro = 'RT5782' AND id_cedula = '1102362432';
-- retirado RT7895 | cedula 1005447243
UPDATE retirado SET fecha_ingreso = '06/03/2020', fecha_retiro = '30/07/2022' WHERE id_retiro = 'RT7895' AND id_cedula = '1005447243';
-- retirado RT6962 | cedula 1005447243
UPDATE retirado SET fecha_ingreso = '08/08/2022', fecha_retiro = '08/02/2023' WHERE id_retiro = 'RT6962' AND id_cedula = '1005447243';
-- retirado RT2530 | cedula 1100891259
UPDATE retirado SET fecha_ingreso = '09/10/2020', fecha_retiro = '06/06/2022' WHERE id_retiro = 'RT2530' AND id_cedula = '1100891259';
-- retirado RT6616 | cedula 1098772905
UPDATE retirado SET fecha_retiro = '28/02/2022' WHERE id_retiro = 'RT6616' AND id_cedula = '1098772905';
-- retirado RT3020 | cedula 1095815306
UPDATE retirado SET fecha_ingreso = '18/02/2021', fecha_retiro = '19/02/2021' WHERE id_retiro = 'RT3020' AND id_cedula = '1095815306';
-- retirado RT6646 | cedula 1014255878
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '02/10/2020' WHERE id_retiro = 'RT6646' AND id_cedula = '1014255878';
-- retirado RT8005 | cedula 1095832614
UPDATE retirado SET fecha_ingreso = '18/10/2018', fecha_retiro = '13/03/2022' WHERE id_retiro = 'RT8005' AND id_cedula = '1095832614';
-- retirado RT2777 | cedula 1002424744
UPDATE retirado SET fecha_ingreso = '13/08/2019', fecha_retiro = '06/09/2019' WHERE id_retiro = 'RT2777' AND id_cedula = '1002424744';
-- retirado RT5255 | cedula 91541228
UPDATE retirado SET fecha_ingreso = '01/04/2013', fecha_retiro = '01/09/2014' WHERE id_retiro = 'RT5255' AND id_cedula = '91541228';
-- retirado RT2754 | cedula 1102369665
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '16/04/2019' WHERE id_retiro = 'RT2754' AND id_cedula = '1102369665';
-- retirado RT4075 | cedula 1004376722
UPDATE retirado SET fecha_ingreso = '12/09/2023', fecha_retiro = '13/09/2023' WHERE id_retiro = 'RT4075' AND id_cedula = '1004376722';
-- retirado RT2212 | cedula 1100893378
UPDATE retirado SET fecha_ingreso = '03/11/2022', fecha_retiro = '03/04/2023' WHERE id_retiro = 'RT2212' AND id_cedula = '1100893378';
-- retirado RT2086 | cedula 1005179410
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT2086' AND id_cedula = '1005179410';
-- retirado RT7527 | cedula 1005338427
UPDATE retirado SET fecha_ingreso = '01/01/2024', fecha_retiro = '30/12/2023' WHERE id_retiro = 'RT7527' AND id_cedula = '1005338427';
-- retirado RT5704 | cedula 1005334826
UPDATE retirado SET fecha_ingreso = '20/05/2021', fecha_retiro = '18/12/2021' WHERE id_retiro = 'RT5704' AND id_cedula = '1005334826';
-- retirado RT7584 | cedula 1098696348
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '30/09/2019' WHERE id_retiro = 'RT7584' AND id_cedula = '1098696348';
-- retirado RT7461 | cedula 1096700227
UPDATE retirado SET fecha_retiro = '15/05/2022' WHERE id_retiro = 'RT7461' AND id_cedula = '1096700227';
-- retirado RT6950 | cedula 1007678100
UPDATE retirado SET fecha_ingreso = '27/03/2023', fecha_retiro = '05/10/2023' WHERE id_retiro = 'RT6950' AND id_cedula = '1007678100';
-- retirado RT9765 | cedula 1102202448
UPDATE retirado SET fecha_ingreso = '04/09/2017', fecha_retiro = '04/03/2018' WHERE id_retiro = 'RT9765' AND id_cedula = '1102202448';
-- retirado RT9179 | cedula 1099370926
UPDATE retirado SET fecha_ingreso = '15/01/2021', fecha_retiro = '23/05/2022' WHERE id_retiro = 'RT9179' AND id_cedula = '1099370926';
-- retirado RT9796 | cedula 1065875223
UPDATE retirado SET fecha_ingreso = '09/09/2020', fecha_retiro = '03/10/2023' WHERE id_retiro = 'RT9796' AND id_cedula = '1065875223';
-- retirado RT5056 | cedula 1005371766
UPDATE retirado SET fecha_ingreso = '23/05/2023', fecha_retiro = '17/07/2023' WHERE id_retiro = 'RT5056' AND id_cedula = '1005371766';
-- retirado RT9834 | cedula 1096243133
UPDATE retirado SET fecha_ingreso = '01/09/2021', fecha_retiro = '15/08/2021' WHERE id_retiro = 'RT9834' AND id_cedula = '1096243133';
-- retirado RT2586 | cedula 1096243133
UPDATE retirado SET fecha_ingreso = '01/09/2021', fecha_retiro = '04/05/2023' WHERE id_retiro = 'RT2586' AND id_cedula = '1096243133';
-- retirado RT2861 | cedula 1098799770
UPDATE retirado SET fecha_ingreso = '22/04/2019', fecha_retiro = '01/11/2019' WHERE id_retiro = 'RT2861' AND id_cedula = '1098799770';
-- retirado RT1883 | cedula 63561291
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '25/05/2017' WHERE id_retiro = 'RT1883' AND id_cedula = '63561291';
-- retirado RT9151 | cedula 63561291
UPDATE retirado SET fecha_ingreso = '26/05/2017', fecha_retiro = '08/11/2017' WHERE id_retiro = 'RT9151' AND id_cedula = '63561291';
-- retirado RT4208 | cedula 1098721089
UPDATE retirado SET fecha_ingreso = '27/04/2013', fecha_retiro = '10/07/2014' WHERE id_retiro = 'RT4208' AND id_cedula = '1098721089';
-- retirado RT3848 | cedula 1098712176
UPDATE retirado SET fecha_ingreso = '03/01/2014', fecha_retiro = '28/02/2014' WHERE id_retiro = 'RT3848' AND id_cedula = '1098712176';
-- retirado RT4250 | cedula 1102371503
UPDATE retirado SET fecha_ingreso = '28/11/2016', fecha_retiro = '27/09/2022' WHERE id_retiro = 'RT4250' AND id_cedula = '1102371503';
-- retirado RT7666 | cedula 1098758338
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '01/07/2019' WHERE id_retiro = 'RT7666' AND id_cedula = '1098758338';
-- retirado RT3991 | cedula 1102391464
UPDATE retirado SET fecha_ingreso = '18/02/2021', fecha_retiro = '01/05/2022' WHERE id_retiro = 'RT3991' AND id_cedula = '1102391464';
-- retirado RT2644 | cedula 1102372022
UPDATE retirado SET fecha_ingreso = '25/03/2014' WHERE id_retiro = 'RT2644' AND id_cedula = '1102372022';
-- retirado RT6421 | cedula 1102360234
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '01/08/2023' WHERE id_retiro = 'RT6421' AND id_cedula = '1102360234';
-- retirado RT4166 | cedula 1098702552
UPDATE retirado SET fecha_ingreso = '19/12/2022', fecha_retiro = '01/03/2023' WHERE id_retiro = 'RT4166' AND id_cedula = '1098702552';
-- retirado RT2670 | cedula 1095806845
UPDATE retirado SET fecha_ingreso = '16/12/2016', fecha_retiro = '14/01/2017' WHERE id_retiro = 'RT2670' AND id_cedula = '1095806845';
-- retirado RT2230 | cedula 1102371234
UPDATE retirado SET fecha_ingreso = '24/08/2017', fecha_retiro = '05/04/2021' WHERE id_retiro = 'RT2230' AND id_cedula = '1102371234';
-- retirado RT2192 | cedula 1094267301
UPDATE retirado SET fecha_ingreso = '12/01/2020', fecha_retiro = '13/07/2020' WHERE id_retiro = 'RT2192' AND id_cedula = '1094267301';
-- retirado RT2237 | cedula 63453470
UPDATE retirado SET fecha_ingreso = '21/01/2019', fecha_retiro = '20/09/2019' WHERE id_retiro = 'RT2237' AND id_cedula = '63453470';
-- retirado RT9043 | cedula 1096221840
UPDATE retirado SET fecha_ingreso = '22/06/2015', fecha_retiro = '13/07/2016' WHERE id_retiro = 'RT9043' AND id_cedula = '1096221840';
-- retirado RT4826 | cedula 1005650539
UPDATE retirado SET fecha_ingreso = '25/07/2023', fecha_retiro = '12/08/2023' WHERE id_retiro = 'RT4826' AND id_cedula = '1005650539';
-- retirado RT6475 | cedula 1065243074
UPDATE retirado SET fecha_ingreso = '06/07/2018', fecha_retiro = '07/12/2018' WHERE id_retiro = 'RT6475' AND id_cedula = '1065243074';
-- retirado RT4148 | cedula 1102363822
UPDATE retirado SET fecha_ingreso = '18/08/2016', fecha_retiro = '18/01/2019' WHERE id_retiro = 'RT4148' AND id_cedula = '1102363822';
-- retirado RT4580 | cedula 1097304486
UPDATE retirado SET fecha_ingreso = '15/06/2022', fecha_retiro = '04/03/2022' WHERE id_retiro = 'RT4580' AND id_cedula = '1097304486';
-- retirado RT9490 | cedula 91480422
UPDATE retirado SET fecha_ingreso = '03/12/2018', fecha_retiro = '15/03/2022' WHERE id_retiro = 'RT9490' AND id_cedula = '91480422';
-- retirado RT5470 | cedula 1065863343
UPDATE retirado SET fecha_ingreso = '03/01/2015' WHERE id_retiro = 'RT5470' AND id_cedula = '1065863343';
-- retirado RT4750 | cedula 5788301
UPDATE retirado SET fecha_ingreso = '19/06/2013', fecha_retiro = '03/02/2021' WHERE id_retiro = 'RT4750' AND id_cedula = '5788301';
-- retirado RT5921 | cedula 1005136763
UPDATE retirado SET fecha_ingreso = '03/11/2022', fecha_retiro = '25/05/2023' WHERE id_retiro = 'RT5921' AND id_cedula = '1005136763';
-- retirado RT4310 | cedula 1005336441
UPDATE retirado SET fecha_ingreso = '21/11/2019', fecha_retiro = '02/12/2019' WHERE id_retiro = 'RT4310' AND id_cedula = '1005336441';
-- retirado RT3341 | cedula 53108262
UPDATE retirado SET fecha_ingreso = '01/06/2010', fecha_retiro = '15/05/2018' WHERE id_retiro = 'RT3341' AND id_cedula = '53108262';
-- retirado RT3554 | cedula 1098772788
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '18/07/2018' WHERE id_retiro = 'RT3554' AND id_cedula = '1098772788';
-- retirado RT9647 | cedula 43536705
UPDATE retirado SET fecha_ingreso = '01/09/2014', fecha_retiro = '01/03/2023' WHERE id_retiro = 'RT9647' AND id_cedula = '43536705';
-- retirado RT7633 | cedula 63537693
UPDATE retirado SET fecha_ingreso = '25/01/2021', fecha_retiro = '07/02/2023' WHERE id_retiro = 'RT7633' AND id_cedula = '63537693';
-- retirado RT6516 | cedula 37745358
UPDATE retirado SET fecha_ingreso = '18/08/2013', fecha_retiro = '30/05/2014' WHERE id_retiro = 'RT6516' AND id_cedula = '37745358';
-- retirado RT4163 | cedula 1019040996
UPDATE retirado SET fecha_ingreso = '12/01/2018', fecha_retiro = '27/05/2019' WHERE id_retiro = 'RT4163' AND id_cedula = '1019040996';
-- retirado RT6176 | cedula 1007769593
UPDATE retirado SET fecha_ingreso = '01/10/2020', fecha_retiro = '30/04/2021' WHERE id_retiro = 'RT6176' AND id_cedula = '1007769593';
-- retirado RT7398 | cedula 1065882984
UPDATE retirado SET fecha_ingreso = '21/08/2014' WHERE id_retiro = 'RT7398' AND id_cedula = '1065882984';
-- retirado RT4077 | cedula 1065882984
UPDATE retirado SET fecha_ingreso = '14/10/2020', fecha_retiro = '15/01/2021' WHERE id_retiro = 'RT4077' AND id_cedula = '1065882984';
-- retirado RT6931 | cedula 1005107596
UPDATE retirado SET fecha_ingreso = '16/09/2021', fecha_retiro = '19/07/2022' WHERE id_retiro = 'RT6931' AND id_cedula = '1005107596';
-- retirado RT2745 | cedula 1005107596
UPDATE retirado SET fecha_ingreso = '03/08/2022', fecha_retiro = '03/10/2022' WHERE id_retiro = 'RT2745' AND id_cedula = '1005107596';
-- retirado RT3403 | cedula 63355855
UPDATE retirado SET fecha_ingreso = '02/04/2013' WHERE id_retiro = 'RT3403' AND id_cedula = '63355855';
-- retirado RT3759 | cedula 1098722582
UPDATE retirado SET fecha_ingreso = '16/01/2023', fecha_retiro = '09/05/2023' WHERE id_retiro = 'RT3759' AND id_cedula = '1098722582';
-- retirado RT9128 | cedula 91239253
UPDATE retirado SET fecha_ingreso = '04/06/2014' WHERE id_retiro = 'RT9128' AND id_cedula = '91239253';
-- retirado RT9697 | cedula 1098812386
UPDATE retirado SET fecha_ingreso = '16/09/2020', fecha_retiro = '05/10/2020' WHERE id_retiro = 'RT9697' AND id_cedula = '1098812386';
-- retirado RT6765 | cedula 1073321257
UPDATE retirado SET fecha_ingreso = '19/10/2022', fecha_retiro = '01/11/2022' WHERE id_retiro = 'RT6765' AND id_cedula = '1073321257';
-- retirado RT6889 | cedula 91263595
UPDATE retirado SET fecha_ingreso = '03/04/2014' WHERE id_retiro = 'RT6889' AND id_cedula = '91263595';
-- retirado RT8057 | cedula 4926140
UPDATE retirado SET fecha_ingreso = '10/08/2022', fecha_retiro = '28/08/2023' WHERE id_retiro = 'RT8057' AND id_cedula = '4926140';
-- retirado RT6313 | cedula 1095920336
UPDATE retirado SET fecha_ingreso = '28/12/2013' WHERE id_retiro = 'RT6313' AND id_cedula = '1095920336';
-- retirado RT2222 | cedula 91508512
UPDATE retirado SET fecha_ingreso = '26/08/2020', fecha_retiro = '01/09/2020' WHERE id_retiro = 'RT2222' AND id_cedula = '91508512';
-- retirado RT8163 | cedula 1007667697
UPDATE retirado SET fecha_ingreso = '01/09/2021', fecha_retiro = '14/10/2022' WHERE id_retiro = 'RT8163' AND id_cedula = '1007667697';
-- retirado RT2225 | cedula 91154121
UPDATE retirado SET fecha_ingreso = '28/01/2014', fecha_retiro = '25/01/2020' WHERE id_retiro = 'RT2225' AND id_cedula = '91154121';
-- retirado RT6904 | cedula 91159677
UPDATE retirado SET fecha_ingreso = '20/09/2014', fecha_retiro = '07/02/2015' WHERE id_retiro = 'RT6904' AND id_cedula = '91159677';
-- retirado RT8613 | cedula 1216964386
UPDATE retirado SET fecha_ingreso = '10/11/2020', fecha_retiro = '21/01/2021' WHERE id_retiro = 'RT8613' AND id_cedula = '1216964386';
-- retirado RT3447 | cedula 1066092518
UPDATE retirado SET fecha_ingreso = '13/12/2019', fecha_retiro = '07/01/2020' WHERE id_retiro = 'RT3447' AND id_cedula = '1066092518';
-- retirado RT7210 | cedula 1095790122
UPDATE retirado SET fecha_ingreso = '01/07/2016', fecha_retiro = '15/05/2018' WHERE id_retiro = 'RT7210' AND id_cedula = '1095790122';
-- retirado RT1754 | cedula 91528794
UPDATE retirado SET fecha_ingreso = '09/04/2013' WHERE id_retiro = 'RT1754' AND id_cedula = '91528794';
-- retirado RT7288 | cedula 1077084144
UPDATE retirado SET fecha_ingreso = '28/10/2016', fecha_retiro = '27/06/2017' WHERE id_retiro = 'RT7288' AND id_cedula = '1077084144';
-- retirado RT8500 | cedula 1098603501
UPDATE retirado SET fecha_ingreso = '04/07/2014', fecha_retiro = '04/07/2014' WHERE id_retiro = 'RT8500' AND id_cedula = '1098603501';
-- retirado RT3316 | cedula 1098603501
UPDATE retirado SET fecha_ingreso = '13/08/2019', fecha_retiro = '15/08/2019' WHERE id_retiro = 'RT3316' AND id_cedula = '1098603501';
-- retirado RT8899 | cedula 1100891087
UPDATE retirado SET fecha_ingreso = '09/10/2016', fecha_retiro = '01/05/2023' WHERE id_retiro = 'RT8899' AND id_cedula = '1100891087';
-- retirado RT3617 | cedula 1099376544
UPDATE retirado SET fecha_ingreso = '01/09/2021', fecha_retiro = '22/06/2022' WHERE id_retiro = 'RT3617' AND id_cedula = '1099376544';
-- retirado RT1753 | cedula 1005371592
UPDATE retirado SET fecha_ingreso = '27/11/2023', fecha_retiro = '07/12/2023' WHERE id_retiro = 'RT1753' AND id_cedula = '1005371592';
-- retirado RT4596 | cedula 91510509
UPDATE retirado SET fecha_ingreso = '25/04/2014', fecha_retiro = '15/12/2017' WHERE id_retiro = 'RT4596' AND id_cedula = '91510509';
-- retirado RT2099 | cedula 91510509
UPDATE retirado SET fecha_ingreso = '25/04/2014' WHERE id_retiro = 'RT2099' AND id_cedula = '91510509';
-- retirado RT1667 | cedula 1051734512
UPDATE retirado SET fecha_ingreso = '09/12/2015', fecha_retiro = '23/03/2020' WHERE id_retiro = 'RT1667' AND id_cedula = '1051734512';
-- retirado RT7963 | cedula 1102382671
UPDATE retirado SET fecha_ingreso = '15/01/2021', fecha_retiro = '16/01/2021' WHERE id_retiro = 'RT7963' AND id_cedula = '1102382671';
-- retirado RT8415 | cedula 91152838
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '24/04/2014' WHERE id_retiro = 'RT8415' AND id_cedula = '91152838';
-- retirado RT3624 | cedula 1004999832
UPDATE retirado SET fecha_retiro = '26/12/2021' WHERE id_retiro = 'RT3624' AND id_cedula = '1004999832';
-- retirado RT5423 | cedula 1065234242
UPDATE retirado SET fecha_ingreso = '14/01/2014', fecha_retiro = '04/02/2014' WHERE id_retiro = 'RT5423' AND id_cedula = '1065234242';
-- retirado RT5880 | cedula 91508322
UPDATE retirado SET fecha_ingreso = '24/01/2014' WHERE id_retiro = 'RT5880' AND id_cedula = '91508322';
-- retirado RT2320 | cedula 1003246386
UPDATE retirado SET fecha_ingreso = '26/11/2022', fecha_retiro = '30/11/2023' WHERE id_retiro = 'RT2320' AND id_cedula = '1003246386';
-- retirado RT8037 | cedula 1098614631
UPDATE retirado SET fecha_ingreso = '08/02/2014', fecha_retiro = '15/02/2014' WHERE id_retiro = 'RT8037' AND id_cedula = '1098614631';
-- retirado RT9260 | cedula 13718300
UPDATE retirado SET fecha_ingreso = '08/05/2015' WHERE id_retiro = 'RT9260' AND id_cedula = '13718300';
-- retirado RT8775 | cedula 91177444
UPDATE retirado SET fecha_ingreso = '14/04/2013' WHERE id_retiro = 'RT8775' AND id_cedula = '91177444';
-- retirado RT4701 | cedula 91242147
UPDATE retirado SET fecha_ingreso = '16/03/2015' WHERE id_retiro = 'RT4701' AND id_cedula = '91242147';
-- retirado RT7855 | cedula 1102390047
UPDATE retirado SET fecha_ingreso = '14/09/2020', fecha_retiro = '19/09/2020' WHERE id_retiro = 'RT7855' AND id_cedula = '1102390047';
-- retirado RT3556 | cedula 1121903475
UPDATE retirado SET fecha_ingreso = '17/06/2021', fecha_retiro = '02/10/2021' WHERE id_retiro = 'RT3556' AND id_cedula = '1121903475';
-- retirado RT5068 | cedula 91185480
UPDATE retirado SET fecha_ingreso = '09/10/2019', fecha_retiro = '01/11/2019' WHERE id_retiro = 'RT5068' AND id_cedula = '91185480';
-- retirado RT6915 | cedula 19308573
UPDATE retirado SET fecha_ingreso = '08/07/2014', fecha_retiro = '03/08/2020' WHERE id_retiro = 'RT6915' AND id_cedula = '19308573';
-- retirado RT1950 | cedula 1097302069
UPDATE retirado SET fecha_ingreso = '10/02/2021', fecha_retiro = '20/02/2021' WHERE id_retiro = 'RT1950' AND id_cedula = '1097302069';
-- retirado RT9559 | cedula 1098748945
UPDATE retirado SET fecha_ingreso = '05/04/2013' WHERE id_retiro = 'RT9559' AND id_cedula = '1098748945';
-- retirado RT6432 | cedula 1005336257
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '30/09/2023' WHERE id_retiro = 'RT6432' AND id_cedula = '1005336257';
-- retirado RT2346 | cedula 1101682728
UPDATE retirado SET fecha_ingreso = '27/06/2023', fecha_retiro = '01/07/2023' WHERE id_retiro = 'RT2346' AND id_cedula = '1101682728';
-- retirado RT6391 | cedula 1095820357
UPDATE retirado SET fecha_ingreso = '13/08/2019', fecha_retiro = '12/04/2021' WHERE id_retiro = 'RT6391' AND id_cedula = '1095820357';
-- retirado RT5930 | cedula 1098695299
UPDATE retirado SET fecha_ingreso = '02/12/2014', fecha_retiro = '13/06/2017' WHERE id_retiro = 'RT5930' AND id_cedula = '1098695299';
-- retirado RT7868 | cedula 1098695299
UPDATE retirado SET fecha_ingreso = '14/10/2020', fecha_retiro = '24/10/2020' WHERE id_retiro = 'RT7868' AND id_cedula = '1098695299';
-- retirado RT7744 | cedula 1098807065
UPDATE retirado SET fecha_ingreso = '22/09/2017', fecha_retiro = '05/07/2019' WHERE id_retiro = 'RT7744' AND id_cedula = '1098807065';
-- retirado RT2987 | cedula 1098638096
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '09/06/2022' WHERE id_retiro = 'RT2987' AND id_cedula = '1098638096';
-- retirado RT6517 | cedula 1095829431
UPDATE retirado SET fecha_ingreso = '16/08/2022', fecha_retiro = '07/03/2023' WHERE id_retiro = 'RT6517' AND id_cedula = '1095829431';
-- retirado RT1854 | cedula 37547405
UPDATE retirado SET fecha_ingreso = '09/08/2014', fecha_retiro = '25/08/2014' WHERE id_retiro = 'RT1854' AND id_cedula = '37547405';
-- retirado RT6489 | cedula 1098618667
UPDATE retirado SET fecha_ingreso = '29/04/2014' WHERE id_retiro = 'RT6489' AND id_cedula = '1098618667';
-- retirado RT8558 | cedula 30207036
UPDATE retirado SET fecha_ingreso = '10/11/2013', fecha_retiro = '15/04/2014' WHERE id_retiro = 'RT8558' AND id_cedula = '30207036';
-- retirado RT2410 | cedula 28150777
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '18/09/2017' WHERE id_retiro = 'RT2410' AND id_cedula = '28150777';
-- retirado RT6993 | cedula 1101760728
UPDATE retirado SET fecha_ingreso = '28/08/2019', fecha_retiro = '30/04/2020' WHERE id_retiro = 'RT6993' AND id_cedula = '1101760728';
-- retirado RT3061 | cedula 63451914
UPDATE retirado SET fecha_ingreso = '01/08/2014' WHERE id_retiro = 'RT3061' AND id_cedula = '63451914';
-- retirado RT5611 | cedula 1098701245
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '11/03/2021' WHERE id_retiro = 'RT5611' AND id_cedula = '1098701245';
-- retirado RT8762 | cedula 1098685981
UPDATE retirado SET fecha_ingreso = '11/01/2017', fecha_retiro = '05/12/2019' WHERE id_retiro = 'RT8762' AND id_cedula = '1098685981';
-- retirado RT7522 | cedula 1098736741
UPDATE retirado SET fecha_ingreso = '01/11/2014' WHERE id_retiro = 'RT7522' AND id_cedula = '1098736741';
-- retirado RT3054 | cedula 1098640150
UPDATE retirado SET fecha_ingreso = '06/05/2014' WHERE id_retiro = 'RT3054' AND id_cedula = '1098640150';
-- retirado RT8674 | cedula 1098612610
UPDATE retirado SET fecha_ingreso = '15/12/2020', fecha_retiro = '05/10/2023' WHERE id_retiro = 'RT8674' AND id_cedula = '1098612610';
-- retirado RT3118 | cedula 1007785027
UPDATE retirado SET fecha_ingreso = '22/11/2022', fecha_retiro = '26/11/2022' WHERE id_retiro = 'RT3118' AND id_cedula = '1007785027';
-- retirado RT3199 | cedula 1065627239
UPDATE retirado SET fecha_ingreso = '16/02/2020', fecha_retiro = '08/08/2020' WHERE id_retiro = 'RT3199' AND id_cedula = '1065627239';
-- retirado RT5339 | cedula 91490700
UPDATE retirado SET fecha_ingreso = '22/12/2014', fecha_retiro = '07/10/2015' WHERE id_retiro = 'RT5339' AND id_cedula = '91490700';
-- retirado RT7644 | cedula 91488374
UPDATE retirado SET fecha_ingreso = '20/11/2015', fecha_retiro = '23/06/2022' WHERE id_retiro = 'RT7644' AND id_cedula = '91488374';
-- retirado RT1786 | cedula 18928463
UPDATE retirado SET fecha_ingreso = '08/10/2015', fecha_retiro = '15/09/2017' WHERE id_retiro = 'RT1786' AND id_cedula = '18928463';
-- retirado RT5330 | cedula 13743455
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '04/04/2014' WHERE id_retiro = 'RT5330' AND id_cedula = '13743455';
-- retirado RT3876 | cedula 91532718
UPDATE retirado SET fecha_ingreso = '24/09/2019', fecha_retiro = '20/11/2019' WHERE id_retiro = 'RT3876' AND id_cedula = '91532718';
-- retirado RT2350 | cedula 1098722932
UPDATE retirado SET fecha_ingreso = '17/11/2017', fecha_retiro = '21/11/2017' WHERE id_retiro = 'RT2350' AND id_cedula = '1098722932';
-- retirado RT4712 | cedula 1007715302
UPDATE retirado SET fecha_ingreso = '01/08/2023', fecha_retiro = '30/07/2023' WHERE id_retiro = 'RT4712' AND id_cedula = '1007715302';
-- retirado RT2705 | cedula 1098689369
UPDATE retirado SET fecha_ingreso = '25/03/2014' WHERE id_retiro = 'RT2705' AND id_cedula = '1098689369';
-- retirado RT8328 | cedula 95122319050
UPDATE retirado SET fecha_ingreso = '01/09/2013' WHERE id_retiro = 'RT8328' AND id_cedula = '95122319050';
-- retirado RT4914 | cedula 1098787600
UPDATE retirado SET fecha_ingreso = '13/03/2021', fecha_retiro = '31/03/2021' WHERE id_retiro = 'RT4914' AND id_cedula = '1098787600';
-- retirado RT4104 | cedula 63322069
UPDATE retirado SET fecha_ingreso = '04/04/2014', fecha_retiro = '15/02/2022' WHERE id_retiro = 'RT4104' AND id_cedula = '63322069';
-- retirado RT6725 | cedula 1098720756
UPDATE retirado SET fecha_ingreso = '09/01/2019', fecha_retiro = '09/07/2019' WHERE id_retiro = 'RT6725' AND id_cedula = '1098720756';
-- retirado RT5208 | cedula 1098356589
UPDATE retirado SET fecha_ingreso = '12/01/2014', fecha_retiro = '19/11/2020' WHERE id_retiro = 'RT5208' AND id_cedula = '1098356589';
-- retirado RT4645 | cedula 19452504
UPDATE retirado SET fecha_ingreso = '01/03/2019', fecha_retiro = '04/03/2021' WHERE id_retiro = 'RT4645' AND id_cedula = '19452504';
-- retirado RT4355 | cedula 80842536
UPDATE retirado SET fecha_ingreso = '14/12/2023', fecha_retiro = '30/12/2023' WHERE id_retiro = 'RT4355' AND id_cedula = '80842536';
-- retirado RT3170 | cedula 1095912413
UPDATE retirado SET fecha_ingreso = '01/08/2019', fecha_retiro = '29/02/2020' WHERE id_retiro = 'RT3170' AND id_cedula = '1095912413';
-- retirado RT3404 | cedula 63498810
UPDATE retirado SET fecha_ingreso = '03/03/2014', fecha_retiro = '15/07/2014' WHERE id_retiro = 'RT3404' AND id_cedula = '63498810';
-- retirado RT9072 | cedula 1148454856
UPDATE retirado SET fecha_ingreso = '26/09/2022', fecha_retiro = '27/11/2023' WHERE id_retiro = 'RT9072' AND id_cedula = '1148454856';
-- retirado RT9434 | cedula 1098646726
UPDATE retirado SET fecha_ingreso = '18/01/2014', fecha_retiro = '04/05/2014' WHERE id_retiro = 'RT9434' AND id_cedula = '1098646726';
-- retirado RT6322 | cedula 1100894888
UPDATE retirado SET fecha_ingreso = '01/09/2020', fecha_retiro = '11/03/2021' WHERE id_retiro = 'RT6322' AND id_cedula = '1100894888';
-- retirado RT4390 | cedula 1100896192
UPDATE retirado SET fecha_ingreso = '15/01/2021', fecha_retiro = '20/01/2021' WHERE id_retiro = 'RT4390' AND id_cedula = '1100896192';
-- retirado RT8520 | cedula 1007272393
UPDATE retirado SET fecha_ingreso = '17/11/2017', fecha_retiro = '30/11/2021' WHERE id_retiro = 'RT8520' AND id_cedula = '1007272393';
-- retirado RT1747 | cedula 1098783989
UPDATE retirado SET fecha_ingreso = '15/05/2018', fecha_retiro = '15/11/2018' WHERE id_retiro = 'RT1747' AND id_cedula = '1098783989';
-- retirado RT6313 | cedula 63497308
UPDATE retirado SET fecha_ingreso = '09/03/2015', fecha_retiro = '15/10/2020' WHERE id_retiro = 'RT6313' AND id_cedula = '63497308';
-- retirado RT7419 | cedula 1095921591
UPDATE retirado SET fecha_ingreso = '26/02/2015' WHERE id_retiro = 'RT7419' AND id_cedula = '1095921591';
-- retirado RT5745 | cedula 1098737769
UPDATE retirado SET fecha_ingreso = '14/03/2018', fecha_retiro = '12/05/2018' WHERE id_retiro = 'RT5745' AND id_cedula = '1098737769';
-- retirado RT9425 | cedula 46451402
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '09/01/2019' WHERE id_retiro = 'RT9425' AND id_cedula = '46451402';
-- retirado RT9093 | cedula 46451402
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '09/01/2019' WHERE id_retiro = 'RT9093' AND id_cedula = '46451402';
-- retirado RT4499 | cedula 1098725175
UPDATE retirado SET fecha_ingreso = '26/02/2018', fecha_retiro = '15/08/2018' WHERE id_retiro = 'RT4499' AND id_cedula = '1098725175';
-- retirado RT2605 | cedula 1005155826
UPDATE retirado SET fecha_ingreso = '01/06/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT2605' AND id_cedula = '1005155826';
-- retirado RT2805 | cedula 13746300
UPDATE retirado SET fecha_ingreso = '08/09/2020', fecha_retiro = '29/09/2020' WHERE id_retiro = 'RT2805' AND id_cedula = '13746300';
-- retirado RT7827 | cedula 13861754
UPDATE retirado SET fecha_ingreso = '19/01/2014', fecha_retiro = '19/05/2014' WHERE id_retiro = 'RT7827' AND id_cedula = '13861754';
-- retirado RT8558 | cedula 37399404
UPDATE retirado SET fecha_ingreso = '12/08/2019', fecha_retiro = '15/02/2020' WHERE id_retiro = 'RT8558' AND id_cedula = '37399404';
-- retirado RT3267 | cedula 1095944761
UPDATE retirado SET fecha_ingreso = '04/11/2014' WHERE id_retiro = 'RT3267' AND id_cedula = '1095944761';
-- retirado RT8458 | cedula 1065880622
UPDATE retirado SET fecha_ingreso = '26/11/2014' WHERE id_retiro = 'RT8458' AND id_cedula = '1065880622';
-- retirado RT9254 | cedula 1098813313
UPDATE retirado SET fecha_ingreso = '04/03/2021', fecha_retiro = '19/03/2021' WHERE id_retiro = 'RT9254' AND id_cedula = '1098813313';
-- retirado RT5221 | cedula 1095946074
UPDATE retirado SET fecha_ingreso = '09/12/2020', fecha_retiro = '25/04/2021' WHERE id_retiro = 'RT5221' AND id_cedula = '1095946074';
-- retirado RT4620 | cedula 1005198901
UPDATE retirado SET fecha_ingreso = '04/05/2021', fecha_retiro = '05/02/2022' WHERE id_retiro = 'RT4620' AND id_cedula = '1005198901';
-- retirado RT4463 | cedula 1100894296
UPDATE retirado SET fecha_ingreso = '22/09/2018', fecha_retiro = '22/11/2019' WHERE id_retiro = 'RT4463' AND id_cedula = '1100894296';
-- retirado RT9232 | cedula 1100894296
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '24/07/2022' WHERE id_retiro = 'RT9232' AND id_cedula = '1100894296';
-- retirado RT4871 | cedula 1100894296
UPDATE retirado SET fecha_ingreso = '01/10/2022', fecha_retiro = '01/05/2023' WHERE id_retiro = 'RT4871' AND id_cedula = '1100894296';
-- retirado RT6234 | cedula 91044435
UPDATE retirado SET fecha_ingreso = '17/04/2013' WHERE id_retiro = 'RT6234' AND id_cedula = '91044435';
-- retirado RT4464 | cedula 91506186
UPDATE retirado SET fecha_ingreso = '16/08/2013', fecha_retiro = '19/01/2015' WHERE id_retiro = 'RT4464' AND id_cedula = '91506186';
-- retirado RT5349 | cedula 1098776470
UPDATE retirado SET fecha_ingreso = '22/07/2019', fecha_retiro = '17/08/2019' WHERE id_retiro = 'RT5349' AND id_cedula = '1098776470';
-- retirado RT8667 | cedula 7111533
UPDATE retirado SET fecha_ingreso = '20/09/2022', fecha_retiro = '21/11/2022' WHERE id_retiro = 'RT8667' AND id_cedula = '7111533';
-- retirado RT9245 | cedula 91515676
UPDATE retirado SET fecha_ingreso = '05/02/2021', fecha_retiro = '05/01/2024' WHERE id_retiro = 'RT9245' AND id_cedula = '91515676';
-- retirado RT6249 | cedula 91181232
UPDATE retirado SET fecha_ingreso = '17/04/2013', fecha_retiro = '18/03/2014' WHERE id_retiro = 'RT6249' AND id_cedula = '91181232';
-- retirado RT2386 | cedula 1102373305
UPDATE retirado SET fecha_ingreso = '08/09/2018', fecha_retiro = '24/01/2019' WHERE id_retiro = 'RT2386' AND id_cedula = '1102373305';
-- retirado RT8102 | cedula 4984503
UPDATE retirado SET fecha_ingreso = '16/01/2016', fecha_retiro = '31/01/2023' WHERE id_retiro = 'RT8102' AND id_cedula = '4984503';
-- retirado RT3601 | cedula 63548529
UPDATE retirado SET fecha_ingreso = '21/08/2015' WHERE id_retiro = 'RT3601' AND id_cedula = '63548529';
-- retirado RT7305 | cedula 1098751464
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '15/08/2023' WHERE id_retiro = 'RT7305' AND id_cedula = '1098751464';
-- retirado RT5397 | cedula 91107538
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '01/03/2019' WHERE id_retiro = 'RT5397' AND id_cedula = '91107538';
-- retirado RT7802 | cedula 28157133
UPDATE retirado SET fecha_ingreso = '27/08/2013', fecha_retiro = '01/01/2015' WHERE id_retiro = 'RT7802' AND id_cedula = '28157133';
-- retirado RT6312 | cedula 1095939920
UPDATE retirado SET fecha_ingreso = '03/01/2018', fecha_retiro = '11/08/2018' WHERE id_retiro = 'RT6312' AND id_cedula = '1095939920';
-- retirado RT6427 | cedula 52275401
UPDATE retirado SET fecha_ingreso = '05/02/2014', fecha_retiro = '22/09/2015' WHERE id_retiro = 'RT6427' AND id_cedula = '52275401';
-- retirado RT1818 | cedula 1101695854
UPDATE retirado SET fecha_ingreso = '14/02/2023', fecha_retiro = '26/07/2023' WHERE id_retiro = 'RT1818' AND id_cedula = '1101695854';
-- retirado RT6470 | cedula 1095832883
UPDATE retirado SET fecha_retiro = '10/05/2022' WHERE id_retiro = 'RT6470' AND id_cedula = '1095832883';
-- retirado RT6392 | cedula 1102381651
UPDATE retirado SET fecha_retiro = '09/06/2022' WHERE id_retiro = 'RT6392' AND id_cedula = '1102381651';
-- retirado RT4029 | cedula 1100962645
UPDATE retirado SET fecha_ingreso = '19/04/2017', fecha_retiro = '30/10/2017' WHERE id_retiro = 'RT4029' AND id_cedula = '1100962645';
-- retirado RT9677 | cedula 1100892648
UPDATE retirado SET fecha_ingreso = '18/12/2020', fecha_retiro = '18/01/2021' WHERE id_retiro = 'RT9677' AND id_cedula = '1100892648';
-- retirado RT6913 | cedula 1101203089
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '21/12/2018' WHERE id_retiro = 'RT6913' AND id_cedula = '1101203089';
-- retirado RT3191 | cedula 91295966
UPDATE retirado SET fecha_ingreso = '23/01/2014', fecha_retiro = '22/04/2014' WHERE id_retiro = 'RT3191' AND id_cedula = '91295966';
-- retirado RT4957 | cedula 91486978
UPDATE retirado SET fecha_ingreso = '18/06/2013', fecha_retiro = '15/10/2013' WHERE id_retiro = 'RT4957' AND id_cedula = '91486978';
-- retirado RT8412 | cedula 1121044437
UPDATE retirado SET fecha_ingreso = '23/10/2020', fecha_retiro = '02/09/2023' WHERE id_retiro = 'RT8412' AND id_cedula = '1121044437';
-- retirado RT2081 | cedula 5726508
UPDATE retirado SET fecha_ingreso = '05/04/2013', fecha_retiro = '10/11/2013' WHERE id_retiro = 'RT2081' AND id_cedula = '5726508';
-- retirado RT4779 | cedula 91499408
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '26/12/2017' WHERE id_retiro = 'RT4779' AND id_cedula = '91499408';
-- retirado RT6604 | cedula 1127923639
UPDATE retirado SET fecha_ingreso = '01/12/2017', fecha_retiro = '15/12/2017' WHERE id_retiro = 'RT6604' AND id_cedula = '1127923639';
-- retirado RT9117 | cedula 1098737134
UPDATE retirado SET fecha_ingreso = '20/09/2021', fecha_retiro = '03/05/2022' WHERE id_retiro = 'RT9117' AND id_cedula = '1098737134';
-- retirado RT1775 | cedula 1098746029
UPDATE retirado SET fecha_ingreso = '01/02/2018', fecha_retiro = '13/01/2020' WHERE id_retiro = 'RT1775' AND id_cedula = '1098746029';
-- retirado RT7483 | cedula 1098797421
UPDATE retirado SET fecha_ingreso = '07/02/2023', fecha_retiro = '26/01/2023' WHERE id_retiro = 'RT7483' AND id_cedula = '1098797421';
-- retirado RT3302 | cedula 13689042
UPDATE retirado SET fecha_ingreso = '01/10/2012', fecha_retiro = '30/05/2014' WHERE id_retiro = 'RT3302' AND id_cedula = '13689042';
-- retirado RT6775 | cedula 1095831870
UPDATE retirado SET fecha_ingreso = '26/07/2017', fecha_retiro = '15/09/2020' WHERE id_retiro = 'RT6775' AND id_cedula = '1095831870';
-- retirado RT6529 | cedula 1095831870
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '20/10/2021' WHERE id_retiro = 'RT6529' AND id_cedula = '1095831870';
-- retirado RT2390 | cedula 1095831870
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '14/09/2023' WHERE id_retiro = 'RT2390' AND id_cedula = '1095831870';
-- retirado RT6528 | cedula 1007193854
UPDATE retirado SET fecha_ingreso = '18/02/2021', fecha_retiro = '01/03/2021' WHERE id_retiro = 'RT6528' AND id_cedula = '1007193854';
-- retirado RT5942 | cedula 1065123409
UPDATE retirado SET fecha_retiro = '11/04/2023' WHERE id_retiro = 'RT5942' AND id_cedula = '1065123409';
-- retirado RT1511 | cedula 1100896448
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '19/08/2021' WHERE id_retiro = 'RT1511' AND id_cedula = '1100896448';
-- retirado RT3165 | cedula 1095957701
UPDATE retirado SET fecha_retiro = '26/10/2021' WHERE id_retiro = 'RT3165' AND id_cedula = '1095957701';
-- retirado RT9447 | cedula 1098815536
UPDATE retirado SET fecha_ingreso = '24/03/2021', fecha_retiro = '12/07/2022' WHERE id_retiro = 'RT9447' AND id_cedula = '1098815536';
-- retirado RT4259 | cedula 1095835860
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '07/07/2022' WHERE id_retiro = 'RT4259' AND id_cedula = '1095835860';
-- retirado RT1909 | cedula 63525537
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '01/10/2022' WHERE id_retiro = 'RT1909' AND id_cedula = '63525537';
-- retirado RT5742 | cedula 13870376
UPDATE retirado SET fecha_ingreso = '09/04/2013' WHERE id_retiro = 'RT5742' AND id_cedula = '13870376';
-- retirado RT2260 | cedula 1118202363
UPDATE retirado SET fecha_ingreso = '12/08/2020', fecha_retiro = '02/11/2021' WHERE id_retiro = 'RT2260' AND id_cedula = '1118202363';
-- retirado RT8081 | cedula 1020758240
UPDATE retirado SET fecha_ingreso = '14/03/2023', fecha_retiro = '25/05/2023' WHERE id_retiro = 'RT8081' AND id_cedula = '1020758240';
-- retirado RT5228 | cedula 13540198
UPDATE retirado SET fecha_ingreso = '12/09/2015', fecha_retiro = '15/05/2017' WHERE id_retiro = 'RT5228' AND id_cedula = '13540198';
-- retirado RT3740 | cedula 1098661612
UPDATE retirado SET fecha_ingreso = '25/01/2014', fecha_retiro = '19/03/2014' WHERE id_retiro = 'RT3740' AND id_cedula = '1098661612';
-- retirado RT9720 | cedula 13870158
UPDATE retirado SET fecha_ingreso = '04/06/2014' WHERE id_retiro = 'RT9720' AND id_cedula = '13870158';
-- retirado RT6278 | cedula 5702244
UPDATE retirado SET fecha_ingreso = '01/04/2012' WHERE id_retiro = 'RT6278' AND id_cedula = '5702244';
-- retirado RT2903 | cedula 1098783316
UPDATE retirado SET fecha_ingreso = '25/07/2018', fecha_retiro = '31/01/2019' WHERE id_retiro = 'RT2903' AND id_cedula = '1098783316';
-- retirado RT2036 | cedula 1102719865
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '05/03/2022' WHERE id_retiro = 'RT2036' AND id_cedula = '1102719865';
-- retirado RT8544 | cedula 13542290
UPDATE retirado SET fecha_ingreso = '20/09/2014' WHERE id_retiro = 'RT8544' AND id_cedula = '13542290';
-- retirado RT1516 | cedula 1005449258
UPDATE retirado SET fecha_ingreso = '08/05/2018', fecha_retiro = '17/02/2019' WHERE id_retiro = 'RT1516' AND id_cedula = '1005449258';
-- retirado RT6235 | cedula 1095810879
UPDATE retirado SET fecha_ingreso = '29/07/2019', fecha_retiro = '01/08/2019' WHERE id_retiro = 'RT6235' AND id_cedula = '1095810879';
-- retirado RT7581 | cedula 1005321391
UPDATE retirado SET fecha_ingreso = '07/09/2022', fecha_retiro = '06/12/2022' WHERE id_retiro = 'RT7581' AND id_cedula = '1005321391';
-- retirado RT2364 | cedula 1005326908
UPDATE retirado SET fecha_retiro = '15/02/2022' WHERE id_retiro = 'RT2364' AND id_cedula = '1005326908';
-- retirado RT1898 | cedula 1006822494
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '11/08/2023' WHERE id_retiro = 'RT1898' AND id_cedula = '1006822494';
-- retirado RT5711 | cedula 1095921127
UPDATE retirado SET fecha_ingreso = '05/04/2013', fecha_retiro = '07/04/2013' WHERE id_retiro = 'RT5711' AND id_cedula = '1095921127';
-- retirado RT8936 | cedula 1095921127
UPDATE retirado SET fecha_ingreso = '17/11/2018', fecha_retiro = '01/11/2022' WHERE id_retiro = 'RT8936' AND id_cedula = '1095921127';
-- retirado RT4059 | cedula 91533906
UPDATE retirado SET fecha_ingreso = '14/05/2016', fecha_retiro = '15/03/2021' WHERE id_retiro = 'RT4059' AND id_cedula = '91533906';
-- retirado RT2691 | cedula 1065245775
UPDATE retirado SET fecha_ingreso = '15/05/2023', fecha_retiro = '21/10/2023' WHERE id_retiro = 'RT2691' AND id_cedula = '1065245775';
-- retirado RT2205 | cedula 1100891455
UPDATE retirado SET fecha_ingreso = '24/09/2014', fecha_retiro = '30/01/2015' WHERE id_retiro = 'RT2205' AND id_cedula = '1100891455';
-- retirado RT9253 | cedula 1098666215
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '23/06/2022' WHERE id_retiro = 'RT9253' AND id_cedula = '1098666215';
-- retirado RT4524 | cedula 1098666215
UPDATE retirado SET fecha_ingreso = '15/10/2022', fecha_retiro = '01/08/2023' WHERE id_retiro = 'RT4524' AND id_cedula = '1098666215';
-- retirado RT9363 | cedula 1100897161
UPDATE retirado SET fecha_ingreso = '11/07/2019', fecha_retiro = '01/08/2019' WHERE id_retiro = 'RT9363' AND id_cedula = '1100897161';
-- retirado RT7720 | cedula 1095820802
UPDATE retirado SET fecha_ingreso = '04/08/2015', fecha_retiro = '16/03/2016' WHERE id_retiro = 'RT7720' AND id_cedula = '1095820802';
-- retirado RT2875 | cedula 91161109
UPDATE retirado SET fecha_ingreso = '01/06/2013', fecha_retiro = '02/11/2021' WHERE id_retiro = 'RT2875' AND id_cedula = '91161109';
-- retirado RT4308 | cedula 1095926628
UPDATE retirado SET fecha_ingreso = '01/11/2022', fecha_retiro = '04/11/2022' WHERE id_retiro = 'RT4308' AND id_cedula = '1095926628';
-- retirado RT7669 | cedula 79626368
UPDATE retirado SET fecha_ingreso = '02/05/2016', fecha_retiro = '26/12/2023' WHERE id_retiro = 'RT7669' AND id_cedula = '79626368';
-- retirado RT6226 | cedula 1102381907
UPDATE retirado SET fecha_ingreso = '15/06/2022', fecha_retiro = '17/12/2022' WHERE id_retiro = 'RT6226' AND id_cedula = '1102381907';
-- retirado RT4496 | cedula 1102381907
UPDATE retirado SET fecha_ingreso = '18/12/2022', fecha_retiro = '17/11/2023' WHERE id_retiro = 'RT4496' AND id_cedula = '1102381907';
-- retirado RT2756 | cedula 1095795815
UPDATE retirado SET fecha_ingreso = '22/09/2016' WHERE id_retiro = 'RT2756' AND id_cedula = '1095795815';
-- retirado RT4937 | cedula 91349922
UPDATE retirado SET fecha_ingreso = '18/11/2013' WHERE id_retiro = 'RT4937' AND id_cedula = '91349922';
-- retirado RT2975 | cedula 1098805201
UPDATE retirado SET fecha_ingreso = '24/10/2019', fecha_retiro = '09/07/2022' WHERE id_retiro = 'RT2975' AND id_cedula = '1098805201';
-- retirado RT8688 | cedula 1005108752
UPDATE retirado SET fecha_ingreso = '01/12/2022', fecha_retiro = '06/09/2023' WHERE id_retiro = 'RT8688' AND id_cedula = '1005108752';
-- retirado RT8266 | cedula 1065569851
UPDATE retirado SET fecha_ingreso = '22/11/2016', fecha_retiro = '23/03/2019' WHERE id_retiro = 'RT8266' AND id_cedula = '1065569851';
-- retirado RT7651 | cedula 91468860
UPDATE retirado SET fecha_ingreso = '21/10/2014' WHERE id_retiro = 'RT7651' AND id_cedula = '91468860';
-- retirado RT1597 | cedula 1095941701
UPDATE retirado SET fecha_ingreso = '13/02/2015', fecha_retiro = '30/08/2015' WHERE id_retiro = 'RT1597' AND id_cedula = '1095941701';
-- retirado RT5620 | cedula 1099622671
UPDATE retirado SET fecha_ingreso = '17/11/2017', fecha_retiro = '14/06/2019' WHERE id_retiro = 'RT5620' AND id_cedula = '1099622671';
-- retirado RT5938 | cedula 1095802205
UPDATE retirado SET fecha_ingreso = '21/06/2017', fecha_retiro = '21/08/2017' WHERE id_retiro = 'RT5938' AND id_cedula = '1095802205';
-- retirado RT4068 | cedula 1095502205
UPDATE retirado SET fecha_ingreso = '21/06/2017', fecha_retiro = '21/08/2017' WHERE id_retiro = 'RT4068' AND id_cedula = '1095502205';
-- retirado RT4994 | cedula 91512939
UPDATE retirado SET fecha_ingreso = '06/10/2016' WHERE id_retiro = 'RT4994' AND id_cedula = '91512939';
-- retirado RT6844 | cedula 13543139
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '07/02/2014' WHERE id_retiro = 'RT6844' AND id_cedula = '13543139';
-- retirado RT2701 | cedula 11510585
UPDATE retirado SET fecha_ingreso = '08/01/2014', fecha_retiro = '08/01/2014' WHERE id_retiro = 'RT2701' AND id_cedula = '11510585';
-- retirado RT7916 | cedula 1100895599
UPDATE retirado SET fecha_ingreso = '19/05/2017', fecha_retiro = '10/01/2019' WHERE id_retiro = 'RT7916' AND id_cedula = '1100895599';
-- retirado RT4431 | cedula 1100895599
UPDATE retirado SET fecha_ingreso = '06/10/2020', fecha_retiro = '25/03/2021' WHERE id_retiro = 'RT4431' AND id_cedula = '1100895599';
-- retirado RT7079 | cedula 1098718278
UPDATE retirado SET fecha_ingreso = '18/10/2016', fecha_retiro = '17/09/2018' WHERE id_retiro = 'RT7079' AND id_cedula = '1098718278';
-- retirado RT1572 | cedula 1099735372
UPDATE retirado SET fecha_ingreso = '06/10/2022', fecha_retiro = '30/11/2023' WHERE id_retiro = 'RT1572' AND id_cedula = '1099735372';
-- retirado RT1728 | cedula 16935634
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '05/03/2014' WHERE id_retiro = 'RT1728' AND id_cedula = '16935634';
-- retirado RT1701 | cedula 1064728458
UPDATE retirado SET fecha_ingreso = '01/02/2023', fecha_retiro = '22/10/2023' WHERE id_retiro = 'RT1701' AND id_cedula = '1064728458';
-- retirado RT3411 | cedula 1095916893
UPDATE retirado SET fecha_ingreso = '05/02/2021', fecha_retiro = '05/02/2021' WHERE id_retiro = 'RT3411' AND id_cedula = '1095916893';
-- retirado RT5471 | cedula 91521270
UPDATE retirado SET fecha_ingreso = '22/12/2014', fecha_retiro = '23/05/2022' WHERE id_retiro = 'RT5471' AND id_cedula = '91521270';
-- retirado RT3259 | cedula 1005338996
UPDATE retirado SET fecha_ingreso = '20/12/2021', fecha_retiro = '01/02/2022' WHERE id_retiro = 'RT3259' AND id_cedula = '1005338996';
-- retirado RT7511 | cedula 1093412039
UPDATE retirado SET fecha_ingreso = '16/01/2014' WHERE id_retiro = 'RT7511' AND id_cedula = '1093412039';
-- retirado RT2942 | cedula 1098813545
UPDATE retirado SET fecha_ingreso = '19/08/2020', fecha_retiro = '27/08/2020' WHERE id_retiro = 'RT2942' AND id_cedula = '1098813545';
-- retirado RT7986 | cedula 1007688229
UPDATE retirado SET fecha_ingreso = '09/05/2023', fecha_retiro = '21/06/2023' WHERE id_retiro = 'RT7986' AND id_cedula = '1007688229';
-- retirado RT7053 | cedula 1004823274
UPDATE retirado SET fecha_ingreso = '12/09/2019', fecha_retiro = '16/09/2019' WHERE id_retiro = 'RT7053' AND id_cedula = '1004823274';
-- retirado RT6117 | cedula 91067867
UPDATE retirado SET fecha_ingreso = '19/12/2013', fecha_retiro = '30/08/2014' WHERE id_retiro = 'RT6117' AND id_cedula = '91067867';
-- retirado RT1750 | cedula 1098781871
UPDATE retirado SET fecha_ingreso = '10/11/2020', fecha_retiro = '07/01/2021' WHERE id_retiro = 'RT1750' AND id_cedula = '1098781871';
-- retirado RT3644 | cedula 1098772623
UPDATE retirado SET fecha_ingreso = '18/03/2021', fecha_retiro = '31/03/2021' WHERE id_retiro = 'RT3644' AND id_cedula = '1098772623';
-- retirado RT7024 | cedula 1065903304
UPDATE retirado SET fecha_ingreso = '09/10/2020', fecha_retiro = '01/11/2020' WHERE id_retiro = 'RT7024' AND id_cedula = '1065903304';
-- retirado RT9573 | cedula 1098774783
UPDATE retirado SET fecha_ingreso = '21/10/2013', fecha_retiro = '28/07/2014' WHERE id_retiro = 'RT9573' AND id_cedula = '1098774783';
-- retirado RT7125 | cedula 1102376684
UPDATE retirado SET fecha_ingreso = '14/11/2014', fecha_retiro = '15/12/2019' WHERE id_retiro = 'RT7125' AND id_cedula = '1102376684';
-- retirado RT2524 | cedula 1098785827
UPDATE retirado SET fecha_retiro = '01/03/2022' WHERE id_retiro = 'RT2524' AND id_cedula = '1098785827';
-- retirado RT3340 | cedula 1098739422
UPDATE retirado SET fecha_ingreso = '18/01/2019', fecha_retiro = '10/02/2019' WHERE id_retiro = 'RT3340' AND id_cedula = '1098739422';
-- retirado RT9176 | cedula 1098739422
UPDATE retirado SET fecha_ingreso = '13/03/2019', fecha_retiro = '19/03/2019' WHERE id_retiro = 'RT9176' AND id_cedula = '1098739422';
-- retirado RT4932 | cedula 1098796129
UPDATE retirado SET fecha_retiro = '28/12/2021' WHERE id_retiro = 'RT4932' AND id_cedula = '1098796129';
-- retirado RT6370 | cedula 1095835855
UPDATE retirado SET fecha_ingreso = '04/07/2023', fecha_retiro = '04/01/2024' WHERE id_retiro = 'RT6370' AND id_cedula = '1095835855';
-- retirado RT6102 | cedula 13748877
UPDATE retirado SET fecha_ingreso = '05/10/2013', fecha_retiro = '23/01/2014' WHERE id_retiro = 'RT6102' AND id_cedula = '13748877';
-- retirado RT5150 | cedula 13928910
UPDATE retirado SET fecha_ingreso = '02/05/2022', fecha_retiro = '02/05/2023' WHERE id_retiro = 'RT5150' AND id_cedula = '13928910';
-- retirado RT8700 | cedula 1104184702
UPDATE retirado SET fecha_ingreso = '18/08/2020', fecha_retiro = '28/02/2021' WHERE id_retiro = 'RT8700' AND id_cedula = '1104184702';
-- retirado RT9299 | cedula 91498542
UPDATE retirado SET fecha_ingreso = '20/03/2015', fecha_retiro = '05/02/2016' WHERE id_retiro = 'RT9299' AND id_cedula = '91498542';
-- retirado RT7879 | cedula 1098746118
UPDATE retirado SET fecha_ingreso = '22/01/2014', fecha_retiro = '16/04/2014' WHERE id_retiro = 'RT7879' AND id_cedula = '1098746118';
-- retirado RT5850 | cedula 1100895787
UPDATE retirado SET fecha_ingreso = '24/03/2021', fecha_retiro = '03/07/2021' WHERE id_retiro = 'RT5850' AND id_cedula = '1100895787';
-- retirado RT6911 | cedula 1098732632
UPDATE retirado SET fecha_ingreso = '10/01/2020', fecha_retiro = '30/09/2020' WHERE id_retiro = 'RT6911' AND id_cedula = '1098732632';
-- retirado RT1684 | cedula 1098776427
UPDATE retirado SET fecha_ingreso = '06/07/2014', fecha_retiro = '01/08/2014' WHERE id_retiro = 'RT1684' AND id_cedula = '1098776427';
-- retirado RT7247 | cedula 1098738927
UPDATE retirado SET fecha_ingreso = '13/03/2021', fecha_retiro = '15/04/2021' WHERE id_retiro = 'RT7247' AND id_cedula = '1098738927';
-- retirado RT6236 | cedula 1047450497
UPDATE retirado SET fecha_ingreso = '15/01/2021', fecha_retiro = '07/07/2023' WHERE id_retiro = 'RT6236' AND id_cedula = '1047450497';
-- retirado RT1961 | cedula 1100893810
UPDATE retirado SET fecha_ingreso = '03/10/2022', fecha_retiro = '07/10/2022' WHERE id_retiro = 'RT1961' AND id_cedula = '1100893810';
-- retirado RT3927 | cedula 1130023
UPDATE retirado SET fecha_ingreso = '12/05/2022', fecha_retiro = '06/02/2023' WHERE id_retiro = 'RT3927' AND id_cedula = '1130023';
-- retirado RT4163 | cedula 1098737948
UPDATE retirado SET fecha_ingreso = '12/03/2015', fecha_retiro = '15/02/2017' WHERE id_retiro = 'RT4163' AND id_cedula = '1098737948';
-- retirado RT7305 | cedula 1095827501
UPDATE retirado SET fecha_ingreso = '24/08/2017', fecha_retiro = '14/03/2018' WHERE id_retiro = 'RT7305' AND id_cedula = '1095827501';
-- retirado RT8769 | cedula 1100895848
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '25/03/2021' WHERE id_retiro = 'RT8769' AND id_cedula = '1100895848';
-- retirado RT2958 | cedula 1098800178
UPDATE retirado SET fecha_ingreso = '10/01/2023', fecha_retiro = '15/07/2023' WHERE id_retiro = 'RT2958' AND id_cedula = '1098800178';
-- retirado RT4139 | cedula 91241871
UPDATE retirado SET fecha_ingreso = '13/07/2014' WHERE id_retiro = 'RT4139' AND id_cedula = '91241871';
-- retirado RT6943 | cedula 1095918720
UPDATE retirado SET fecha_ingreso = '24/01/2020', fecha_retiro = '24/01/2020' WHERE id_retiro = 'RT6943' AND id_cedula = '1095918720';
-- retirado RT4810 | cedula 1130676687
UPDATE retirado SET fecha_ingreso = '28/12/2013', fecha_retiro = '04/03/2014' WHERE id_retiro = 'RT4810' AND id_cedula = '1130676687';
-- retirado RT6935 | cedula 79886983
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '18/12/2018' WHERE id_retiro = 'RT6935' AND id_cedula = '79886983';
-- retirado RT3708 | cedula 1095951404
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '15/08/2022' WHERE id_retiro = 'RT3708' AND id_cedula = '1095951404';
-- retirado RT8177 | cedula 1007536714
UPDATE retirado SET fecha_ingreso = '24/05/2022', fecha_retiro = '01/10/2022' WHERE id_retiro = 'RT8177' AND id_cedula = '1007536714';
-- retirado RT2589 | cedula 1082956130
UPDATE retirado SET fecha_ingreso = '06/12/2022', fecha_retiro = '20/12/2022' WHERE id_retiro = 'RT2589' AND id_cedula = '1082956130';
-- retirado RT3763 | cedula 1004306819
UPDATE retirado SET fecha_ingreso = '17/11/2017', fecha_retiro = '26/07/2018' WHERE id_retiro = 'RT3763' AND id_cedula = '1004306819';
-- retirado RT2410 | cedula 91154952
UPDATE retirado SET fecha_ingreso = '15/01/2016', fecha_retiro = '03/06/2022' WHERE id_retiro = 'RT2410' AND id_cedula = '91154952';
-- retirado RT2146 | cedula 1099369830
UPDATE retirado SET fecha_ingreso = '17/01/2020', fecha_retiro = '23/01/2020' WHERE id_retiro = 'RT2146' AND id_cedula = '1099369830';
-- retirado RT7757 | cedula 1099545712
UPDATE retirado SET fecha_ingreso = '24/07/2014' WHERE id_retiro = 'RT7757' AND id_cedula = '1099545712';
-- retirado RT9361 | cedula 1100894753
UPDATE retirado SET fecha_ingreso = '24/09/2014', fecha_retiro = '30/01/2015' WHERE id_retiro = 'RT9361' AND id_cedula = '1100894753';
-- retirado RT9638 | cedula 1066096827
UPDATE retirado SET fecha_ingreso = '15/01/2019', fecha_retiro = '18/06/2021' WHERE id_retiro = 'RT9638' AND id_cedula = '1066096827';
-- retirado RT7700 | cedula 1098358006
UPDATE retirado SET fecha_ingreso = '10/10/2022', fecha_retiro = '11/10/2022' WHERE id_retiro = 'RT7700' AND id_cedula = '1098358006';
-- retirado RT2054 | cedula 1098779384
UPDATE retirado SET fecha_ingreso = '19/06/2019', fecha_retiro = '17/12/2021' WHERE id_retiro = 'RT2054' AND id_cedula = '1098779384';
-- retirado RT3058 | cedula 1100889475
UPDATE retirado SET fecha_ingreso = '18/04/2016', fecha_retiro = '21/06/2018' WHERE id_retiro = 'RT3058' AND id_cedula = '1100889475';
-- retirado RT2140 | cedula 1100894744
UPDATE retirado SET fecha_ingreso = '14/05/2019', fecha_retiro = '01/10/2020' WHERE id_retiro = 'RT2140' AND id_cedula = '1100894744';
-- retirado RT3925 | cedula 91511945
UPDATE retirado SET fecha_ingreso = '11/09/2013' WHERE id_retiro = 'RT3925' AND id_cedula = '91511945';
-- retirado RT9182 | cedula 1091133868
UPDATE retirado SET fecha_ingreso = '26/10/2015' WHERE id_retiro = 'RT9182' AND id_cedula = '1091133868';
-- retirado RT4811 | cedula 1098635136
UPDATE retirado SET fecha_ingreso = '24/10/2014' WHERE id_retiro = 'RT4811' AND id_cedula = '1098635136';
-- retirado RT3010 | cedula 1102374047
UPDATE retirado SET fecha_ingreso = '22/09/2016' WHERE id_retiro = 'RT3010' AND id_cedula = '1102374047';
-- retirado RT4331 | cedula 1098668343
UPDATE retirado SET fecha_ingreso = '22/12/2013' WHERE id_retiro = 'RT4331' AND id_cedula = '1098668343';
-- retirado RT7046 | cedula 13719766
UPDATE retirado SET fecha_ingreso = '11/03/2021', fecha_retiro = '19/07/2021' WHERE id_retiro = 'RT7046' AND id_cedula = '13719766';
-- retirado RT1816 | cedula 1095914687
UPDATE retirado SET fecha_ingreso = '28/01/2014', fecha_retiro = '15/02/2015' WHERE id_retiro = 'RT1816' AND id_cedula = '1095914687';
-- retirado RT6842 | cedula 1095908624
UPDATE retirado SET fecha_ingreso = '10/04/2013', fecha_retiro = '06/11/2013' WHERE id_retiro = 'RT6842' AND id_cedula = '1095908624';
-- retirado RT2728 | cedula 1098784752
UPDATE retirado SET fecha_ingreso = '22/01/2015', fecha_retiro = '25/08/2017' WHERE id_retiro = 'RT2728' AND id_cedula = '1098784752';
-- retirado RT6393 | cedula 1098745157
UPDATE retirado SET fecha_ingreso = '16/09/2020', fecha_retiro = '02/12/2022' WHERE id_retiro = 'RT6393' AND id_cedula = '1098745157';
-- retirado RT5480 | cedula 1091132431
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '21/01/2023' WHERE id_retiro = 'RT5480' AND id_cedula = '1091132431';
-- retirado RT4884 | cedula 1098609869
UPDATE retirado SET fecha_ingreso = '01/02/2018', fecha_retiro = '15/12/2021' WHERE id_retiro = 'RT4884' AND id_cedula = '1098609869';
-- retirado RT2777 | cedula 42447659
UPDATE retirado SET fecha_ingreso = '28/05/2013' WHERE id_retiro = 'RT2777' AND id_cedula = '42447659';
-- retirado RT8275 | cedula 91176773
UPDATE retirado SET fecha_ingreso = '18/11/2013' WHERE id_retiro = 'RT8275' AND id_cedula = '91176773';
-- retirado RT1608 | cedula 91531117
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '19/04/2021' WHERE id_retiro = 'RT1608' AND id_cedula = '91531117';
-- retirado RT2471 | cedula 1095795674
UPDATE retirado SET fecha_ingreso = '29/01/2014', fecha_retiro = '21/06/2014' WHERE id_retiro = 'RT2471' AND id_cedula = '1095795674';
-- retirado RT6230 | cedula 1005324198
UPDATE retirado SET fecha_ingreso = '08/08/2023', fecha_retiro = '24/10/2023' WHERE id_retiro = 'RT6230' AND id_cedula = '1005324198';
-- retirado RT6360 | cedula 1098728906
UPDATE retirado SET fecha_ingreso = '15/01/2021', fecha_retiro = '20/01/2021' WHERE id_retiro = 'RT6360' AND id_cedula = '1098728906';
-- retirado RT1673 | cedula 91534099
UPDATE retirado SET fecha_ingreso = '15/02/2018', fecha_retiro = '01/12/2020' WHERE id_retiro = 'RT1673' AND id_cedula = '91534099';
-- retirado RT5934 | cedula 1095831096
UPDATE retirado SET fecha_ingreso = '03/11/2020', fecha_retiro = '22/03/2021' WHERE id_retiro = 'RT5934' AND id_cedula = '1095831096';
-- retirado RT6432 | cedula 1095831096
UPDATE retirado SET fecha_ingreso = '22/07/2021', fecha_retiro = '19/09/2022' WHERE id_retiro = 'RT6432' AND id_cedula = '1095831096';
-- retirado RT8806 | cedula 1005339880
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '21/07/2023' WHERE id_retiro = 'RT8806' AND id_cedula = '1005339880';
-- retirado RT1579 | cedula 1095826769
UPDATE retirado SET fecha_ingreso = '23/08/2021', fecha_retiro = '28/02/2022' WHERE id_retiro = 'RT1579' AND id_cedula = '1095826769';
-- retirado RT2116 | cedula 91507663
UPDATE retirado SET fecha_ingreso = '29/01/2013', fecha_retiro = '28/12/2015' WHERE id_retiro = 'RT2116' AND id_cedula = '91507663';
-- retirado RT7863 | cedula 18945168
UPDATE retirado SET fecha_ingreso = '01/07/2018', fecha_retiro = '13/10/2020' WHERE id_retiro = 'RT7863' AND id_cedula = '18945168';
-- retirado RT7896 | cedula 37720563
UPDATE retirado SET fecha_ingreso = '29/01/2014', fecha_retiro = '27/05/2014' WHERE id_retiro = 'RT7896' AND id_cedula = '37720563';
-- retirado RT4081 | cedula 1098664484
UPDATE retirado SET fecha_ingreso = '14/04/2018', fecha_retiro = '28/02/2019' WHERE id_retiro = 'RT4081' AND id_cedula = '1098664484';
-- retirado RT7006 | cedula 91279194
UPDATE retirado SET fecha_ingreso = '06/09/2017', fecha_retiro = '19/04/2022' WHERE id_retiro = 'RT7006' AND id_cedula = '91279194';
-- retirado RT8297 | cedula 1098689600
UPDATE retirado SET fecha_ingreso = '19/12/2019', fecha_retiro = '31/07/2020' WHERE id_retiro = 'RT8297' AND id_cedula = '1098689600';
-- retirado RT6760 | cedula 1098752643
UPDATE retirado SET fecha_ingreso = '04/02/2019', fecha_retiro = '23/05/2022' WHERE id_retiro = 'RT6760' AND id_cedula = '1098752643';
-- retirado RT2945 | cedula 91506739
UPDATE retirado SET fecha_ingreso = '30/11/2014' WHERE id_retiro = 'RT2945' AND id_cedula = '91506739';
-- retirado RT6471 | cedula 1099368102
UPDATE retirado SET fecha_ingreso = '17/01/2020', fecha_retiro = '04/05/2023' WHERE id_retiro = 'RT6471' AND id_cedula = '1099368102';
-- retirado RT8037 | cedula 1102388484
UPDATE retirado SET fecha_ingreso = '02/09/2019', fecha_retiro = '08/09/2019' WHERE id_retiro = 'RT8037' AND id_cedula = '1102388484';
-- retirado RT6006 | cedula 1098613266
UPDATE retirado SET fecha_ingreso = '20/03/2019', fecha_retiro = '16/01/2020' WHERE id_retiro = 'RT6006' AND id_cedula = '1098613266';
-- retirado RT7301 | cedula 1098789632
UPDATE retirado SET fecha_ingreso = '03/01/2017', fecha_retiro = '01/06/2017' WHERE id_retiro = 'RT7301' AND id_cedula = '1098789632';
-- retirado RT8922 | cedula 91539856
UPDATE retirado SET fecha_ingreso = '21/07/2014' WHERE id_retiro = 'RT8922' AND id_cedula = '91539856';
-- retirado RT1968 | cedula 1098761545
UPDATE retirado SET fecha_ingreso = '01/03/2022', fecha_retiro = '25/04/2022' WHERE id_retiro = 'RT1968' AND id_cedula = '1098761545';
-- retirado RT3329 | cedula 1102392004
UPDATE retirado SET fecha_ingreso = '01/12/2022', fecha_retiro = '10/12/2022' WHERE id_retiro = 'RT3329' AND id_cedula = '1102392004';
-- retirado RT1582 | cedula 1065238398
UPDATE retirado SET fecha_ingreso = '16/03/2015', fecha_retiro = '25/08/2015' WHERE id_retiro = 'RT1582' AND id_cedula = '1065238398';
-- retirado RT3902 | cedula 1096482176
UPDATE retirado SET fecha_ingreso = '03/02/2020', fecha_retiro = '09/09/2022' WHERE id_retiro = 'RT3902' AND id_cedula = '1096482176';
-- retirado RT6202 | cedula 1095797832
UPDATE retirado SET fecha_ingreso = '22/12/2014', fecha_retiro = '04/10/2022' WHERE id_retiro = 'RT6202' AND id_cedula = '1095797832';
-- retirado RT6098 | cedula 91536733
UPDATE retirado SET fecha_ingreso = '02/04/2013' WHERE id_retiro = 'RT6098' AND id_cedula = '91536733';
-- retirado RT5724 | cedula 1193565626
UPDATE retirado SET fecha_ingreso = '22/11/2021', fecha_retiro = '21/04/2022' WHERE id_retiro = 'RT5724' AND id_cedula = '1193565626';
-- retirado RT4398 | cedula 1098670905
UPDATE retirado SET fecha_ingreso = '01/08/2023', fecha_retiro = '30/12/2023' WHERE id_retiro = 'RT4398' AND id_cedula = '1098670905';
-- retirado RT4553 | cedula 13720354
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '11/03/2022' WHERE id_retiro = 'RT4553' AND id_cedula = '13720354';
-- retirado RT4042 | cedula 1102387422
UPDATE retirado SET fecha_ingreso = '19/08/2020', fecha_retiro = '29/06/2022' WHERE id_retiro = 'RT4042' AND id_cedula = '1102387422';
-- retirado RT4156 | cedula 13716237
UPDATE retirado SET fecha_ingreso = '16/02/2017', fecha_retiro = '26/02/2017' WHERE id_retiro = 'RT4156' AND id_cedula = '13716237';
-- retirado RT2951 | cedula 91516298
UPDATE retirado SET fecha_ingreso = '18/07/2013' WHERE id_retiro = 'RT2951' AND id_cedula = '91516298';
-- retirado RT3337 | cedula 1095933558
UPDATE retirado SET fecha_ingreso = '21/06/2017', fecha_retiro = '14/11/2017' WHERE id_retiro = 'RT3337' AND id_cedula = '1095933558';
-- retirado RT2381 | cedula 1098687797
UPDATE retirado SET fecha_ingreso = '10/04/2018', fecha_retiro = '18/12/2020' WHERE id_retiro = 'RT2381' AND id_cedula = '1098687797';
-- retirado RT9247 | cedula 1099622427
UPDATE retirado SET fecha_ingreso = '02/03/2016' WHERE id_retiro = 'RT9247' AND id_cedula = '1099622427';
-- retirado RT8873 | cedula 91355268
UPDATE retirado SET fecha_ingreso = '18/10/2018', fecha_retiro = '16/01/2023' WHERE id_retiro = 'RT8873' AND id_cedula = '91355268';
-- retirado RT3319 | cedula 1096958437
UPDATE retirado SET fecha_ingreso = '17/07/2017', fecha_retiro = '17/01/2018' WHERE id_retiro = 'RT3319' AND id_cedula = '1096958437';
-- retirado RT2043 | cedula 1096958437
UPDATE retirado SET fecha_ingreso = '01/02/2018', fecha_retiro = '29/12/2023' WHERE id_retiro = 'RT2043' AND id_cedula = '1096958437';
-- retirado RT7011 | cedula 1095819558
UPDATE retirado SET fecha_ingreso = '19/12/2019', fecha_retiro = '07/10/2020' WHERE id_retiro = 'RT7011' AND id_cedula = '1095819558';
-- retirado RT1708 | cedula 1095819558
UPDATE retirado SET fecha_ingreso = '20/05/2021', fecha_retiro = '24/01/2023' WHERE id_retiro = 'RT1708' AND id_cedula = '1095819558';
-- retirado RT3092 | cedula 1098728996
UPDATE retirado SET fecha_ingreso = '19/09/2013' WHERE id_retiro = 'RT3092' AND id_cedula = '1098728996';
-- retirado RT6912 | cedula 1095836031
UPDATE retirado SET fecha_ingreso = '04/05/2021', fecha_retiro = '22/08/2022' WHERE id_retiro = 'RT6912' AND id_cedula = '1095836031';
-- retirado RT8701 | cedula 1043841055
UPDATE retirado SET fecha_ingreso = '14/03/2016' WHERE id_retiro = 'RT8701' AND id_cedula = '1043841055';
-- retirado RT8742 | cedula 1098759232
UPDATE retirado SET fecha_ingreso = '11/01/2014', fecha_retiro = '07/05/2014' WHERE id_retiro = 'RT8742' AND id_cedula = '1098759232';
-- retirado RT7774 | cedula 1095803482
UPDATE retirado SET fecha_ingreso = '12/11/2013', fecha_retiro = '13/11/2013' WHERE id_retiro = 'RT7774' AND id_cedula = '1095803482';
-- retirado RT3916 | cedula 63558543
UPDATE retirado SET fecha_ingreso = '16/04/2013' WHERE id_retiro = 'RT3916' AND id_cedula = '63558543';
-- retirado RT7802 | cedula 1105390960
UPDATE retirado SET fecha_ingreso = '23/07/2018', fecha_retiro = '27/01/2019' WHERE id_retiro = 'RT7802' AND id_cedula = '1105390960';
-- retirado RT3783 | cedula 1005340594
UPDATE retirado SET fecha_ingreso = '07/07/2018', fecha_retiro = '30/09/2019' WHERE id_retiro = 'RT3783' AND id_cedula = '1005340594';
-- retirado RT2181 | cedula 1098733160
UPDATE retirado SET fecha_ingreso = '11/02/2019', fecha_retiro = '10/07/2019' WHERE id_retiro = 'RT2181' AND id_cedula = '1098733160';
-- retirado RT6811 | cedula 1116614679
UPDATE retirado SET fecha_ingreso = '01/03/2022', fecha_retiro = '08/04/2023' WHERE id_retiro = 'RT6811' AND id_cedula = '1116614679';
-- retirado RT7637 | cedula 1116614679
UPDATE retirado SET fecha_ingreso = '14/05/2023', fecha_retiro = '17/06/2023' WHERE id_retiro = 'RT7637' AND id_cedula = '1116614679';
-- retirado RT3459 | cedula 1095828245
UPDATE retirado SET fecha_ingreso = '16/06/2017', fecha_retiro = '16/05/2019' WHERE id_retiro = 'RT3459' AND id_cedula = '1095828245';
-- retirado RT5957 | cedula 1007331003
UPDATE retirado SET fecha_retiro = '15/04/2021' WHERE id_retiro = 'RT5957' AND id_cedula = '1007331003';
-- retirado RT8002 | cedula 1098719631
UPDATE retirado SET fecha_ingreso = '16/03/2015' WHERE id_retiro = 'RT8002' AND id_cedula = '1098719631';
-- retirado RT6797 | cedula 37726848
UPDATE retirado SET fecha_ingreso = '19/11/2015', fecha_retiro = '29/01/2016' WHERE id_retiro = 'RT6797' AND id_cedula = '37726848';
-- retirado RT2690 | cedula 1098614786
UPDATE retirado SET fecha_ingreso = '02/08/2018', fecha_retiro = '17/08/2018' WHERE id_retiro = 'RT2690' AND id_cedula = '1098614786';
-- retirado RT6706 | cedula 91263368
UPDATE retirado SET fecha_ingreso = '28/12/2013' WHERE id_retiro = 'RT6706' AND id_cedula = '91263368';
-- retirado RT7374 | cedula 1098723762
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '18/10/2022' WHERE id_retiro = 'RT7374' AND id_cedula = '1098723762';
-- retirado RT6146 | cedula 1093767979
UPDATE retirado SET fecha_ingreso = '14/02/2023', fecha_retiro = '27/03/2023' WHERE id_retiro = 'RT6146' AND id_cedula = '1093767979';
-- retirado RT8577 | cedula 1004806617
UPDATE retirado SET fecha_ingreso = '01/09/2021', fecha_retiro = '09/09/2021' WHERE id_retiro = 'RT8577' AND id_cedula = '1004806617';
-- retirado RT6904 | cedula 1007382965
UPDATE retirado SET fecha_ingreso = '23/10/2020', fecha_retiro = '28/01/2022' WHERE id_retiro = 'RT6904' AND id_cedula = '1007382965';
-- retirado RT9300 | cedula 1095932243
UPDATE retirado SET fecha_ingreso = '18/02/2021', fecha_retiro = '14/04/2021' WHERE id_retiro = 'RT9300' AND id_cedula = '1095932243';
-- retirado RT8920 | cedula 1102383064
UPDATE retirado SET fecha_ingreso = '08/04/2019', fecha_retiro = '08/12/2020' WHERE id_retiro = 'RT8920' AND id_cedula = '1102383064';
-- retirado RT3335 | cedula 1098705695
UPDATE retirado SET fecha_ingreso = '06/06/2023', fecha_retiro = '16/09/2023' WHERE id_retiro = 'RT3335' AND id_cedula = '1098705695';
-- retirado RT7960 | cedula 1102393332
UPDATE retirado SET fecha_ingreso = '24/08/2020', fecha_retiro = '23/09/2020' WHERE id_retiro = 'RT7960' AND id_cedula = '1102393332';
-- retirado RT8402 | cedula 91528256
UPDATE retirado SET fecha_ingreso = '10/09/2020', fecha_retiro = '03/05/2021' WHERE id_retiro = 'RT8402' AND id_cedula = '91528256';
-- retirado RT1830 | cedula 1095947531
UPDATE retirado SET fecha_ingreso = '16/01/2023', fecha_retiro = '01/11/2023' WHERE id_retiro = 'RT1830' AND id_cedula = '1095947531';
-- retirado RT5399 | cedula 1095804609
UPDATE retirado SET fecha_ingreso = '02/08/2019', fecha_retiro = '02/09/2019' WHERE id_retiro = 'RT5399' AND id_cedula = '1095804609';
-- retirado RT6295 | cedula 1100894745
UPDATE retirado SET fecha_ingreso = '23/01/2019', fecha_retiro = '22/06/2019' WHERE id_retiro = 'RT6295' AND id_cedula = '1100894745';
-- retirado RT5522 | cedula 1005295109
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '01/01/2013' WHERE id_retiro = 'RT5522' AND id_cedula = '1005295109';
-- retirado RT3280 | cedula 1102369817
UPDATE retirado SET fecha_ingreso = '10/01/2014', fecha_retiro = '09/04/2014' WHERE id_retiro = 'RT3280' AND id_cedula = '1102369817';
-- retirado RT8872 | cedula 91477239
UPDATE retirado SET fecha_ingreso = '16/08/2013' WHERE id_retiro = 'RT8872' AND id_cedula = '91477239';
-- retirado RT4107 | cedula 1098725715
UPDATE retirado SET fecha_ingreso = '03/12/2015', fecha_retiro = '03/06/2016' WHERE id_retiro = 'RT4107' AND id_cedula = '1098725715';
-- retirado RT7316 | cedula 1098808049
UPDATE retirado SET fecha_ingreso = '12/01/2018', fecha_retiro = '12/01/2018' WHERE id_retiro = 'RT7316' AND id_cedula = '1098808049';
-- retirado RT4039 | cedula 1102373788
UPDATE retirado SET fecha_ingreso = '14/07/2016', fecha_retiro = '14/01/2017' WHERE id_retiro = 'RT4039' AND id_cedula = '1102373788';
-- retirado RT7744 | cedula 1100895109
UPDATE retirado SET fecha_ingreso = '27/03/2020', fecha_retiro = '06/03/2021' WHERE id_retiro = 'RT7744' AND id_cedula = '1100895109';
-- retirado RT7866 | cedula 91157838
UPDATE retirado SET fecha_ingreso = '04/07/2014', fecha_retiro = '11/07/2014' WHERE id_retiro = 'RT7866' AND id_cedula = '91157838';
-- retirado RT5314 | cedula 1005323191
UPDATE retirado SET fecha_ingreso = '13/12/2021', fecha_retiro = '12/05/2022' WHERE id_retiro = 'RT5314' AND id_cedula = '1005323191';
-- retirado RT4340 | cedula 1007189902
UPDATE retirado SET fecha_ingreso = '18/02/2021', fecha_retiro = '20/08/2021' WHERE id_retiro = 'RT4340' AND id_cedula = '1007189902';
-- retirado RT2306 | cedula 1005236326
UPDATE retirado SET fecha_ingreso = '11/10/2022', fecha_retiro = '09/12/2022' WHERE id_retiro = 'RT2306' AND id_cedula = '1005236326';
-- retirado RT8142 | cedula 9692159
UPDATE retirado SET fecha_ingreso = '01/06/2013', fecha_retiro = '30/08/2013' WHERE id_retiro = 'RT8142' AND id_cedula = '9692159';
-- retirado RT4358 | cedula 1095928222
UPDATE retirado SET fecha_ingreso = '22/04/2016' WHERE id_retiro = 'RT4358' AND id_cedula = '1095928222';
-- retirado RT7339 | cedula 1094266066
UPDATE retirado SET fecha_retiro = '02/02/2022' WHERE id_retiro = 'RT7339' AND id_cedula = '1094266066';
-- retirado RT4459 | cedula 91177522
UPDATE retirado SET fecha_ingreso = '05/02/2014' WHERE id_retiro = 'RT4459' AND id_cedula = '91177522';
-- retirado RT5653 | cedula 13873168
UPDATE retirado SET fecha_ingreso = '21/09/2013', fecha_retiro = '19/11/2013' WHERE id_retiro = 'RT5653' AND id_cedula = '13873168';
-- retirado RT7573 | cedula 1101211533
UPDATE retirado SET fecha_retiro = '30/12/2021' WHERE id_retiro = 'RT7573' AND id_cedula = '1101211533';
-- retirado RT3130 | cedula 91535197
UPDATE retirado SET fecha_ingreso = '02/11/2023', fecha_retiro = '03/11/2023' WHERE id_retiro = 'RT3130' AND id_cedula = '91535197';
-- retirado RT5079 | cedula 1098683045
UPDATE retirado SET fecha_ingreso = '06/01/2017', fecha_retiro = '05/02/2018' WHERE id_retiro = 'RT5079' AND id_cedula = '1098683045';
-- retirado RT7658 | cedula 1098683045
UPDATE retirado SET fecha_ingreso = '10/10/2020', fecha_retiro = '12/10/2020' WHERE id_retiro = 'RT7658' AND id_cedula = '1098683045';
-- retirado RT3244 | cedula 1102385813
UPDATE retirado SET fecha_ingreso = '22/02/2018', fecha_retiro = '23/02/2018' WHERE id_retiro = 'RT3244' AND id_cedula = '1102385813';
-- retirado RT9090 | cedula 91500069
UPDATE retirado SET fecha_ingreso = '01/02/2015', fecha_retiro = '10/12/2015' WHERE id_retiro = 'RT9090' AND id_cedula = '91500069';
-- retirado RT5557 | cedula 1098818679
UPDATE retirado SET fecha_ingreso = '13/08/2019', fecha_retiro = '13/08/2019' WHERE id_retiro = 'RT5557' AND id_cedula = '1098818679';
-- retirado RT4640 | cedula 18926491
UPDATE retirado SET fecha_ingreso = '18/04/2013', fecha_retiro = '30/08/2013' WHERE id_retiro = 'RT4640' AND id_cedula = '18926491';
-- retirado RT4926 | cedula 1095921721
UPDATE retirado SET fecha_ingreso = '13/09/2014', fecha_retiro = '05/10/2014' WHERE id_retiro = 'RT4926' AND id_cedula = '1095921721';
-- retirado RT2538 | cedula 1098736118
UPDATE retirado SET fecha_ingreso = '18/08/2022', fecha_retiro = '25/10/2022' WHERE id_retiro = 'RT2538' AND id_cedula = '1098736118';
-- retirado RT8587 | cedula 1095912016
UPDATE retirado SET fecha_ingreso = '16/01/2014', fecha_retiro = '03/04/2014' WHERE id_retiro = 'RT8587' AND id_cedula = '1095912016';
-- retirado RT4222 | cedula 1102378027
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '01/10/2022' WHERE id_retiro = 'RT4222' AND id_cedula = '1102378027';
-- retirado RT5091 | cedula 91185173
UPDATE retirado SET fecha_ingreso = '05/06/2015' WHERE id_retiro = 'RT5091' AND id_cedula = '91185173';
-- retirado RT2402 | cedula 91356514
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '03/05/2023' WHERE id_retiro = 'RT2402' AND id_cedula = '91356514';
-- retirado RT4059 | cedula 1095920958
UPDATE retirado SET fecha_ingreso = '02/05/2013', fecha_retiro = '02/04/2018' WHERE id_retiro = 'RT4059' AND id_cedula = '1095920958';
-- retirado RT2106 | cedula 1095920958
UPDATE retirado SET fecha_ingreso = '15/10/2020', fecha_retiro = '23/10/2020' WHERE id_retiro = 'RT2106' AND id_cedula = '1095920958';
-- retirado RT6143 | cedula 1100888299
UPDATE retirado SET fecha_ingreso = '19/11/2020', fecha_retiro = '24/12/2020' WHERE id_retiro = 'RT6143' AND id_cedula = '1100888299';
-- retirado RT6967 | cedula 1101598119
UPDATE retirado SET fecha_ingreso = '04/09/2023', fecha_retiro = '22/09/2023' WHERE id_retiro = 'RT6967' AND id_cedula = '1101598119';
-- retirado RT7360 | cedula 1007775870
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '23/05/2022' WHERE id_retiro = 'RT7360' AND id_cedula = '1007775870';
-- retirado RT3466 | cedula 4868423
UPDATE retirado SET fecha_ingreso = '11/07/2023', fecha_retiro = '16/09/2023' WHERE id_retiro = 'RT3466' AND id_cedula = '4868423';
-- retirado RT2215 | cedula 5920492
UPDATE retirado SET fecha_ingreso = '16/08/2022', fecha_retiro = '15/12/2022' WHERE id_retiro = 'RT2215' AND id_cedula = '5920492';
-- retirado RT2383 | cedula 1101992099
UPDATE retirado SET fecha_ingreso = '03/03/2014', fecha_retiro = '28/03/2014' WHERE id_retiro = 'RT2383' AND id_cedula = '1101992099';
-- retirado RT1788 | cedula 3821297
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '13/05/2014' WHERE id_retiro = 'RT1788' AND id_cedula = '3821297';
-- retirado RT7831 | cedula 1095829200
UPDATE retirado SET fecha_ingreso = '29/10/2014' WHERE id_retiro = 'RT7831' AND id_cedula = '1095829200';
-- retirado RT4209 | cedula 1062911726
UPDATE retirado SET fecha_ingreso = '14/02/2020', fecha_retiro = '19/09/2020' WHERE id_retiro = 'RT4209' AND id_cedula = '1062911726';
-- retirado RT4548 | cedula 1007470538
UPDATE retirado SET fecha_ingreso = '25/11/2022', fecha_retiro = '24/11/2022' WHERE id_retiro = 'RT4548' AND id_cedula = '1007470538';
-- retirado RT9501 | cedula 1005236583
UPDATE retirado SET fecha_ingreso = '18/04/2022', fecha_retiro = '19/04/2022' WHERE id_retiro = 'RT9501' AND id_cedula = '1005236583';
-- retirado RT9304 | cedula 1100975248
UPDATE retirado SET fecha_ingreso = '13/08/2019', fecha_retiro = '02/01/2020' WHERE id_retiro = 'RT9304' AND id_cedula = '1100975248';
-- retirado RT5540 | cedula 1098604110
UPDATE retirado SET fecha_ingreso = '15/09/2015' WHERE id_retiro = 'RT5540' AND id_cedula = '1098604110';
-- retirado RT3811 | cedula 1095928039
UPDATE retirado SET fecha_ingreso = '01/12/2020', fecha_retiro = '19/08/2021' WHERE id_retiro = 'RT3811' AND id_cedula = '1095928039';
-- retirado RT7063 | cedula 1098621162
UPDATE retirado SET fecha_ingreso = '06/08/2015' WHERE id_retiro = 'RT7063' AND id_cedula = '1098621162';
-- retirado RT2680 | cedula 1097612814
UPDATE retirado SET fecha_ingreso = '06/06/2023', fecha_retiro = '06/12/2023' WHERE id_retiro = 'RT2680' AND id_cedula = '1097612814';
-- retirado RT2674 | cedula 1098641679
UPDATE retirado SET fecha_ingreso = '08/09/2020', fecha_retiro = '07/10/2020' WHERE id_retiro = 'RT2674' AND id_cedula = '1098641679';
-- retirado RT5304 | cedula 1098608615
UPDATE retirado SET fecha_ingreso = '26/10/2015', fecha_retiro = '15/12/2015' WHERE id_retiro = 'RT5304' AND id_cedula = '1098608615';
-- retirado RT8777 | cedula 1005290567
UPDATE retirado SET fecha_ingreso = '06/09/2021', fecha_retiro = '02/11/2021' WHERE id_retiro = 'RT8777' AND id_cedula = '1005290567';
-- retirado RT8845 | cedula 1095797575
UPDATE retirado SET fecha_ingreso = '05/04/2013' WHERE id_retiro = 'RT8845' AND id_cedula = '1095797575';
-- retirado RT5060 | cedula 1096959790
UPDATE retirado SET fecha_retiro = '05/09/2021' WHERE id_retiro = 'RT5060' AND id_cedula = '1096959790';
-- retirado RT5974 | cedula 1005372360
UPDATE retirado SET fecha_ingreso = '25/01/2024', fecha_retiro = '18/08/2023' WHERE id_retiro = 'RT5974' AND id_cedula = '1005372360';
-- retirado RT4175 | cedula 1005372360
UPDATE retirado SET fecha_ingreso = '13/10/2023', fecha_retiro = '13/01/2024' WHERE id_retiro = 'RT4175' AND id_cedula = '1005372360';
-- retirado RT2725 | cedula 1095916723
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '09/06/2023' WHERE id_retiro = 'RT2725' AND id_cedula = '1095916723';
-- retirado RT6686 | cedula 1102373658
UPDATE retirado SET fecha_ingreso = '18/02/2022', fecha_retiro = '01/10/2023' WHERE id_retiro = 'RT6686' AND id_cedula = '1102373658';
-- retirado RT1734 | cedula 1007769720
UPDATE retirado SET fecha_ingreso = '03/10/2022', fecha_retiro = '16/09/2022' WHERE id_retiro = 'RT1734' AND id_cedula = '1007769720';
-- retirado RT3538 | cedula 1007769720
UPDATE retirado SET fecha_ingreso = '03/10/2022', fecha_retiro = '04/01/2023' WHERE id_retiro = 'RT3538' AND id_cedula = '1007769720';
-- retirado RT1896 | cedula 1007769720
UPDATE retirado SET fecha_ingreso = '12/01/2023', fecha_retiro = '12/12/2023' WHERE id_retiro = 'RT1896' AND id_cedula = '1007769720';
-- retirado RT2335 | cedula 1095943614
UPDATE retirado SET fecha_ingreso = '20/04/2021', fecha_retiro = '16/06/2021' WHERE id_retiro = 'RT2335' AND id_cedula = '1095943614';
-- retirado RT1531 | cedula 1095928701
UPDATE retirado SET fecha_ingreso = '21/10/2014' WHERE id_retiro = 'RT1531' AND id_cedula = '1095928701';
-- retirado RT6971 | cedula 1102365320
UPDATE retirado SET fecha_ingreso = '07/05/2018', fecha_retiro = '06/06/2019' WHERE id_retiro = 'RT6971' AND id_cedula = '1102365320';
-- retirado RT6565 | cedula 1094532085
UPDATE retirado SET fecha_ingreso = '24/10/2022', fecha_retiro = '01/01/2023' WHERE id_retiro = 'RT6565' AND id_cedula = '1094532085';
-- retirado RT1849 | cedula 1005449244
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '02/05/2022' WHERE id_retiro = 'RT1849' AND id_cedula = '1005449244';
-- retirado RT8228 | cedula 91161438
UPDATE retirado SET fecha_ingreso = '19/07/2022', fecha_retiro = '21/07/2022' WHERE id_retiro = 'RT8228' AND id_cedula = '91161438';
-- retirado RT6060 | cedula 5255222
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '08/11/2023' WHERE id_retiro = 'RT6060' AND id_cedula = '5255222';
-- retirado RT8491 | cedula 13743729
UPDATE retirado SET fecha_ingreso = '18/04/2015', fecha_retiro = '12/12/2023' WHERE id_retiro = 'RT8491' AND id_cedula = '13743729';
-- retirado RT6288 | cedula 4948279
UPDATE retirado SET fecha_ingreso = '22/11/2022', fecha_retiro = '22/01/2023' WHERE id_retiro = 'RT6288' AND id_cedula = '4948279';
-- retirado RT8474 | cedula 1098822150
UPDATE retirado SET fecha_ingreso = '06/10/2020', fecha_retiro = '15/06/2021' WHERE id_retiro = 'RT8474' AND id_cedula = '1098822150';
-- retirado RT3254 | cedula 1094352496
UPDATE retirado SET fecha_ingreso = '08/04/2021', fecha_retiro = '10/04/2021' WHERE id_retiro = 'RT3254' AND id_cedula = '1094352496';
-- retirado RT2308 | cedula 1098763864
UPDATE retirado SET fecha_ingreso = '04/02/2016', fecha_retiro = '01/07/2017' WHERE id_retiro = 'RT2308' AND id_cedula = '1098763864';
-- retirado RT8729 | cedula 836659000000000
UPDATE retirado SET fecha_ingreso = '09/10/2019', fecha_retiro = '23/01/2021' WHERE id_retiro = 'RT8729' AND id_cedula = '836659000000000';
-- retirado RT9311 | cedula 1095838000
UPDATE retirado SET fecha_ingreso = '16/03/2017', fecha_retiro = '01/06/2017' WHERE id_retiro = 'RT9311' AND id_cedula = '1095838000';
-- retirado RT2538 | cedula 1102376805
UPDATE retirado SET fecha_ingreso = '26/10/2015', fecha_retiro = '30/04/2016' WHERE id_retiro = 'RT2538' AND id_cedula = '1102376805';
-- retirado RT5492 | cedula 1095831308
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '01/08/2022' WHERE id_retiro = 'RT5492' AND id_cedula = '1095831308';
-- retirado RT7736 | cedula 1095924114
UPDATE retirado SET fecha_ingreso = '23/12/2014' WHERE id_retiro = 'RT7736' AND id_cedula = '1095924114';
-- retirado RT5688 | cedula 1098815659
UPDATE retirado SET fecha_ingreso = '17/01/2023', fecha_retiro = '17/07/2023' WHERE id_retiro = 'RT5688' AND id_cedula = '1098815659';
-- retirado RT5559 | cedula 1098688683
UPDATE retirado SET fecha_ingreso = '14/10/2014', fecha_retiro = '15/12/2014' WHERE id_retiro = 'RT5559' AND id_cedula = '1098688683';
-- retirado RT6127 | cedula 1098738978
UPDATE retirado SET fecha_ingreso = '21/06/2016', fecha_retiro = '31/01/2017' WHERE id_retiro = 'RT6127' AND id_cedula = '1098738978';
-- retirado RT2831 | cedula 1098738978
UPDATE retirado SET fecha_ingreso = '07/02/2019', fecha_retiro = '01/05/2022' WHERE id_retiro = 'RT2831' AND id_cedula = '1098738978';
-- retirado RT2561 | cedula 1098698206
UPDATE retirado SET fecha_ingreso = '06/10/2016', fecha_retiro = '02/02/2017' WHERE id_retiro = 'RT2561' AND id_cedula = '1098698206';
-- retirado RT3738 | cedula 1096211331
UPDATE retirado SET fecha_ingreso = '29/01/2014', fecha_retiro = '30/06/2014' WHERE id_retiro = 'RT3738' AND id_cedula = '1096211331';
-- retirado RT6574 | cedula 1098711626
UPDATE retirado SET fecha_ingreso = '17/02/2015' WHERE id_retiro = 'RT6574' AND id_cedula = '1098711626';
-- retirado aa7c6705 | cedula 1095937814
UPDATE retirado SET fecha_ingreso = '24/08/2023', fecha_retiro = '31/03/2024' WHERE id_retiro = 'aa7c6705' AND id_cedula = '1095937814';
-- retirado e01aed7e | cedula 1063948811
UPDATE retirado SET fecha_ingreso = '02/10/2023', fecha_retiro = '01/04/2024' WHERE id_retiro = 'e01aed7e' AND id_cedula = '1063948811';
-- retirado 99ffedb9 | cedula 1122409117
UPDATE retirado SET fecha_ingreso = '01/02/2024', fecha_retiro = '01/04/2024' WHERE id_retiro = '99ffedb9' AND id_cedula = '1122409117';
-- retirado 10136fd2 | cedula 1004824012
UPDATE retirado SET fecha_ingreso = '11/01/2024', fecha_retiro = '18/03/2024' WHERE id_retiro = '10136fd2' AND id_cedula = '1004824012';
-- retirado 348179cd | cedula 1005340217
UPDATE retirado SET fecha_ingreso = '06/03/2024', fecha_retiro = '01/04/2024' WHERE id_retiro = '348179cd' AND id_cedula = '1005340217';
-- retirado 80ebae56 | cedula 1005162790
UPDATE retirado SET fecha_ingreso = '20/03/2024', fecha_retiro = '05/04/2024' WHERE id_retiro = '80ebae56' AND id_cedula = '1005162790';
-- retirado 2729634d | cedula 1005336879
UPDATE retirado SET fecha_ingreso = '05/12/2020', fecha_retiro = '15/04/2024' WHERE id_retiro = '2729634d' AND id_cedula = '1005336879';
-- retirado b6e90374 | cedula 1005155826
UPDATE retirado SET fecha_ingreso = '01/06/2022', fecha_retiro = '15/03/2024' WHERE id_retiro = 'b6e90374' AND id_cedula = '1005155826';
-- retirado b58d6db8 | cedula 1095948443
UPDATE retirado SET fecha_ingreso = '02/05/2022', fecha_retiro = '15/04/2024' WHERE id_retiro = 'b58d6db8' AND id_cedula = '1095948443';
-- retirado 3ef758a8 | cedula 1251543
UPDATE retirado SET fecha_ingreso = '23/01/2024', fecha_retiro = '05/04/2024' WHERE id_retiro = '3ef758a8' AND id_cedula = '1251543';
-- retirado 2ba207b8 | cedula 91517971
UPDATE retirado SET fecha_ingreso = '20/05/2021', fecha_retiro = '20/04/2024' WHERE id_retiro = '2ba207b8' AND id_cedula = '91517971';
-- retirado 9b50565b | cedula 1099371711
UPDATE retirado SET fecha_ingreso = '01/12/2021', fecha_retiro = '20/04/2024' WHERE id_retiro = '9b50565b' AND id_cedula = '1099371711';
-- retirado 10aff893 | cedula 1010049419
UPDATE retirado SET fecha_ingreso = '20/02/2024', fecha_retiro = '23/04/2024' WHERE id_retiro = '10aff893' AND id_cedula = '1010049419';
-- retirado 35bef4f1 | cedula 1005236832
UPDATE retirado SET fecha_ingreso = '22/04/2024', fecha_retiro = '26/04/2024' WHERE id_retiro = '35bef4f1' AND id_cedula = '1005236832';
-- retirado 15b794b0 | cedula 1192743216
UPDATE retirado SET fecha_ingreso = '20/03/2024', fecha_retiro = '26/04/2024' WHERE id_retiro = '15b794b0' AND id_cedula = '1192743216';
-- retirado bf32583b | cedula 1007715302
UPDATE retirado SET fecha_ingreso = '01/08/2023', fecha_retiro = '01/05/2024' WHERE id_retiro = 'bf32583b' AND id_cedula = '1007715302';
-- retirado e1d9c290 | cedula 1005289022
UPDATE retirado SET fecha_ingreso = '10/10/2023', fecha_retiro = '30/04/2024' WHERE id_retiro = 'e1d9c290' AND id_cedula = '1005289022';
-- retirado ee7b5308 | cedula 1005136377
UPDATE retirado SET fecha_ingreso = '03/10/2023', fecha_retiro = '30/04/2024' WHERE id_retiro = 'ee7b5308' AND id_cedula = '1005136377';
-- retirado 0f19d1e2 | cedula 1099734814
UPDATE retirado SET fecha_ingreso = '05/12/2023', fecha_retiro = '04/05/2024' WHERE id_retiro = '0f19d1e2' AND id_cedula = '1099734814';
-- retirado 36bca2c8 | cedula 1098756695
UPDATE retirado SET fecha_ingreso = '27/03/2020', fecha_retiro = '02/05/2024' WHERE id_retiro = '36bca2c8' AND id_cedula = '1098756695';
-- retirado 7f1d42ef | cedula 1098716949
UPDATE retirado SET fecha_ingreso = '12/01/2018', fecha_retiro = '01/05/2024' WHERE id_retiro = '7f1d42ef' AND id_cedula = '1098716949';
-- retirado d3c736e6 | cedula 1098648284
UPDATE retirado SET fecha_ingreso = '02/05/2024', fecha_retiro = '06/05/2024' WHERE id_retiro = 'd3c736e6' AND id_cedula = '1098648284';
-- retirado ae28cef9 | cedula 1097095153
UPDATE retirado SET fecha_ingreso = '06/03/2024', fecha_retiro = '06/05/2024' WHERE id_retiro = 'ae28cef9' AND id_cedula = '1097095153';
-- retirado a5b141a5 | cedula 1095916241
UPDATE retirado SET fecha_ingreso = '01/02/2024', fecha_retiro = '04/05/2024' WHERE id_retiro = 'a5b141a5' AND id_cedula = '1095916241';
-- retirado a1a78ea7 | cedula 1005371446
UPDATE retirado SET fecha_ingreso = '15/02/2024', fecha_retiro = '16/05/2024' WHERE id_retiro = 'a1a78ea7' AND id_cedula = '1005371446';
-- retirado 79ec8901 | cedula 1005281278
UPDATE retirado SET fecha_ingreso = '16/11/2023', fecha_retiro = '18/05/2024' WHERE id_retiro = '79ec8901' AND id_cedula = '1005281278';
-- retirado 9d5403b3 | cedula 1005539650
UPDATE retirado SET fecha_ingreso = '15/02/2024', fecha_retiro = '16/05/2024' WHERE id_retiro = '9d5403b3' AND id_cedula = '1005539650';
-- retirado f42c88ba | cedula 1193143191
UPDATE retirado SET fecha_ingreso = '06/03/2024', fecha_retiro = '16/05/2024' WHERE id_retiro = 'f42c88ba' AND id_cedula = '1193143191';
-- retirado a8b62af8 | cedula 1126427502
UPDATE retirado SET fecha_ingreso = '19/10/2022', fecha_retiro = '15/05/2024' WHERE id_retiro = 'a8b62af8' AND id_cedula = '1126427502';
-- retirado 704b6fd9 | cedula 1007401213
UPDATE retirado SET fecha_ingreso = '20/03/2024', fecha_retiro = '30/05/2024' WHERE id_retiro = '704b6fd9' AND id_cedula = '1007401213';
-- retirado 67633f5a | cedula 1098673104
UPDATE retirado SET fecha_ingreso = '11/01/2024', fecha_retiro = '01/06/2024' WHERE id_retiro = '67633f5a' AND id_cedula = '1098673104';
-- retirado 263b0c31 | cedula 1102385966
UPDATE retirado SET fecha_ingreso = '21/11/2023', fecha_retiro = '30/05/2024' WHERE id_retiro = '263b0c31' AND id_cedula = '1102385966';
-- retirado 00e9f15f | cedula 1003334809
UPDATE retirado SET fecha_ingreso = '13/02/2024', fecha_retiro = '24/05/2024' WHERE id_retiro = '00e9f15f' AND id_cedula = '1003334809';
-- retirado b6e88014 | cedula 1005328954
UPDATE retirado SET fecha_ingreso = '09/03/2022', fecha_retiro = '01/06/2024' WHERE id_retiro = 'b6e88014' AND id_cedula = '1005328954';
-- retirado 75f00830 | cedula 1005327585
UPDATE retirado SET fecha_ingreso = '12/10/2023', fecha_retiro = '12/06/2024' WHERE id_retiro = '75f00830' AND id_cedula = '1005327585';
-- retirado ca6ec75b | cedula 1003335012
UPDATE retirado SET fecha_ingreso = '08/05/2024', fecha_retiro = '01/06/2024' WHERE id_retiro = 'ca6ec75b' AND id_cedula = '1003335012';
-- retirado 53291df3 | cedula 1005109559
UPDATE retirado SET fecha_ingreso = '15/03/2022', fecha_retiro = '06/06/2024' WHERE id_retiro = '53291df3' AND id_cedula = '1005109559';
-- retirado 7ece6ed5 | cedula 1005461260
UPDATE retirado SET fecha_ingreso = '26/07/2022', fecha_retiro = '11/06/2024' WHERE id_retiro = '7ece6ed5' AND id_cedula = '1005461260';
-- retirado fdc03e94 | cedula 60264058
UPDATE retirado SET fecha_ingreso = '01/07/2013', fecha_retiro = '14/06/2024' WHERE id_retiro = 'fdc03e94' AND id_cedula = '60264058';
-- retirado 15c7df04 | cedula 1007900909
UPDATE retirado SET fecha_ingreso = '11/06/2024', fecha_retiro = '15/06/2024' WHERE id_retiro = '15c7df04' AND id_cedula = '1007900909';
-- retirado ec3736c0 | cedula 1098627154
UPDATE retirado SET fecha_ingreso = '17/01/2024', fecha_retiro = '17/06/2024' WHERE id_retiro = 'ec3736c0' AND id_cedula = '1098627154';
-- retirado 1ae37c04 | cedula 1098604466
UPDATE retirado SET fecha_ingreso = '26/02/2024', fecha_retiro = '17/06/2024' WHERE id_retiro = '1ae37c04' AND id_cedula = '1098604466';
-- retirado 5ba75683 | cedula 6833704
UPDATE retirado SET fecha_ingreso = '20/03/2024', fecha_retiro = '15/06/2024' WHERE id_retiro = '5ba75683' AND id_cedula = '6833704';
-- retirado 7024d189 | cedula 1065881437
UPDATE retirado SET fecha_ingreso = '11/06/2024', fecha_retiro = '14/06/2024' WHERE id_retiro = '7024d189' AND id_cedula = '1065881437';
-- retirado 87633b1a | cedula 1124055390
UPDATE retirado SET fecha_ingreso = '26/02/2024', fecha_retiro = '25/06/2024' WHERE id_retiro = '87633b1a' AND id_cedula = '1124055390';
-- retirado 8367a172 | cedula 1005209693
UPDATE retirado SET fecha_ingreso = '14/12/2023', fecha_retiro = '28/06/2024' WHERE id_retiro = '8367a172' AND id_cedula = '1005209693';
-- retirado 57448ec7 | cedula 1005327469
UPDATE retirado SET fecha_ingreso = '21/12/2023', fecha_retiro = '30/06/2024' WHERE id_retiro = '57448ec7' AND id_cedula = '1005327469';
-- retirado badc84d2 | cedula 1098769935
UPDATE retirado SET fecha_ingreso = '23/02/2023', fecha_retiro = '02/07/2024' WHERE id_retiro = 'badc84d2' AND id_cedula = '1098769935';
-- retirado 6fa04e0d | cedula 1098200294
UPDATE retirado SET fecha_ingreso = '08/02/2024', fecha_retiro = '06/07/2024' WHERE id_retiro = '6fa04e0d' AND id_cedula = '1098200294';
-- retirado bf45acff | cedula 5496677
UPDATE retirado SET fecha_ingreso = '10/04/2024', fecha_retiro = '08/07/2024' WHERE id_retiro = 'bf45acff' AND id_cedula = '5496677';
-- retirado c7b45cf2 | cedula 1000046788
UPDATE retirado SET fecha_ingreso = '08/02/2024', fecha_retiro = '11/07/2024' WHERE id_retiro = 'c7b45cf2' AND id_cedula = '1000046788';
-- retirado bc5b0a18 | cedula 1095940311
UPDATE retirado SET fecha_ingreso = '04/03/2024', fecha_retiro = '03/03/2024' WHERE id_retiro = 'bc5b0a18' AND id_cedula = '1095940311';
-- retirado 493c9839 | cedula 1098733100
UPDATE retirado SET fecha_ingreso = '24/06/2024', fecha_retiro = '11/07/2024' WHERE id_retiro = '493c9839' AND id_cedula = '1098733100';
-- retirado 0d39e167 | cedula 1005152959
UPDATE retirado SET fecha_ingreso = '06/03/2024', fecha_retiro = '20/06/2024' WHERE id_retiro = '0d39e167' AND id_cedula = '1005152959';
-- retirado adb50776 | cedula 1003167676
UPDATE retirado SET fecha_ingreso = '13/02/2024', fecha_retiro = '12/07/2024' WHERE id_retiro = 'adb50776' AND id_cedula = '1003167676';
-- retirado 7b12f4dd | cedula 1116799172
UPDATE retirado SET fecha_ingreso = '15/05/2023', fecha_retiro = '17/07/2024' WHERE id_retiro = '7b12f4dd' AND id_cedula = '1116799172';
-- retirado 5d449ac3 | cedula 1065609442
UPDATE retirado SET fecha_ingreso = '24/05/2016', fecha_retiro = '26/07/2024' WHERE id_retiro = '5d449ac3' AND id_cedula = '1065609442';
-- retirado 2de0e4df | cedula 10077357486
UPDATE retirado SET fecha_ingreso = '28/05/2024', fecha_retiro = '26/07/2024' WHERE id_retiro = '2de0e4df' AND id_cedula = '10077357486';
-- retirado 9d8cf113 | cedula 1003258570
UPDATE retirado SET fecha_ingreso = '29/01/2024', fecha_retiro = '23/07/2024' WHERE id_retiro = '9d8cf113' AND id_cedula = '1003258570';
-- retirado 502c630e | cedula 1065232462
UPDATE retirado SET fecha_ingreso = '06/03/2024', fecha_retiro = '29/07/2024' WHERE id_retiro = '502c630e' AND id_cedula = '1065232462';
-- retirado 79b016a2 | cedula 91185357
UPDATE retirado SET fecha_ingreso = '24/07/2024', fecha_retiro = '27/07/2024' WHERE id_retiro = '79b016a2' AND id_cedula = '91185357';
-- retirado b4138814 | cedula 1100895396
UPDATE retirado SET fecha_ingreso = '23/11/2023', fecha_retiro = '22/07/2024' WHERE id_retiro = 'b4138814' AND id_cedula = '1100895396';
-- retirado 763bbaee | cedula 1095934331
UPDATE retirado SET fecha_ingreso = '24/07/2024', fecha_retiro = '01/08/2024' WHERE id_retiro = '763bbaee' AND id_cedula = '1095934331';
-- retirado 6e9f4e3a | cedula 1014182306
UPDATE retirado SET fecha_ingreso = '08/04/2024', fecha_retiro = '30/07/2024' WHERE id_retiro = '6e9f4e3a' AND id_cedula = '1014182306';
-- retirado 9b4850d5 | cedula 1095935838
UPDATE retirado SET fecha_ingreso = '05/06/2023', fecha_retiro = '31/07/2024' WHERE id_retiro = '9b4850d5' AND id_cedula = '1095935838';
-- retirado 2e0b02f3 | cedula 1176763
UPDATE retirado SET fecha_ingreso = '16/11/2023', fecha_retiro = '01/08/2024' WHERE id_retiro = '2e0b02f3' AND id_cedula = '1176763';
-- retirado 0d2adb79 | cedula 100143304011982
UPDATE retirado SET fecha_ingreso = '10/02/2021', fecha_retiro = '01/08/2024' WHERE id_retiro = '0d2adb79' AND id_cedula = '100143304011982';
-- retirado 756c4a49 | cedula 1004161830
UPDATE retirado SET fecha_ingreso = '13/07/2022', fecha_retiro = '01/08/2024' WHERE id_retiro = '756c4a49' AND id_cedula = '1004161830';
-- retirado 8887dfb8 | cedula 1102722473
UPDATE retirado SET fecha_ingreso = '04/07/2024', fecha_retiro = '02/08/2024' WHERE id_retiro = '8887dfb8' AND id_cedula = '1102722473';
-- retirado d5cf5b52 | cedula 1005108235
UPDATE retirado SET fecha_ingreso = '26/06/2024', fecha_retiro = '01/08/2024' WHERE id_retiro = 'd5cf5b52' AND id_cedula = '1005108235';
-- retirado 5b058d7d | cedula 1232892509
UPDATE retirado SET fecha_ingreso = '05/08/2024', fecha_retiro = '09/08/2024' WHERE id_retiro = '5b058d7d' AND id_cedula = '1232892509';
-- retirado 8ffe0dda | cedula 1098649865
UPDATE retirado SET fecha_ingreso = '06/02/2024', fecha_retiro = '03/08/2024' WHERE id_retiro = '8ffe0dda' AND id_cedula = '1098649865';
-- retirado 0e7dd381 | cedula 1095939269
UPDATE retirado SET fecha_ingreso = '06/09/2021', fecha_retiro = '06/08/2024' WHERE id_retiro = '0e7dd381' AND id_cedula = '1095939269';
-- retirado 8cd00d9f | cedula 1093911471
UPDATE retirado SET fecha_ingreso = '08/09/2020', fecha_retiro = '05/08/2024' WHERE id_retiro = '8cd00d9f' AND id_cedula = '1093911471';
-- retirado ff1070f4 | cedula 1062904842
UPDATE retirado SET fecha_ingreso = '16/01/2024', fecha_retiro = '09/08/2024' WHERE id_retiro = 'ff1070f4' AND id_cedula = '1062904842';
-- retirado a6b0baff | cedula 1095957238
UPDATE retirado SET fecha_ingreso = '12/03/2024', fecha_retiro = '10/08/2024' WHERE id_retiro = 'a6b0baff' AND id_cedula = '1095957238';
-- retirado 7c53e6aa | cedula 5135419
UPDATE retirado SET fecha_ingreso = '03/05/2023', fecha_retiro = '01/08/2024' WHERE id_retiro = '7c53e6aa' AND id_cedula = '5135419';
-- retirado e2202f69 | cedula 91512215
UPDATE retirado SET fecha_ingreso = '27/08/2020', fecha_retiro = '16/08/2024' WHERE id_retiro = 'e2202f69' AND id_cedula = '91512215';
-- retirado 52085260 | cedula 37720798
UPDATE retirado SET fecha_ingreso = '04/03/2013', fecha_retiro = '16/08/2024' WHERE id_retiro = '52085260' AND id_cedula = '37720798';
-- retirado d29d767e | cedula 1098676271
UPDATE retirado SET fecha_ingreso = '10/04/2024', fecha_retiro = '16/08/2024' WHERE id_retiro = 'd29d767e' AND id_cedula = '1098676271';
-- retirado c3999a5f | cedula 1096538111
UPDATE retirado SET fecha_ingreso = '11/01/2024', fecha_retiro = '06/08/2024' WHERE id_retiro = 'c3999a5f' AND id_cedula = '1096538111';
-- retirado 3cb0cec9 | cedula 1098779918
UPDATE retirado SET fecha_ingreso = '26/02/2024', fecha_retiro = '25/08/2024' WHERE id_retiro = '3cb0cec9' AND id_cedula = '1098779918';
-- retirado 27870b45 | cedula 1005329357
UPDATE retirado SET fecha_ingreso = '20/02/2024', fecha_retiro = '24/08/2024' WHERE id_retiro = '27870b45' AND id_cedula = '1005329357';
-- retirado 383276f4 | cedula 91487619
UPDATE retirado SET fecha_ingreso = '17/01/2014', fecha_retiro = '22/08/2024' WHERE id_retiro = '383276f4' AND id_cedula = '91487619';
-- retirado 46d96fc0 | cedula 91259663
UPDATE retirado SET fecha_ingreso = '26/07/2012', fecha_retiro = '26/08/2024' WHERE id_retiro = '46d96fc0' AND id_cedula = '91259663';
-- retirado e38167f6 | cedula 7209323
UPDATE retirado SET fecha_ingreso = '23/09/2023', fecha_retiro = '29/08/2024' WHERE id_retiro = 'e38167f6' AND id_cedula = '7209323';
-- retirado 23a2d1cb | cedula 1099374488
UPDATE retirado SET fecha_ingreso = '15/04/2021', fecha_retiro = '26/08/2024' WHERE id_retiro = '23a2d1cb' AND id_cedula = '1099374488';
-- retirado 6fa9843d | cedula 1010185885
UPDATE retirado SET fecha_ingreso = '09/12/2019', fecha_retiro = '01/09/2024' WHERE id_retiro = '6fa9843d' AND id_cedula = '1010185885';
-- retirado 15ac2081 | cedula 1005061514
UPDATE retirado SET fecha_ingreso = '23/01/2024', fecha_retiro = '30/08/2024' WHERE id_retiro = '15ac2081' AND id_cedula = '1005061514';
-- retirado 566d5b8c | cedula 1004925404
UPDATE retirado SET fecha_ingreso = '15/06/2022', fecha_retiro = '27/08/2024' WHERE id_retiro = '566d5b8c' AND id_cedula = '1004925404';
-- retirado f4cc99ea | cedula 1098647256
UPDATE retirado SET fecha_ingreso = '24/02/2020', fecha_retiro = '02/09/2024' WHERE id_retiro = 'f4cc99ea' AND id_cedula = '1098647256';
-- retirado f7a35aa1 | cedula 1095946112
UPDATE retirado SET fecha_ingreso = '19/05/2017', fecha_retiro = '01/09/2024' WHERE id_retiro = 'f7a35aa1' AND id_cedula = '1095946112';
-- retirado 89cf1fdc | cedula 1007735388
UPDATE retirado SET fecha_ingreso = '04/07/2024', fecha_retiro = '09/09/2024' WHERE id_retiro = '89cf1fdc' AND id_cedula = '1007735388';
-- retirado 0cf564ef | cedula 1098674763
UPDATE retirado SET fecha_ingreso = '03/10/2022', fecha_retiro = '30/08/2024' WHERE id_retiro = '0cf564ef' AND id_cedula = '1098674763';
-- retirado 801d930c | cedula 63488969
UPDATE retirado SET fecha_ingreso = '20/09/2017', fecha_retiro = '16/09/2024' WHERE id_retiro = '801d930c' AND id_cedula = '63488969';
-- retirado a5893cd2 | cedula 1127947881
UPDATE retirado SET fecha_ingreso = '11/12/2017', fecha_retiro = '19/09/2024' WHERE id_retiro = 'a5893cd2' AND id_cedula = '1127947881';
-- retirado 02c29ba2 | cedula 1095950032
UPDATE retirado SET fecha_ingreso = '22/09/2023', fecha_retiro = '20/09/2024' WHERE id_retiro = '02c29ba2' AND id_cedula = '1095950032';
-- retirado 8d94a37e | cedula 1095944724
UPDATE retirado SET fecha_ingreso = '23/01/2024', fecha_retiro = '22/09/2024' WHERE id_retiro = '8d94a37e' AND id_cedula = '1095944724';
-- retirado 74d2ef52 | cedula 1066093663
UPDATE retirado SET fecha_ingreso = '02/11/2023', fecha_retiro = '18/09/2024' WHERE id_retiro = '74d2ef52' AND id_cedula = '1066093663';
-- retirado fd7c6180 | cedula 1005153018
UPDATE retirado SET fecha_ingreso = '24/07/2024', fecha_retiro = '23/09/2024' WHERE id_retiro = 'fd7c6180' AND id_cedula = '1005153018';
-- retirado b97b7801 | cedula 1095795504
UPDATE retirado SET fecha_ingreso = '25/04/2023', fecha_retiro = '30/09/2024' WHERE id_retiro = 'b97b7801' AND id_cedula = '1095795504';
-- retirado 9735fed0 | cedula 1007371337
UPDATE retirado SET fecha_ingreso = '05/12/2023', fecha_retiro = '30/09/2024' WHERE id_retiro = '9735fed0' AND id_cedula = '1007371337';
-- retirado 73ef3aa4 | cedula 91536065
UPDATE retirado SET fecha_ingreso = '01/05/2022', fecha_retiro = '30/09/2024' WHERE id_retiro = '73ef3aa4' AND id_cedula = '91536065';
-- retirado d5dae665 | cedula 1095838464
UPDATE retirado SET fecha_ingreso = '24/10/2023', fecha_retiro = '01/10/2024' WHERE id_retiro = 'd5dae665' AND id_cedula = '1095838464';
-- retirado 5fa97589 | cedula 1063620900
UPDATE retirado SET fecha_ingreso = '27/12/2021', fecha_retiro = '15/09/2024' WHERE id_retiro = '5fa97589' AND id_cedula = '1063620900';
-- retirado a943af09 | cedula 1006426401
UPDATE retirado SET fecha_ingreso = '13/08/2024', fecha_retiro = '12/10/2024' WHERE id_retiro = 'a943af09' AND id_cedula = '1006426401';
-- retirado b218a6c0 | cedula 1005161625
UPDATE retirado SET fecha_ingreso = '15/08/2024', fecha_retiro = '14/10/2024' WHERE id_retiro = 'b218a6c0' AND id_cedula = '1005161625';
-- retirado 6202362b | cedula 5472091
UPDATE retirado SET fecha_ingreso = '23/11/2023', fecha_retiro = '16/10/2024' WHERE id_retiro = '6202362b' AND id_cedula = '5472091';
-- retirado 295c6bbb | cedula 1095949619
UPDATE retirado SET fecha_ingreso = '02/05/2024', fecha_retiro = '09/10/2024' WHERE id_retiro = '295c6bbb' AND id_cedula = '1095949619';
-- retirado dd397418 | cedula 1127913059
UPDATE retirado SET fecha_ingreso = '11/06/2024', fecha_retiro = '21/10/2024' WHERE id_retiro = 'dd397418' AND id_cedula = '1127913059';
-- retirado 80dae415 | cedula 1097093432
UPDATE retirado SET fecha_ingreso = '13/08/2024', fecha_retiro = '07/10/2024' WHERE id_retiro = '80dae415' AND id_cedula = '1097093432';
-- retirado bd5b088c | cedula 1101753855
UPDATE retirado SET fecha_ingreso = '10/10/2024', fecha_retiro = '23/10/2024' WHERE id_retiro = 'bd5b088c' AND id_cedula = '1101753855';
-- retirado 6cd8642b | cedula 1098611431
UPDATE retirado SET fecha_ingreso = '06/07/2022', fecha_retiro = '22/10/2024' WHERE id_retiro = '6cd8642b' AND id_cedula = '1098611431';
-- retirado 0b31cb9a | cedula 1098703920
UPDATE retirado SET fecha_ingreso = '17/01/2024', fecha_retiro = '24/10/2024' WHERE id_retiro = '0b31cb9a' AND id_cedula = '1098703920';
-- retirado 8ea40b45 | cedula 1234339324
UPDATE retirado SET fecha_ingreso = '07/10/2024', fecha_retiro = '24/10/2024' WHERE id_retiro = '8ea40b45' AND id_cedula = '1234339324';
-- retirado d85325a7 | cedula 1005281666
UPDATE retirado SET fecha_ingreso = '18/02/2022', fecha_retiro = '21/10/2024' WHERE id_retiro = 'd85325a7' AND id_cedula = '1005281666';
-- retirado ac6a2c8b | cedula 63325400
UPDATE retirado SET fecha_ingreso = '22/04/2024', fecha_retiro = '01/11/2024' WHERE id_retiro = 'ac6a2c8b' AND id_cedula = '63325400';
-- retirado 1db8342c | cedula 91536394
UPDATE retirado SET fecha_ingreso = '19/12/2019', fecha_retiro = '21/10/2024' WHERE id_retiro = '1db8342c' AND id_cedula = '91536394';
-- retirado d7380566 | cedula 1095915984
UPDATE retirado SET fecha_ingreso = '01/10/2024', fecha_retiro = '01/11/2024' WHERE id_retiro = 'd7380566' AND id_cedula = '1095915984';
-- retirado 59eefccc | cedula 1098071560
UPDATE retirado SET fecha_ingreso = '02/05/2024', fecha_retiro = '01/11/2024' WHERE id_retiro = '59eefccc' AND id_cedula = '1098071560';
-- retirado b74179f7 | cedula 1098725439
UPDATE retirado SET fecha_ingreso = '17/10/2015', fecha_retiro = '01/11/2024' WHERE id_retiro = 'b74179f7' AND id_cedula = '1098725439';
-- retirado a873ecf6 | cedula 1005541785
UPDATE retirado SET fecha_ingreso = '13/08/2024', fecha_retiro = '01/11/2024' WHERE id_retiro = 'a873ecf6' AND id_cedula = '1005541785';
-- retirado 1a165dcd | cedula 4610716
UPDATE retirado SET fecha_ingreso = '01/10/2024', fecha_retiro = '05/11/2024' WHERE id_retiro = '1a165dcd' AND id_cedula = '4610716';
-- retirado 4fbdc0b0 | cedula 63543638
UPDATE retirado SET fecha_ingreso = '08/01/2014', fecha_retiro = '14/11/2024' WHERE id_retiro = '4fbdc0b0' AND id_cedula = '63543638';
-- retirado 90afe323 | cedula 1095830827
UPDATE retirado SET fecha_ingreso = '12/09/2023', fecha_retiro = '05/11/2024' WHERE id_retiro = '90afe323' AND id_cedula = '1095830827';
-- retirado e43f5936 | cedula 1091683312
UPDATE retirado SET fecha_ingreso = '11/01/2024', fecha_retiro = '07/11/2024' WHERE id_retiro = 'e43f5936' AND id_cedula = '1091683312';
-- retirado a2a3b124 | cedula 91527766
UPDATE retirado SET fecha_ingreso = '03/10/2022', fecha_retiro = '07/11/2024' WHERE id_retiro = 'a2a3b124' AND id_cedula = '91527766';
-- retirado 54fe0dfb | cedula 1098750363
UPDATE retirado SET fecha_ingreso = '18/03/2024', fecha_retiro = '15/11/2024' WHERE id_retiro = '54fe0dfb' AND id_cedula = '1098750363';
-- retirado c99ba04c | cedula 1007470538
UPDATE retirado SET fecha_ingreso = '25/11/2022', fecha_retiro = '31/10/2024' WHERE id_retiro = 'c99ba04c' AND id_cedula = '1007470538';
-- retirado 6ae9632e | cedula 1094581619
UPDATE retirado SET fecha_ingreso = '13/08/2024', fecha_retiro = '18/11/2024' WHERE id_retiro = '6ae9632e' AND id_cedula = '1094581619';
-- retirado 11dc5774 | cedula 1100893519
UPDATE retirado SET fecha_ingreso = '03/02/2020', fecha_retiro = '01/12/2024' WHERE id_retiro = '11dc5774' AND id_cedula = '1100893519';
-- retirado ca15e634 | cedula 1098765043
UPDATE retirado SET fecha_ingreso = '14/11/2024', fecha_retiro = '30/11/2024' WHERE id_retiro = 'ca15e634' AND id_cedula = '1098765043';
-- retirado 2d47c1ee | cedula 1098698435
UPDATE retirado SET fecha_ingreso = '14/11/2024', fecha_retiro = '30/11/2024' WHERE id_retiro = '2d47c1ee' AND id_cedula = '1098698435';
-- retirado b0c2ba81 | cedula 1094266549
UPDATE retirado SET fecha_ingreso = '22/04/2024', fecha_retiro = '02/12/2024' WHERE id_retiro = 'b0c2ba81' AND id_cedula = '1094266549';
-- retirado 3cec1161 | cedula 1098631100
UPDATE retirado SET fecha_ingreso = '20/01/2023', fecha_retiro = '04/12/2024' WHERE id_retiro = '3cec1161' AND id_cedula = '1098631100';
-- retirado f227e696 | cedula 1005331332
UPDATE retirado SET fecha_ingreso = '26/11/2024', fecha_retiro = '13/12/2024' WHERE id_retiro = 'f227e696' AND id_cedula = '1005331332';
-- retirado 5fb7ad50 | cedula 1095840246
UPDATE retirado SET fecha_ingreso = '14/11/2024', fecha_retiro = '04/12/2024' WHERE id_retiro = '5fb7ad50' AND id_cedula = '1095840246';
-- retirado 21bd48df | cedula 1020467674
UPDATE retirado SET fecha_ingreso = '24/01/2022', fecha_retiro = '07/12/2024' WHERE id_retiro = '21bd48df' AND id_cedula = '1020467674';
-- retirado be459c0c | cedula 5278095
UPDATE retirado SET fecha_ingreso = '18/02/2022', fecha_retiro = '05/12/2024' WHERE id_retiro = 'be459c0c' AND id_cedula = '5278095';
-- retirado 56071c71 | cedula 1098766167
UPDATE retirado SET fecha_ingreso = '16/12/2024', fecha_retiro = '17/12/2024' WHERE id_retiro = '56071c71' AND id_cedula = '1098766167';
-- retirado 53b0f7d5 | cedula 1064838167
UPDATE retirado SET fecha_ingreso = '19/06/2024', fecha_retiro = '18/12/2024' WHERE id_retiro = '53b0f7d5' AND id_cedula = '1064838167';
-- retirado 27bb31d7 | cedula 1065872598
UPDATE retirado SET fecha_ingreso = '19/06/2024', fecha_retiro = '18/12/2024' WHERE id_retiro = '27bb31d7' AND id_cedula = '1065872598';
-- retirado e115e60e | cedula 39580914
UPDATE retirado SET fecha_ingreso = '25/07/2024', fecha_retiro = '20/12/2024' WHERE id_retiro = 'e115e60e' AND id_cedula = '39580914';
-- retirado a254fbaf | cedula 1099736437
UPDATE retirado SET fecha_ingreso = '28/10/2024', fecha_retiro = '23/12/2024' WHERE id_retiro = 'a254fbaf' AND id_cedula = '1099736437';
-- retirado 81585a43 | cedula 1095936020
UPDATE retirado SET fecha_ingreso = '20/03/2024', fecha_retiro = '15/12/2024' WHERE id_retiro = '81585a43' AND id_cedula = '1095936020';
-- retirado 91c3f516 | cedula 1102383462
UPDATE retirado SET fecha_ingreso = '10/12/2024', fecha_retiro = '27/12/2024' WHERE id_retiro = '91c3f516' AND id_cedula = '1102383462';
-- retirado 39c07354 | cedula 1098819686
UPDATE retirado SET fecha_ingreso = '19/06/2024', fecha_retiro = '30/12/2024' WHERE id_retiro = '39c07354' AND id_cedula = '1098819686';
-- retirado 5492c3a2 | cedula 1098476083
UPDATE retirado SET fecha_ingreso = '22/04/2024', fecha_retiro = '30/12/2024' WHERE id_retiro = '5492c3a2' AND id_cedula = '1098476083';
-- retirado 9ed9dd61 | cedula 1005293842
UPDATE retirado SET fecha_ingreso = '06/06/2023', fecha_retiro = '02/01/2025' WHERE id_retiro = '9ed9dd61' AND id_cedula = '1005293842';
-- retirado 59bdf3da | cedula 1003091389
UPDATE retirado SET fecha_ingreso = '20/03/2024', fecha_retiro = '18/12/2024' WHERE id_retiro = '59bdf3da' AND id_cedula = '1003091389';
-- retirado 37bae5ba | cedula 1065244507
UPDATE retirado SET fecha_ingreso = '19/06/2024', fecha_retiro = '19/12/2024' WHERE id_retiro = '37bae5ba' AND id_cedula = '1065244507';
-- retirado fb0c1b5c | cedula 7563328
UPDATE retirado SET fecha_ingreso = '28/10/2024', fecha_retiro = '27/12/2024' WHERE id_retiro = 'fb0c1b5c' AND id_cedula = '7563328';
-- retirado b4fc22b3 | cedula 1005776694
UPDATE retirado SET fecha_ingreso = '12/12/2024', fecha_retiro = '19/12/2024' WHERE id_retiro = 'b4fc22b3' AND id_cedula = '1005776694';
-- retirado ae554821 | cedula 1097911574
UPDATE retirado SET fecha_ingreso = '12/12/2024', fecha_retiro = '16/12/2024' WHERE id_retiro = 'ae554821' AND id_cedula = '1097911574';
-- retirado 2efe3fbf | cedula 91537121
UPDATE retirado SET fecha_ingreso = '13/08/2019', fecha_retiro = '15/01/2025' WHERE id_retiro = '2efe3fbf' AND id_cedula = '91537121';
-- retirado a8b5c48c | cedula 1003204077
UPDATE retirado SET fecha_ingreso = '14/11/2024', fecha_retiro = '02/01/2025' WHERE id_retiro = 'a8b5c48c' AND id_cedula = '1003204077';
-- retirado e2acc93a | cedula 13870192
UPDATE retirado SET fecha_ingreso = '05/08/2024', fecha_retiro = '03/01/2025' WHERE id_retiro = 'e2acc93a' AND id_cedula = '13870192';
-- retirado 7fcd2764 | cedula 1095828769
UPDATE retirado SET fecha_ingreso = '04/09/2024', fecha_retiro = '02/01/2025' WHERE id_retiro = '7fcd2764' AND id_cedula = '1095828769';
-- retirado 8ad88942 | cedula 1005237343
UPDATE retirado SET fecha_ingreso = '14/12/2023', fecha_retiro = '18/01/2025' WHERE id_retiro = '8ad88942' AND id_cedula = '1005237343';
-- retirado a4e38d33 | cedula 1234340451
UPDATE retirado SET fecha_ingreso = '07/01/2025', fecha_retiro = '20/01/2025' WHERE id_retiro = 'a4e38d33' AND id_cedula = '1234340451';
-- retirado 44e50fcc | cedula 1002255860
UPDATE retirado SET fecha_ingreso = '03/01/2025', fecha_retiro = '24/01/2025' WHERE id_retiro = '44e50fcc' AND id_cedula = '1002255860';
-- retirado 52415b14 | cedula 1005199882
UPDATE retirado SET fecha_ingreso = '07/01/2025', fecha_retiro = '20/01/2025' WHERE id_retiro = '52415b14' AND id_cedula = '1005199882';
-- retirado 2a5e9322 | cedula 1003091352
UPDATE retirado SET fecha_ingreso = '03/01/2025', fecha_retiro = '20/01/2025' WHERE id_retiro = '2a5e9322' AND id_cedula = '1003091352';
-- retirado ca810360 | cedula 1002580637
UPDATE retirado SET fecha_ingreso = '14/11/2024', fecha_retiro = '01/01/2025' WHERE id_retiro = 'ca810360' AND id_cedula = '1002580637';
-- retirado 4be0e630 | cedula 1251543
UPDATE retirado SET fecha_ingreso = '13/08/2024', fecha_retiro = '01/02/2025' WHERE id_retiro = '4be0e630' AND id_cedula = '1251543';
-- retirado 15098f9c | cedula 1098763741
UPDATE retirado SET fecha_ingreso = '01/08/2022', fecha_retiro = '02/02/2025' WHERE id_retiro = '15098f9c' AND id_cedula = '1098763741';
-- retirado 0c700282 | cedula 1005221017
UPDATE retirado SET fecha_ingreso = '05/08/2024', fecha_retiro = '04/02/2025' WHERE id_retiro = '0c700282' AND id_cedula = '1005221017';
-- retirado 911cc513 | cedula 1004823812
UPDATE retirado SET fecha_ingreso = '04/07/2024', fecha_retiro = '04/02/2025' WHERE id_retiro = '911cc513' AND id_cedula = '1004823812';
-- retirado 584c3dfb | cedula 1094579227
UPDATE retirado SET fecha_ingreso = '18/08/2023', fecha_retiro = '08/02/2025' WHERE id_retiro = '584c3dfb' AND id_cedula = '1094579227';
-- retirado 51854663 | cedula 1010049419
UPDATE retirado SET fecha_ingreso = '02/12/2024', fecha_retiro = '10/02/2025' WHERE id_retiro = '51854663' AND id_cedula = '1010049419';
-- retirado 6343bac2 | cedula 1127607041
UPDATE retirado SET fecha_ingreso = '02/10/2020', fecha_retiro = '14/02/2025' WHERE id_retiro = '6343bac2' AND id_cedula = '1127607041';
-- retirado 10edcf4c | cedula 1093592907
UPDATE retirado SET fecha_ingreso = '27/01/2025', fecha_retiro = '18/02/2025' WHERE id_retiro = '10edcf4c' AND id_cedula = '1093592907';
-- retirado f5fa97dd | cedula 1090421328
UPDATE retirado SET fecha_ingreso = '27/01/2025', fecha_retiro = '01/02/2025' WHERE id_retiro = 'f5fa97dd' AND id_cedula = '1090421328';
-- retirado 57a7b052 | cedula 1003248197
UPDATE retirado SET fecha_ingreso = '14/11/2024', fecha_retiro = '20/02/2025' WHERE id_retiro = '57a7b052' AND id_cedula = '1003248197';
-- retirado 1f5f4fec | cedula 1091132817
UPDATE retirado SET fecha_ingreso = '13/08/2024', fecha_retiro = '18/02/2025' WHERE id_retiro = '1f5f4fec' AND id_cedula = '1091132817';
-- retirado ef836c4a | cedula 1118861488
UPDATE retirado SET fecha_ingreso = '29/07/2024', fecha_retiro = '07/02/2025' WHERE id_retiro = 'ef836c4a' AND id_cedula = '1118861488';
-- retirado bfb73589 | cedula 1005340129
UPDATE retirado SET fecha_ingreso = '11/02/2025', fecha_retiro = '13/02/2025' WHERE id_retiro = 'bfb73589' AND id_cedula = '1005340129';
-- retirado c82d35eb | cedula 1005157590
UPDATE retirado SET fecha_ingreso = '20/09/2021', fecha_retiro = '25/02/2025' WHERE id_retiro = 'c82d35eb' AND id_cedula = '1005157590';
-- retirado 2301568b | cedula 91541543
UPDATE retirado SET fecha_ingreso = '09/10/2016', fecha_retiro = '07/03/2025' WHERE id_retiro = '2301568b' AND id_cedula = '91541543';
-- retirado 9c201946 | cedula 1102369280
UPDATE retirado SET fecha_ingreso = '15/01/2019', fecha_retiro = '24/02/2025' WHERE id_retiro = '9c201946' AND id_cedula = '1102369280';
-- retirado fc858dba | cedula 1097911604
UPDATE retirado SET fecha_ingreso = '20/03/2024', fecha_retiro = '19/02/2025' WHERE id_retiro = 'fc858dba' AND id_cedula = '1097911604';
-- retirado fb924cb8 | cedula 1098785188
UPDATE retirado SET fecha_ingreso = '20/08/2024', fecha_retiro = '19/02/2025' WHERE id_retiro = 'fb924cb8' AND id_cedula = '1098785188';
-- retirado feed1154 | cedula 1095298739
UPDATE retirado SET fecha_ingreso = '20/08/2024', fecha_retiro = '19/02/2025' WHERE id_retiro = 'feed1154' AND id_cedula = '1095298739';
-- retirado 4b77b685 | cedula 1098719431
UPDATE retirado SET fecha_ingreso = '16/03/2023', fecha_retiro = '13/02/2025' WHERE id_retiro = '4b77b685' AND id_cedula = '1098719431';
-- retirado 5963f5dd | cedula 1098642201
UPDATE retirado SET fecha_ingreso = '28/12/2024', fecha_retiro = '07/02/2025' WHERE id_retiro = '5963f5dd' AND id_cedula = '1098642201';
-- retirado ea342579 | cedula 1099367927
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '05/03/2025' WHERE id_retiro = 'ea342579' AND id_cedula = '1099367927';
-- retirado 46e9af94 | cedula 1002255861
UPDATE retirado SET fecha_ingreso = '03/01/2025', fecha_retiro = '01/03/2025' WHERE id_retiro = '46e9af94' AND id_cedula = '1002255861';
-- retirado 040af6ad | cedula 90087044
UPDATE retirado SET fecha_ingreso = '06/03/2025', fecha_retiro = '13/03/2025' WHERE id_retiro = '040af6ad' AND id_cedula = '90087044';
-- retirado 3aac7552 | cedula 1005108327
UPDATE retirado SET fecha_ingreso = '16/09/2024', fecha_retiro = '15/03/2025' WHERE id_retiro = '3aac7552' AND id_cedula = '1005108327';
-- retirado aed70806 | cedula 1005369910
UPDATE retirado SET fecha_ingreso = '19/10/2022', fecha_retiro = '16/03/2025' WHERE id_retiro = 'aed70806' AND id_cedula = '1005369910';
-- retirado 8f3b3d3f | cedula 1005339808
UPDATE retirado SET fecha_ingreso = '20/11/2024', fecha_retiro = '10/03/2025' WHERE id_retiro = '8f3b3d3f' AND id_cedula = '1005339808';
-- retirado 989b288c | cedula 1005260386
UPDATE retirado SET fecha_ingreso = '23/01/2025', fecha_retiro = '19/03/2025' WHERE id_retiro = '989b288c' AND id_cedula = '1005260386';
-- retirado d9dd1038 | cedula 1095954423
UPDATE retirado SET fecha_ingreso = '03/03/2025', fecha_retiro = '20/03/2025' WHERE id_retiro = 'd9dd1038' AND id_cedula = '1095954423';
-- retirado f4d115c2 | cedula 1005106745
UPDATE retirado SET fecha_ingreso = '28/10/2024', fecha_retiro = '28/03/2025' WHERE id_retiro = 'f4d115c2' AND id_cedula = '1005106745';
-- retirado 65e5da51 | cedula 1095951119
UPDATE retirado SET fecha_ingreso = '03/03/2025', fecha_retiro = '29/03/2025' WHERE id_retiro = '65e5da51' AND id_cedula = '1095951119';
-- retirado 18c6ae15 | cedula 1101201557
UPDATE retirado SET fecha_ingreso = '13/03/2025', fecha_retiro = '31/03/2025' WHERE id_retiro = '18c6ae15' AND id_cedula = '1101201557';
-- retirado 81fe0277 | cedula 1023947977
UPDATE retirado SET fecha_ingreso = '17/02/2025', fecha_retiro = '21/03/2025' WHERE id_retiro = '81fe0277' AND id_cedula = '1023947977';
-- retirado 2b08ca0f | cedula 1005156696
UPDATE retirado SET fecha_ingreso = '26/06/2024', fecha_retiro = '01/04/2025' WHERE id_retiro = '2b08ca0f' AND id_cedula = '1005156696';
-- retirado 9b07109c | cedula 1096245140
UPDATE retirado SET fecha_ingreso = '10/04/2024', fecha_retiro = '08/03/2025' WHERE id_retiro = '9b07109c' AND id_cedula = '1096245140';
-- retirado 1adfdbd8 | cedula 1007080130
UPDATE retirado SET fecha_ingreso = '10/12/2024', fecha_retiro = '07/03/2025' WHERE id_retiro = '1adfdbd8' AND id_cedula = '1007080130';
-- retirado e5ba1a6d | cedula 1005107178
UPDATE retirado SET fecha_ingreso = '20/01/2025', fecha_retiro = '01/03/2025' WHERE id_retiro = 'e5ba1a6d' AND id_cedula = '1005107178';
-- retirado adb49dfd | cedula 1095841931
UPDATE retirado SET fecha_ingreso = '10/01/2025', fecha_retiro = '25/03/2025' WHERE id_retiro = 'adb49dfd' AND id_cedula = '1095841931';
-- retirado 38038358 | cedula 667463
UPDATE retirado SET fecha_ingreso = '24/02/2025', fecha_retiro = '01/03/2025' WHERE id_retiro = '38038358' AND id_cedula = '667463';
-- retirado a3be6bc7 | cedula 1005183907
UPDATE retirado SET fecha_ingreso = '23/09/2024', fecha_retiro = '22/03/2025' WHERE id_retiro = 'a3be6bc7' AND id_cedula = '1005183907';
-- retirado 64360ccd | cedula 1095810864
UPDATE retirado SET fecha_ingreso = '06/03/2025', fecha_retiro = '01/04/2025' WHERE id_retiro = '64360ccd' AND id_cedula = '1095810864';
-- retirado 6d17dfed | cedula 1007773765
UPDATE retirado SET fecha_ingreso = '06/03/2025', fecha_retiro = '01/04/2025' WHERE id_retiro = '6d17dfed' AND id_cedula = '1007773765';
-- retirado 32dc2a8f | cedula 1005564048
UPDATE retirado SET fecha_ingreso = '25/08/2023', fecha_retiro = '04/04/2025' WHERE id_retiro = '32dc2a8f' AND id_cedula = '1005564048';
-- retirado 4c116b52 | cedula 1117527343
UPDATE retirado SET fecha_ingreso = '03/02/2020', fecha_retiro = '09/04/2025' WHERE id_retiro = '4c116b52' AND id_cedula = '1117527343';
-- retirado b0d9af82 | cedula 1098636592
UPDATE retirado SET fecha_ingreso = '19/05/2017', fecha_retiro = '04/04/2025' WHERE id_retiro = 'b0d9af82' AND id_cedula = '1098636592';
-- retirado 2ac5148e | cedula 1099737472
UPDATE retirado SET fecha_ingreso = '30/12/2024', fecha_retiro = '09/04/2025' WHERE id_retiro = '2ac5148e' AND id_cedula = '1099737472';
-- retirado e2efd845 | cedula 1040048224
UPDATE retirado SET fecha_ingreso = '17/02/2025', fecha_retiro = '16/04/2025' WHERE id_retiro = 'e2efd845' AND id_cedula = '1040048224';
-- retirado 477534aa | cedula 1102362259
UPDATE retirado SET fecha_ingreso = '13/06/2018', fecha_retiro = '17/04/2025' WHERE id_retiro = '477534aa' AND id_cedula = '1102362259';
-- retirado d78eb41d | cedula 1003259508
UPDATE retirado SET fecha_ingreso = '08/04/2025', fecha_retiro = '08/04/2025' WHERE id_retiro = 'd78eb41d' AND id_cedula = '1003259508';
-- retirado 5d4196e6 | cedula 1098738228
UPDATE retirado SET fecha_ingreso = '07/04/2025', fecha_retiro = '08/04/2025' WHERE id_retiro = '5d4196e6' AND id_cedula = '1098738228';
-- retirado 271d51ad | cedula 1234340637
UPDATE retirado SET fecha_ingreso = '26/11/2021', fecha_retiro = '02/04/2025' WHERE id_retiro = '271d51ad' AND id_cedula = '1234340637';
-- retirado 3d433959 | cedula 1068346034
UPDATE retirado SET fecha_ingreso = '01/04/2025', fecha_retiro = '29/04/2025' WHERE id_retiro = '3d433959' AND id_cedula = '1068346034';
-- retirado fe2156d2 | cedula 1007545416
UPDATE retirado SET fecha_ingreso = '05/08/2024', fecha_retiro = '25/04/2025' WHERE id_retiro = 'fe2156d2' AND id_cedula = '1007545416';
-- retirado a27e5429 | cedula 1100894583
UPDATE retirado SET fecha_ingreso = '24/02/2025', fecha_retiro = '09/05/2025' WHERE id_retiro = 'a27e5429' AND id_cedula = '1100894583';
-- retirado 022966dc | cedula 1095956006
UPDATE retirado SET fecha_ingreso = '13/03/2025', fecha_retiro = '09/05/2025' WHERE id_retiro = '022966dc' AND id_cedula = '1095956006';
-- retirado 069d0b5b | cedula 91532495
UPDATE retirado SET fecha_ingreso = '19/03/2025', fecha_retiro = '20/05/2025' WHERE id_retiro = '069d0b5b' AND id_cedula = '91532495';
-- retirado 4909f9e2 | cedula 1095936284
UPDATE retirado SET fecha_ingreso = '11/02/2025', fecha_retiro = '20/05/2025' WHERE id_retiro = '4909f9e2' AND id_cedula = '1095936284';
-- retirado 525c7c84 | cedula 91538812
UPDATE retirado SET fecha_ingreso = '28/12/2024', fecha_retiro = '15/05/2025' WHERE id_retiro = '525c7c84' AND id_cedula = '91538812';
-- retirado 66861800 | cedula 1004858769
UPDATE retirado SET fecha_ingreso = '28/12/2024', fecha_retiro = '30/04/2025' WHERE id_retiro = '66861800' AND id_cedula = '1004858769';
-- retirado 1bc54083 | cedula 1042211348
UPDATE retirado SET fecha_ingreso = '13/02/2024', fecha_retiro = '27/05/2025' WHERE id_retiro = '1bc54083' AND id_cedula = '1042211348';
-- retirado 3d4fece4 | cedula 1097488771
UPDATE retirado SET fecha_ingreso = '03/08/2022', fecha_retiro = '01/06/2025' WHERE id_retiro = '3d4fece4' AND id_cedula = '1097488771';
-- retirado 5077f06a | cedula 1100892188
UPDATE retirado SET fecha_ingreso = '19/06/2024', fecha_retiro = '03/06/2025' WHERE id_retiro = '5077f06a' AND id_cedula = '1100892188';
-- retirado afd5f9e6 | cedula 1098627667
UPDATE retirado SET fecha_ingreso = '17/09/2013', fecha_retiro = '04/06/2025' WHERE id_retiro = 'afd5f9e6' AND id_cedula = '1098627667';
-- retirado 4dfc85a1 | cedula 1095838432
UPDATE retirado SET fecha_ingreso = '09/09/2020', fecha_retiro = '03/06/2025' WHERE id_retiro = '4dfc85a1' AND id_cedula = '1095838432';
-- retirado ece5e399 | cedula 1098706612
UPDATE retirado SET fecha_ingreso = '21/04/2025', fecha_retiro = '04/06/2025' WHERE id_retiro = 'ece5e399' AND id_cedula = '1098706612';
-- retirado 9adcbceb | cedula 6206186
UPDATE retirado SET fecha_ingreso = '15/05/2025', fecha_retiro = '24/05/2025' WHERE id_retiro = '9adcbceb' AND id_cedula = '6206186';
-- retirado 8e51b02b | cedula 1004823758
UPDATE retirado SET fecha_ingreso = '06/03/2024', fecha_retiro = '09/06/2025' WHERE id_retiro = '8e51b02b' AND id_cedula = '1004823758';
-- retirado d321efd6 | cedula 1010049417
UPDATE retirado SET fecha_ingreso = '21/11/2023', fecha_retiro = '10/06/2025' WHERE id_retiro = 'd321efd6' AND id_cedula = '1010049417';
-- retirado 1ad0fb22 | cedula 1095957578
UPDATE retirado SET fecha_ingreso = '28/05/2025', fecha_retiro = '04/06/2025' WHERE id_retiro = '1ad0fb22' AND id_cedula = '1095957578';
-- retirado 14cde105 | cedula 1100893813
UPDATE retirado SET fecha_ingreso = '05/06/2015', fecha_retiro = '15/06/2025' WHERE id_retiro = '14cde105' AND id_cedula = '1100893813';
-- retirado db94ce6b | cedula 91495076
UPDATE retirado SET fecha_ingreso = '26/07/2013', fecha_retiro = '27/05/2025' WHERE id_retiro = 'db94ce6b' AND id_cedula = '91495076';
-- retirado 05271a35 | cedula 1098695299
UPDATE retirado SET fecha_ingreso = '19/07/2022', fecha_retiro = '18/06/2025' WHERE id_retiro = '05271a35' AND id_cedula = '1098695299';
-- retirado 3e443ca6 | cedula 1098636933
UPDATE retirado SET fecha_ingreso = '07/05/2025', fecha_retiro = '14/06/2025' WHERE id_retiro = '3e443ca6' AND id_cedula = '1098636933';
-- retirado f0025489 | cedula 1232891574
UPDATE retirado SET fecha_ingreso = '19/06/2024', fecha_retiro = '10/06/2025' WHERE id_retiro = 'f0025489' AND id_cedula = '1232891574';
-- retirado dfeff851 | cedula 1005108327
UPDATE retirado SET fecha_ingreso = '24/07/2025', fecha_retiro = '21/06/2025' WHERE id_retiro = 'dfeff851' AND id_cedula = '1005108327';
-- retirado 207b5a5d | cedula 1098706604
UPDATE retirado SET fecha_ingreso = '09/06/2025', fecha_retiro = '11/06/2025' WHERE id_retiro = '207b5a5d' AND id_cedula = '1098706604';
-- retirado af6b31ac | cedula 1098775415
UPDATE retirado SET fecha_ingreso = '11/01/2024', fecha_retiro = '22/06/2025' WHERE id_retiro = 'af6b31ac' AND id_cedula = '1098775415';
-- retirado 3ceee0ac | cedula 1088256554
UPDATE retirado SET fecha_ingreso = '11/06/2025', fecha_retiro = '24/06/2025' WHERE id_retiro = '3ceee0ac' AND id_cedula = '1088256554';
-- retirado c5d22af4 | cedula 1000348817
UPDATE retirado SET fecha_ingreso = '09/06/2025', fecha_retiro = '21/06/2025' WHERE id_retiro = 'c5d22af4' AND id_cedula = '1000348817';
-- retirado 8be49b94 | cedula 1099322247
UPDATE retirado SET fecha_ingreso = '01/10/2024', fecha_retiro = '27/06/2025' WHERE id_retiro = '8be49b94' AND id_cedula = '1099322247';
-- retirado 4a43af48 | cedula 1098720774
UPDATE retirado SET fecha_ingreso = '01/04/2025', fecha_retiro = '30/06/2025' WHERE id_retiro = '4a43af48' AND id_cedula = '1098720774';
-- retirado bbcc6b5a | cedula 1095832883
UPDATE retirado SET fecha_ingreso = '20/05/2024', fecha_retiro = '01/07/2025' WHERE id_retiro = 'bbcc6b5a' AND id_cedula = '1095832883';
-- retirado 5c0ea73e | cedula 1048992624
UPDATE retirado SET fecha_ingreso = '02/06/2022', fecha_retiro = '01/07/2025' WHERE id_retiro = '5c0ea73e' AND id_cedula = '1048992624';
-- retirado 257ba977 | cedula 79625408
UPDATE retirado SET fecha_ingreso = '12/03/2025', fecha_retiro = '31/05/2025' WHERE id_retiro = '257ba977' AND id_cedula = '79625408';
-- retirado f7cb4b28 | cedula 1095936888
UPDATE retirado SET fecha_ingreso = '13/08/2024', fecha_retiro = '03/07/2025' WHERE id_retiro = 'f7cb4b28' AND id_cedula = '1095936888';
-- retirado fda3beb2 | cedula 1099364041
UPDATE retirado SET fecha_ingreso = '26/11/2024', fecha_retiro = '04/07/2025' WHERE id_retiro = 'fda3beb2' AND id_cedula = '1099364041';
-- retirado 5d636baf | cedula 1098658021
UPDATE retirado SET fecha_ingreso = '19/12/2024', fecha_retiro = '04/07/2025' WHERE id_retiro = '5d636baf' AND id_cedula = '1098658021';
-- retirado 5c531d1b | cedula 1234340747
UPDATE retirado SET fecha_ingreso = '26/02/2024', fecha_retiro = '06/07/2025' WHERE id_retiro = '5c531d1b' AND id_cedula = '1234340747';
-- retirado 995fc51b | cedula 1003237624
UPDATE retirado SET fecha_ingreso = '07/01/2025', fecha_retiro = '06/07/2025' WHERE id_retiro = '995fc51b' AND id_cedula = '1003237624';
-- retirado 3758cca5 | cedula 1005297906
UPDATE retirado SET fecha_ingreso = '15/02/2024', fecha_retiro = '08/07/2025' WHERE id_retiro = '3758cca5' AND id_cedula = '1005297906';
-- retirado 5b356535 | cedula 106573904
UPDATE retirado SET fecha_ingreso = '16/06/2025', fecha_retiro = '11/07/2025' WHERE id_retiro = '5b356535' AND id_cedula = '106573904';
-- retirado 400e33c2 | cedula 1005181424
UPDATE retirado SET fecha_ingreso = '15/01/2025', fecha_retiro = '16/07/2025' WHERE id_retiro = '400e33c2' AND id_cedula = '1005181424';
-- retirado 82373490 | cedula 1065673904
UPDATE retirado SET fecha_ingreso = '16/06/2025', fecha_retiro = '11/07/2025' WHERE id_retiro = '82373490' AND id_cedula = '1065673904';
-- retirado b0430221 | cedula 1098802594
UPDATE retirado SET fecha_ingreso = '20/01/2025', fecha_retiro = '18/07/2025' WHERE id_retiro = 'b0430221' AND id_cedula = '1098802594';
-- retirado 4694b424 | cedula 1004756344
UPDATE retirado SET fecha_ingreso = '22/05/2025', fecha_retiro = '21/07/2025' WHERE id_retiro = '4694b424' AND id_cedula = '1004756344';
-- retirado cd5d9408 | cedula 1005333865
UPDATE retirado SET fecha_ingreso = '27/07/2021', fecha_retiro = '25/07/2025' WHERE id_retiro = 'cd5d9408' AND id_cedula = '1005333865';
-- retirado a1691a1c | cedula 1095952499
UPDATE retirado SET fecha_ingreso = '08/07/2025', fecha_retiro = '25/07/2025' WHERE id_retiro = 'a1691a1c' AND id_cedula = '1095952499';
-- retirado 47e61c40 | cedula 1097096339
UPDATE retirado SET fecha_ingreso = '10/10/2024', fecha_retiro = '25/07/2025' WHERE id_retiro = '47e61c40' AND id_cedula = '1097096339';
-- retirado 58d2efd1 | cedula 1093792999
UPDATE retirado SET fecha_ingreso = '19/12/2024', fecha_retiro = '28/07/2025' WHERE id_retiro = '58d2efd1' AND id_cedula = '1093792999';
-- retirado 004be993 | cedula 1081836061
UPDATE retirado SET fecha_ingreso = '07/01/2025', fecha_retiro = '28/07/2025' WHERE id_retiro = '004be993' AND id_cedula = '1081836061';
-- retirado 76cc5232 | cedula 1005326525
UPDATE retirado SET fecha_ingreso = '23/01/2025', fecha_retiro = '29/07/2025' WHERE id_retiro = '76cc5232' AND id_cedula = '1005326525';
-- retirado b77a086f | cedula 1102367641
UPDATE retirado SET fecha_ingreso = '13/08/2024', fecha_retiro = '01/08/2025' WHERE id_retiro = 'b77a086f' AND id_cedula = '1102367641';
-- retirado 2fee17ad | cedula 1005154159
UPDATE retirado SET fecha_ingreso = '20/11/2024', fecha_retiro = '15/08/2025' WHERE id_retiro = '2fee17ad' AND id_cedula = '1005154159';
-- retirado 3e6ad0e3 | cedula 1095838844
UPDATE retirado SET fecha_ingreso = '03/02/2025', fecha_retiro = '19/08/2025' WHERE id_retiro = '3e6ad0e3' AND id_cedula = '1095838844';
-- retirado 8fc436ca | cedula 1095837427
UPDATE retirado SET fecha_ingreso = '25/06/2025', fecha_retiro = '20/08/2025' WHERE id_retiro = '8fc436ca' AND id_cedula = '1095837427';
-- retirado 9df00b9d | cedula 91466051
UPDATE retirado SET fecha_ingreso = '09/10/2016', fecha_retiro = '16/08/2025' WHERE id_retiro = '9df00b9d' AND id_cedula = '91466051';
-- retirado 925b9124 | cedula 1048555639
UPDATE retirado SET fecha_ingreso = '22/02/2025', fecha_retiro = '21/08/2025' WHERE id_retiro = '925b9124' AND id_cedula = '1048555639';
-- retirado 265a2481 | cedula 58494289
UPDATE retirado SET fecha_ingreso = '22/02/2025', fecha_retiro = '22/08/2025' WHERE id_retiro = '265a2481' AND id_cedula = '58494289';
-- retirado 3e4dbdb7 | cedula 1102725370
UPDATE retirado SET fecha_ingreso = '22/02/2025', fecha_retiro = '22/08/2025' WHERE id_retiro = '3e4dbdb7' AND id_cedula = '1102725370';
-- retirado 1376b86a | cedula 1095302964
UPDATE retirado SET fecha_ingreso = '24/02/2025', fecha_retiro = '23/08/2025' WHERE id_retiro = '1376b86a' AND id_cedula = '1095302964';
-- retirado 15bbcae7 | cedula 1095298459
UPDATE retirado SET fecha_ingreso = '01/07/2025', fecha_retiro = '25/08/2025' WHERE id_retiro = '15bbcae7' AND id_cedula = '1095298459';
-- retirado 25fd2ad0 | cedula 1005623640
UPDATE retirado SET fecha_ingreso = '01/10/2020', fecha_retiro = '29/08/2025' WHERE id_retiro = '25fd2ad0' AND id_cedula = '1005623640';
-- retirado 1c07437a | cedula 1093755362
UPDATE retirado SET fecha_ingreso = '20/08/2025', fecha_retiro = '25/08/2025' WHERE id_retiro = '1c07437a' AND id_cedula = '1093755362';
-- retirado d0634127 | cedula 37721274
UPDATE retirado SET fecha_ingreso = '20/08/2024', fecha_retiro = '01/09/2025' WHERE id_retiro = 'd0634127' AND id_cedula = '37721274';
-- retirado 487d0d67 | cedula 1005449575
UPDATE retirado SET fecha_ingreso = '26/08/2025', fecha_retiro = '23/08/2025' WHERE id_retiro = '487d0d67' AND id_cedula = '1005449575';
-- retirado a17c7d71 | cedula 1005295361
UPDATE retirado SET fecha_ingreso = '11/07/2023', fecha_retiro = '25/08/2025' WHERE id_retiro = 'a17c7d71' AND id_cedula = '1005295361';
-- retirado 09daf2f7 | cedula 1005340449
UPDATE retirado SET fecha_ingreso = '24/02/2025', fecha_retiro = '23/08/2025' WHERE id_retiro = '09daf2f7' AND id_cedula = '1005340449';
-- retirado d80c0309 | cedula 1095798791
UPDATE retirado SET fecha_ingreso = '13/03/2025', fecha_retiro = '23/08/2025' WHERE id_retiro = 'd80c0309' AND id_cedula = '1095798791';
-- retirado c89d78f4 | cedula 1007669515
UPDATE retirado SET fecha_ingreso = '03/07/2025', fecha_retiro = '02/09/2025' WHERE id_retiro = 'c89d78f4' AND id_cedula = '1007669515';
-- retirado a336cd76 | cedula 1005150728
UPDATE retirado SET fecha_ingreso = '22/02/2025', fecha_retiro = '25/08/2025' WHERE id_retiro = 'a336cd76' AND id_cedula = '1005150728';
-- retirado e0c8d5fb | cedula 1095812471
UPDATE retirado SET fecha_ingreso = '22/09/2023', fecha_retiro = '05/09/2025' WHERE id_retiro = 'e0c8d5fb' AND id_cedula = '1095812471';
-- retirado 2d47405f | cedula 1005298167
UPDATE retirado SET fecha_ingreso = '14/07/2025', fecha_retiro = '15/09/2025' WHERE id_retiro = '2d47405f' AND id_cedula = '1005298167';
-- retirado e81dbc37 | cedula 1094778812
UPDATE retirado SET fecha_ingreso = '01/07/2025', fecha_retiro = '10/09/2025' WHERE id_retiro = 'e81dbc37' AND id_cedula = '1094778812';
-- retirado 4bf08b4a | cedula 1005108327
UPDATE retirado SET fecha_ingreso = '24/07/2025', fecha_retiro = '13/09/2025' WHERE id_retiro = '4bf08b4a' AND id_cedula = '1005108327';
-- retirado dd0c155f | cedula 1097609443
UPDATE retirado SET fecha_ingreso = '20/03/2024', fecha_retiro = '12/09/2025' WHERE id_retiro = 'dd0c155f' AND id_cedula = '1097609443';
-- retirado 7657d135 | cedula 1095934699
UPDATE retirado SET fecha_ingreso = '16/06/2025', fecha_retiro = '18/09/2025' WHERE id_retiro = '7657d135' AND id_cedula = '1095934699';
-- retirado 6a247f42 | cedula 1102723602
UPDATE retirado SET fecha_ingreso = '17/03/2025', fecha_retiro = '18/09/2025' WHERE id_retiro = '6a247f42' AND id_cedula = '1102723602';
-- retirado 3a0e48ad | cedula 1090541327
UPDATE retirado SET fecha_ingreso = '19/08/2025', fecha_retiro = '24/09/2025' WHERE id_retiro = '3a0e48ad' AND id_cedula = '1090541327';
-- retirado df873324 | cedula 1005160860
UPDATE retirado SET fecha_ingreso = '01/09/2025', fecha_retiro = '18/09/2025' WHERE id_retiro = 'df873324' AND id_cedula = '1005160860';
-- retirado cd76978b | cedula 1100893469
UPDATE retirado SET fecha_ingreso = '01/02/2021', fecha_retiro = '23/09/2025' WHERE id_retiro = 'cd76978b' AND id_cedula = '1100893469';
-- retirado 54218362 | cedula 1091676205
UPDATE retirado SET fecha_ingreso = '15/06/2022', fecha_retiro = '26/09/2025' WHERE id_retiro = '54218362' AND id_cedula = '1091676205';
-- retirado 317dba3c | cedula 91532028
UPDATE retirado SET fecha_ingreso = '10/03/2025', fecha_retiro = '29/09/2025' WHERE id_retiro = '317dba3c' AND id_cedula = '91532028';
-- retirado 782dcb2c | cedula 1095907218
UPDATE retirado SET fecha_ingreso = '28/07/2025', fecha_retiro = '26/09/2025' WHERE id_retiro = '782dcb2c' AND id_cedula = '1095907218';
-- retirado 90300055 | cedula 1098708544
UPDATE retirado SET fecha_ingreso = '04/08/2025', fecha_retiro = '02/10/2025' WHERE id_retiro = '90300055' AND id_cedula = '1098708544';
-- retirado bc0dfd9a | cedula 1007463015
UPDATE retirado SET fecha_ingreso = '03/04/2025', fecha_retiro = '02/10/2025' WHERE id_retiro = 'bc0dfd9a' AND id_cedula = '1007463015';
-- retirado 3655a2db | cedula 1005327469
UPDATE retirado SET fecha_ingreso = '27/03/2025', fecha_retiro = '03/10/2025' WHERE id_retiro = '3655a2db' AND id_cedula = '1005327469';
-- retirado e03e1824 | cedula 1098707156
UPDATE retirado SET fecha_ingreso = '28/07/2025', fecha_retiro = '30/09/2025' WHERE id_retiro = 'e03e1824' AND id_cedula = '1098707156';
-- retirado 93812ac9 | cedula 1005563424
UPDATE retirado SET fecha_ingreso = '03/07/2025', fecha_retiro = '03/10/2025' WHERE id_retiro = '93812ac9' AND id_cedula = '1005563424';
-- retirado 503a545e | cedula 1004501556
UPDATE retirado SET fecha_ingreso = '03/06/2025', fecha_retiro = '04/10/2025' WHERE id_retiro = '503a545e' AND id_cedula = '1004501556';
-- retirado 8f1bceff | cedula 1094778035
UPDATE retirado SET fecha_ingreso = '21/11/2023', fecha_retiro = '23/10/2025' WHERE id_retiro = '8f1bceff' AND id_cedula = '1094778035';
-- retirado b9bda052 | cedula 1005540770
UPDATE retirado SET fecha_ingreso = '10/12/2024', fecha_retiro = '17/10/2025' WHERE id_retiro = 'b9bda052' AND id_cedula = '1005540770';
-- retirado 9ea6621d | cedula 1005195641
UPDATE retirado SET fecha_ingreso = '13/07/2021', fecha_retiro = '30/10/2025' WHERE id_retiro = '9ea6621d' AND id_cedula = '1005195641';
-- retirado 6a1006b1 | cedula 1095940767
UPDATE retirado SET fecha_ingreso = '01/12/2021', fecha_retiro = '31/10/2025' WHERE id_retiro = '6a1006b1' AND id_cedula = '1095940767';
-- retirado c1a700a2 | cedula 1007551732
UPDATE retirado SET fecha_ingreso = '16/09/2025', fecha_retiro = '01/11/2025' WHERE id_retiro = 'c1a700a2' AND id_cedula = '1007551732';
-- retirado 4cd21195 | cedula 1048555639
UPDATE retirado SET fecha_ingreso = '16/09/2025', fecha_retiro = '04/11/2025' WHERE id_retiro = '4cd21195' AND id_cedula = '1048555639';
-- retirado 716c7ca4 | cedula 1005235648
UPDATE retirado SET fecha_ingreso = '22/10/2025', fecha_retiro = '01/11/2025' WHERE id_retiro = '716c7ca4' AND id_cedula = '1005235648';
-- retirado 868740f3 | cedula 91507643
UPDATE retirado SET fecha_ingreso = '05/01/2021', fecha_retiro = '16/11/2025' WHERE id_retiro = '868740f3' AND id_cedula = '91507643';
-- retirado 795ccec1 | cedula 1005479775
UPDATE retirado SET fecha_ingreso = '20/09/2021', fecha_retiro = '13/11/2025' WHERE id_retiro = '795ccec1' AND id_cedula = '1005479775';
-- retirado 116322a5 | cedula 1007917784
UPDATE retirado SET fecha_ingreso = '13/03/2025', fecha_retiro = '11/11/2025' WHERE id_retiro = '116322a5' AND id_cedula = '1007917784';
-- retirado ddb4e166 | cedula 91108496
UPDATE retirado SET fecha_ingreso = '19/03/2025', fecha_retiro = '12/11/2025' WHERE id_retiro = 'ddb4e166' AND id_cedula = '91108496';
-- retirado 1ffdaaab | cedula 1101520264
UPDATE retirado SET fecha_ingreso = '13/07/2022', fecha_retiro = '21/11/2025' WHERE id_retiro = '1ffdaaab' AND id_cedula = '1101520264';
-- retirado c29b17d2 | cedula 1098799132
UPDATE retirado SET fecha_ingreso = '12/11/2025', fecha_retiro = '14/11/2025' WHERE id_retiro = 'c29b17d2' AND id_cedula = '1098799132';
-- retirado bc9144ae | cedula 1005178601
UPDATE retirado SET fecha_ingreso = '25/04/2023', fecha_retiro = '10/11/2025' WHERE id_retiro = 'bc9144ae' AND id_cedula = '1005178601';
-- retirado 53f46b0d | cedula 1005183907
UPDATE retirado SET fecha_ingreso = '25/03/2025', fecha_retiro = '24/11/2025' WHERE id_retiro = '53f46b0d' AND id_cedula = '1005183907';
-- retirado 74e5b6d3 | cedula 1096065040
UPDATE retirado SET fecha_ingreso = '22/09/2025', fecha_retiro = '24/11/2025' WHERE id_retiro = '74e5b6d3' AND id_cedula = '1096065040';
-- retirado e7772df0 | cedula 1007764101
UPDATE retirado SET fecha_ingreso = '18/11/2025', fecha_retiro = '22/11/2025' WHERE id_retiro = 'e7772df0' AND id_cedula = '1007764101';
-- retirado 4aa5ce89 | cedula 1097093241
UPDATE retirado SET fecha_ingreso = '21/11/2025', fecha_retiro = '26/11/2025' WHERE id_retiro = '4aa5ce89' AND id_cedula = '1097093241';
-- retirado 55dbf2e2 | cedula 1007595416
UPDATE retirado SET fecha_ingreso = '17/07/2025', fecha_retiro = '25/11/2025' WHERE id_retiro = '55dbf2e2' AND id_cedula = '1007595416';
-- retirado d73defac | cedula 5846618
UPDATE retirado SET fecha_ingreso = '12/05/2022', fecha_retiro = '01/12/2025' WHERE id_retiro = 'd73defac' AND id_cedula = '5846618';
-- retirado bb1d3c0c | cedula 1102384789
UPDATE retirado SET fecha_ingreso = '04/12/2025', fecha_retiro = '20/12/2025' WHERE id_retiro = 'bb1d3c0c' AND id_cedula = '1102384789';
-- retirado 5392b28e | cedula 1101696331
UPDATE retirado SET fecha_ingreso = '18/11/2025', fecha_retiro = '24/12/2025' WHERE id_retiro = '5392b28e' AND id_cedula = '1101696331';
-- retirado 584d3cb1 | cedula 1005371227
UPDATE retirado SET fecha_ingreso = '22/10/2025', fecha_retiro = '30/12/2025' WHERE id_retiro = '584d3cb1' AND id_cedula = '1005371227';
-- retirado 610d4728 | cedula 1005240065
UPDATE retirado SET fecha_ingreso = '01/07/2025', fecha_retiro = '31/12/2025' WHERE id_retiro = '610d4728' AND id_cedula = '1005240065';
-- retirado c4221b13 | cedula 1096252867
UPDATE retirado SET fecha_ingreso = '01/07/2025', fecha_retiro = '30/12/2025' WHERE id_retiro = 'c4221b13' AND id_cedula = '1096252867';
-- retirado fa7ec614 | cedula 1097608286
UPDATE retirado SET fecha_ingreso = '10/12/2024', fecha_retiro = '20/12/2025' WHERE id_retiro = 'fa7ec614' AND id_cedula = '1097608286';
-- retirado 961c6c3e | cedula 1067030716
UPDATE retirado SET fecha_ingreso = '15/12/2025', fecha_retiro = '23/12/2025' WHERE id_retiro = '961c6c3e' AND id_cedula = '1067030716';
-- retirado d4523af9 | cedula 1052220288
UPDATE retirado SET fecha_ingreso = '07/05/2025', fecha_retiro = '06/01/2026' WHERE id_retiro = 'd4523af9' AND id_cedula = '1052220288';
-- retirado 20009ce4 | cedula 1005156461
UPDATE retirado SET fecha_ingreso = '07/01/2025', fecha_retiro = '05/01/2026' WHERE id_retiro = '20009ce4' AND id_cedula = '1005156461';
-- retirado 8f1d20b9 | cedula 1102363801
UPDATE retirado SET fecha_ingreso = '31/01/2024', fecha_retiro = '30/12/2025' WHERE id_retiro = '8f1d20b9' AND id_cedula = '1102363801';
-- retirado d2e4bf23 | cedula 1098755946
UPDATE retirado SET fecha_ingreso = '28/05/2018', fecha_retiro = '09/01/2026' WHERE id_retiro = 'd2e4bf23' AND id_cedula = '1098755946';
-- retirado 583fd38a | cedula 1193239803
UPDATE retirado SET fecha_ingreso = '10/10/2024', fecha_retiro = '26/12/2025' WHERE id_retiro = '583fd38a' AND id_cedula = '1193239803';
-- retirado 3aa409cc | cedula 1098071680
UPDATE retirado SET fecha_ingreso = '12/12/2024', fecha_retiro = '01/12/2025' WHERE id_retiro = '3aa409cc' AND id_cedula = '1098071680';
-- retirado 54bf4343 | cedula 1102384824
UPDATE retirado SET fecha_ingreso = '10/12/2024', fecha_retiro = '08/01/2026' WHERE id_retiro = '54bf4343' AND id_cedula = '1102384824';
-- retirado 32678bef | cedula 1102387307
UPDATE retirado SET fecha_ingreso = '07/01/2026', fecha_retiro = '23/01/2026' WHERE id_retiro = '32678bef' AND id_cedula = '1102387307';
-- retirado 5fec9032 | cedula 28338018
UPDATE retirado SET fecha_ingreso = '04/12/2014', fecha_retiro = '26/01/2026' WHERE id_retiro = '5fec9032' AND id_cedula = '28338018';
-- retirado 71aeb23f | cedula 1007900690
UPDATE retirado SET fecha_ingreso = '22/07/2025', fecha_retiro = '21/01/2026' WHERE id_retiro = '71aeb23f' AND id_cedula = '1007900690';
-- retirado b7945e98 | cedula 1005311796
UPDATE retirado SET fecha_ingreso = '07/01/2026', fecha_retiro = '26/01/2026' WHERE id_retiro = 'b7945e98' AND id_cedula = '1005311796';
-- retirado 5d70e0a2 | cedula 1095840254
UPDATE retirado SET fecha_ingreso = '15/01/2026', fecha_retiro = '29/01/2026' WHERE id_retiro = '5d70e0a2' AND id_cedula = '1095840254';
-- retirado 250ed672 | cedula 1098772942
UPDATE retirado SET fecha_ingreso = '02/09/2024', fecha_retiro = '29/01/2026' WHERE id_retiro = '250ed672' AND id_cedula = '1098772942';
-- retirado fee7e5f2 | cedula 1099367958
UPDATE retirado SET fecha_ingreso = '04/08/2025', fecha_retiro = '30/01/2026' WHERE id_retiro = 'fee7e5f2' AND id_cedula = '1099367958';
-- retirado 826899b7 | cedula 1005025701
UPDATE retirado SET fecha_ingreso = '10/03/2025', fecha_retiro = '30/01/2026' WHERE id_retiro = '826899b7' AND id_cedula = '1005025701';
-- retirado 7a465f44 | cedula 1095834911
UPDATE retirado SET fecha_ingreso = '07/04/2025', fecha_retiro = '30/01/2026' WHERE id_retiro = '7a465f44' AND id_cedula = '1095834911';
-- retirado db6999b5 | cedula 1232891031
UPDATE retirado SET fecha_ingreso = '06/11/2025', fecha_retiro = '30/01/2026' WHERE id_retiro = 'db6999b5' AND id_cedula = '1232891031';
-- retirado 7193e1c8 | cedula 1005321068
UPDATE retirado SET fecha_ingreso = '10/10/2024', fecha_retiro = '02/02/2026' WHERE id_retiro = '7193e1c8' AND id_cedula = '1005321068';
-- retirado b0443633 | cedula 1092176002
UPDATE retirado SET fecha_ingreso = '04/12/2025', fecha_retiro = '04/02/2026' WHERE id_retiro = 'b0443633' AND id_cedula = '1092176002';
-- retirado 56528bbb | cedula 80758022
UPDATE retirado SET fecha_ingreso = '04/08/2025', fecha_retiro = '09/02/2026' WHERE id_retiro = '56528bbb' AND id_cedula = '80758022';
-- retirado 11e49e43 | cedula 1007665794
UPDATE retirado SET fecha_ingreso = '06/11/2025', fecha_retiro = '21/01/2026' WHERE id_retiro = '11e49e43' AND id_cedula = '1007665794';
-- retirado 9782ed0c | cedula 1005655309
UPDATE retirado SET fecha_ingreso = '10/12/2025', fecha_retiro = '09/02/2026' WHERE id_retiro = '9782ed0c' AND id_cedula = '1005655309';
-- retirado 4d0234fc | cedula 1193036794
UPDATE retirado SET fecha_ingreso = '11/08/2025', fecha_retiro = '10/02/2026' WHERE id_retiro = '4d0234fc' AND id_cedula = '1193036794';
-- retirado ac6beb2c | cedula 1065812474
UPDATE retirado SET fecha_ingreso = '16/06/2025', fecha_retiro = '16/02/2026' WHERE id_retiro = 'ac6beb2c' AND id_cedula = '1065812474';
-- retirado 9ec09a70 | cedula 1005288401
UPDATE retirado SET fecha_ingreso = '19/08/2025', fecha_retiro = '18/02/2026' WHERE id_retiro = '9ec09a70' AND id_cedula = '1005288401';
-- retirado 17c516bd | cedula 1099362991
UPDATE retirado SET fecha_ingreso = '19/08/2025', fecha_retiro = '19/02/2026' WHERE id_retiro = '17c516bd' AND id_cedula = '1099362991';
-- retirado 7cfe4031 | cedula 1062905402
UPDATE retirado SET fecha_ingreso = '19/08/2025', fecha_retiro = '18/02/2026' WHERE id_retiro = '7cfe4031' AND id_cedula = '1062905402';
-- retirado 10164af5 | cedula 1070597495
UPDATE retirado SET fecha_ingreso = '19/08/2025', fecha_retiro = '18/02/2026' WHERE id_retiro = '10164af5' AND id_cedula = '1070597495';
-- retirado f1443b37 | cedula 6039791
UPDATE retirado SET fecha_ingreso = '19/08/2025', fecha_retiro = '18/02/2026' WHERE id_retiro = 'f1443b37' AND id_cedula = '6039791';
-- retirado c8156356 | cedula 1098722965
UPDATE retirado SET fecha_ingreso = '19/08/2025', fecha_retiro = '19/02/2026' WHERE id_retiro = 'c8156356' AND id_cedula = '1098722965';
-- retirado 1388aa05 | cedula 1098130976
UPDATE retirado SET fecha_ingreso = '01/09/2025', fecha_retiro = '28/02/2026' WHERE id_retiro = '1388aa05' AND id_cedula = '1098130976';
-- retirado eb0b0ab6 | cedula 1095803756
UPDATE retirado SET fecha_ingreso = '23/02/2026', fecha_retiro = '02/03/2026' WHERE id_retiro = 'eb0b0ab6' AND id_cedula = '1095803756';
-- retirado 0b68cbee | cedula 1232890034
UPDATE retirado SET fecha_ingreso = '04/12/2025', fecha_retiro = '02/03/2026' WHERE id_retiro = '0b68cbee' AND id_cedula = '1232890034';
-- retirado 1198ecb2 | cedula 91301967
UPDATE retirado SET fecha_ingreso = '13/01/2018', fecha_retiro = '06/03/2026' WHERE id_retiro = '1198ecb2' AND id_cedula = '91301967';
-- retirado 987de48f | cedula 1098171692
UPDATE retirado SET fecha_ingreso = '14/04/2025', fecha_retiro = '06/03/2026' WHERE id_retiro = '987de48f' AND id_cedula = '1098171692';
-- retirado a724bec1 | cedula 1095788624
UPDATE retirado SET fecha_ingreso = '16/06/2023', fecha_retiro = '09/03/2026' WHERE id_retiro = 'a724bec1' AND id_cedula = '1095788624';
-- retirado 5e652ee7 | cedula 1234340637
UPDATE retirado SET fecha_ingreso = '07/05/2025', fecha_retiro = '18/03/2026' WHERE id_retiro = '5e652ee7' AND id_cedula = '1234340637';
-- retirado 18d808d7 | cedula 1102724430
UPDATE retirado SET fecha_ingreso = '22/09/2025', fecha_retiro = '16/03/2026' WHERE id_retiro = '18d808d7' AND id_cedula = '1102724430';
-- retirado e2aad3b3 | cedula 1096246897
UPDATE retirado SET fecha_ingreso = '22/04/2024', fecha_retiro = '21/03/2026' WHERE id_retiro = 'e2aad3b3' AND id_cedula = '1096246897';
-- retirado 39cbfd0f | cedula 1063480733
UPDATE retirado SET fecha_ingreso = '18/04/2022', fecha_retiro = '24/03/2026' WHERE id_retiro = '39cbfd0f' AND id_cedula = '1063480733';
-- retirado a6050784 | cedula 1052572492
UPDATE retirado SET fecha_ingreso = '06/10/2025', fecha_retiro = '21/03/2026' WHERE id_retiro = 'a6050784' AND id_cedula = '1052572492';
-- retirado 59a7a92d | cedula 1005298205
UPDATE retirado SET fecha_ingreso = '24/09/2025', fecha_retiro = '24/03/2026' WHERE id_retiro = '59a7a92d' AND id_cedula = '1005298205';
-- retirado 5f496f68 | cedula 1095300058
UPDATE retirado SET fecha_ingreso = '01/10/2025', fecha_retiro = '30/03/2026' WHERE id_retiro = '5f496f68' AND id_cedula = '1095300058';
-- retirado 983f9d43 | cedula 1123890608
UPDATE retirado SET fecha_ingreso = '26/02/2025', fecha_retiro = '31/03/2026' WHERE id_retiro = '983f9d43' AND id_cedula = '1123890608';
-- retirado 4a47e647 | cedula 1026579572
UPDATE retirado SET fecha_ingreso = '06/10/2025', fecha_retiro = '01/04/2026' WHERE id_retiro = '4a47e647' AND id_cedula = '1026579572';
-- retirado dd9dcc07 | cedula 1098816278
UPDATE retirado SET fecha_ingreso = '09/04/2026', fecha_retiro = '01/04/2026' WHERE id_retiro = 'dd9dcc07' AND id_cedula = '1098816278';
-- retirado 85df93c4 | cedula 1007800033
UPDATE retirado SET fecha_ingreso = '17/03/2026', fecha_retiro = '01/04/2026' WHERE id_retiro = '85df93c4' AND id_cedula = '1007800033';
-- retirado d78f4f04 | cedula 1102379336
UPDATE retirado SET fecha_ingreso = '17/03/2026', fecha_retiro = '01/04/2026' WHERE id_retiro = 'd78f4f04' AND id_cedula = '1102379336';
-- retirado 472c0bca | cedula 37670060
UPDATE retirado SET fecha_ingreso = '19/04/2026', fecha_retiro = '06/04/2026' WHERE id_retiro = '472c0bca' AND id_cedula = '37670060';
-- retirado 5d767f44 | cedula 1005152125
UPDATE retirado SET fecha_ingreso = '27/03/2026', fecha_retiro = '09/04/2026' WHERE id_retiro = '5d767f44' AND id_cedula = '1005152125';
-- retirado 5706bf5c | cedula 1095912861
UPDATE retirado SET fecha_ingreso = '27/03/2026', fecha_retiro = '15/04/2026' WHERE id_retiro = '5706bf5c' AND id_cedula = '1095912861';
-- retirado d4bf9662 | cedula 1098742348
UPDATE retirado SET fecha_ingreso = '18/07/2024', fecha_retiro = '15/04/2026' WHERE id_retiro = 'd4bf9662' AND id_cedula = '1098742348';

COMMIT;
