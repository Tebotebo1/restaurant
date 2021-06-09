create database Restaurant;

CREATE TABLE OrderItem(
	[oi_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[oi_lineItem] [int] NULL,
	[oi_description] [varchar](255) NULL,
	[oi_qty] [int] NULL,
	[oi_price] [float] NULL,
	[o_id] [int] NULL
);

create TABLE Orders(
	[o_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[o_number] [int] NULL,
	[o_customerName] [varchar](255) NULL,
	[o_customerAddress] [varchar](255) NULL,
	[o_totalPrice] [float] NULL,
	[d_id] [int] NULL,
	[oi_id] int FOREIGN KEY REFERENCES OrderItem(oi_id)
);

CREATE TABLE Delivery(
	[d_id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[d_number] [int] NULL,
	[d_name] [varchar](255) NULL,
	[d_contactNumber] [varchar](255) NULL,
	 [o_id] int FOREIGN KEY REFERENCES Orders(o_id)
);


