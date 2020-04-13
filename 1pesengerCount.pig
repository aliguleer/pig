Data = LOAD '/sinav/TitanicClean.csv' USING PigStorage(',') AS
(
Id : int,
sname : chararray,
name : chararray,
pClass : chararray,
age : int,
sex : chararray,
survived : int,
sexCode : int
);
Ndata = GROUP Data ALL;
PesengerS = FOREACH Ndata GENERATE COUNT(Data);
DUMP PesengerS;
