Personal = LOAD '/joinexam/Per' USING PigStorage(',') AS
(
name : chararray,
age : int,
dept_id : int
);
Departman = LOAD '/joinexam/Dept' USING PigStorage(',') AS
(
dept_id : int,
dept_name : chararray
);
New_Data = JOIN Personal BY dept_id,Departman BY dept_id;
DUMP New_Data;
