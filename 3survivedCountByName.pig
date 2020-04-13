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
Gdata = GROUP Fdata BY sex;
Sdata = FOREACH Gdata{
	Generate
	group, 
	COUNT(Fdata);
}
DUMP Sdata;


