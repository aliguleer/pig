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
Fdata = FILTER Data BY survived==1;
Gdata = GROUP Fdata ALL;
Sdata = FOREACH Gdata Generate COUNT(Fdata);
DUMP Sdata;


