CREATE TABLE Product_Brand
(
	  ID INT NOT NULL
	, ID_Brand INT NOT NULL
	, ID_Product INT NOT NULL
);

ALTER TABLE Product_Brand
ADD CONSTRAINT pk_Product_Brand
PRIMARY KEY (ID);

ALTER TABLE Product_Brand
ADD CONSTRAINT fk_Product
FOREIGN KEY(ID_Product)
REFERENCES Product(ID);

ALTER TABLE Product_Brand
ADD CONSTRAINT fk_Brand
FOREIGN KEY(ID_Brand)
REFERENCES Brand(ID);