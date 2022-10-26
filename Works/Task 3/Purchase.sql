CREATE TABLE Purchase
(
	  ID INT NOT NULL
	, ID_Product_Brand INT NOT NULL
	, ListPrice MONEY NOT NULL
	, PurchaseDate DATE NOT NULL
);

ALTER TABLE Purchase
ADD CONSTRAINT pk_Purchase
PRIMARY KEY(ID);

ALTER TABLE Purchase
ADD CONSTRAINT fk_Product_Brand_Purchase
FOREIGN KEY(ID_Product_Brand)
REFERENCES Product_Brand(ID);
