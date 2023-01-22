create table tbl_Gender(
ID int not null primary key,
Gender VARCHAR(100) not null
)

--adding foreign key constarint 
alter table [dbo].[tbl_Person] ADD constraint tbl_Gender_GenderID 
FOREIGN key (GenderID) references tbl_Gender(ID)

--altering table adding new datatypes in the column
alter table [dbo].[tbl_Person]
alter column Name NVARCHAR(1000)

--adding default constarint
/*a default constraint will add a default value
in the column if no values are supplied in it.

In the below example we will add a default constraint in table tbl_Person column Gender id
so that it takes default values whenever Null values are supplied to it.
*/
--Command on an existing column
ALTER TABLE tbl_Person
ADD CONSTRAINT DF_tbl_Person_GenderID
DEFAULT 4 FOR GenderID

-- command for default constraint on new column
/*ALTER TABLE tbl_Person
ADD ADDRESS nvarhar(100) null 
CONSTRAINT DF_tbl_Person_ADDRESS DEFAULT 'Value not available'*/