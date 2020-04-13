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
Fdata = FILTER Data BY 0<=age and age<=7;
Gdata = GROUP Fdata ALL;
DathChildCount = FOREACH Gdata GENERATE COUNT(Fdata);
DUMP DathChildCount;
