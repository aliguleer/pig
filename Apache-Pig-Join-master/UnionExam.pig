Personal = LOAD '/joinexam/Per' USING PigStorage(',') AS
(
name : chararray,
age : int,
dept_id : int
);
New_Per = LOAD '/joinexam/New_Per' USING PigStorage(',') AS
(
name : chararray,
age : int
);
New_Data = UNION Personal,New_Per;
DUMP New_Data;
