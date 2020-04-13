Personal = LOAD '/joinexam/Per' USING PigStorage(',') AS
(
name : chararray,
age : int,
dept_id : int
);
Pay = LOAD '/joinexam/Pay' USING PigStorage(',') AS
(
name : chararray,
pay : int
);
New_Data = JOIN Personal BY name RIGHT OUTER,Pay BY name;
DUMP New_Data;
