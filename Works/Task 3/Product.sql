CREATE TABLE [Product]
(
	  [ID] INT NOT NULL
	, [Name] NVARCHAR(50) NOT NULL
);


--DROP TABLE Product
ALTER TABLE Product
ADD CONSTRAINT pk_Product
PRIMARY KEY(ID);

ALTER TABLE Product
ADD CONSTRAINT u_Product_Name
UNIQUE([Name]);