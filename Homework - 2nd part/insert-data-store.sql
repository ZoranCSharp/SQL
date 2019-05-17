SET IDENTITY_INSERT Customer ON
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[City],[Country],[Phone])VALUES(1,'Maria','Anders','Berlin','Germany','030-0074321')
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[City],[Country],[Phone])VALUES(2,'Ana','Trujillo','Mexico D.F.','Mexico','659 555-4729')
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[City],[Country],[Phone])VALUES(3,'Antonio','Moreno','Mexico D.F.','Mexico','535 555-3932')
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[City],[Country],[Phone])VALUES(4,'Thomas','Hardy','London','UK','555 555-7788')
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[City],[Country],[Phone])VALUES(5,'Christina','Berglund','Lulea','Sweden','0921-12 34 65')
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[City],[Country],[Phone])VALUES(6,'Hanna','Moos','Mannheim','Germany','0621-08460')
INSERT INTO [Customer] ([Id],[FirstName],[LastName],[City],[Country],[Phone])VALUES(7,'Frederique','Citeaux','Strasbourg','France','0922-3564-5879')
SET IDENTITY_INSERT Customer OFF

SET IDENTITY_INSERT Supplier ON
INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])VALUES(1,'Exotic Liquids','Charlotte Cooper','London','UK','(172 555-2222',NULL)
INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])VALUES(2,'New Orleans Cajun Delights','Shelley Burke','New Orleans','USA','131 555-4822',NULL)
INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])VALUES(3,'Grandma Kelly''s Homestead','Regina Murphy','Ann Arbor','USA','313 555-5735','313 555-3349')
INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])VALUES(4,'Tokyo Traders','Yoshi Nagase','Tokyo','Japan','300 3555-5011',NULL)
INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])VALUES(5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Oviedo','Spain','980 598 76 54',NULL)
INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])VALUES(6,'Mayumi''s','Mayumi Ohno','Osaka','Japan','600 431-7877',NULL)
INSERT INTO [Supplier] ([Id],[CompanyName],[ContactName],[City],[Country],[Phone],[Fax])VALUES(7,'Pavlova, Ltd.','Ian Devling','Melbourne','Australia','30 444-2343','30 444-6588')
SET IDENTITY_INSERT Supplier OFF

SET IDENTITY_INSERT Product ON
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(1,'Chai',1,18.00,'10 boxes x 20 bags',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(2,'Chang',1,19.00,'24 - 12 oz bottles',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(3,'Batman',1,10.00,'12 - 550 ml bottles',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(4,'Chef's Seasoning',2,22.00,'48 - 6 oz jars',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(5,'Chef's best soup',2,21.35,'36 boxes',1)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(6,'Superman',3,25.00,'12 - 8 oz jars',0)
INSERT INTO [Product] ([Id],[ProductName],[SupplierId],[UnitPrice],[Package],[IsDiscontinued])VALUES(7,'Dr Strange',3,30.00,'12 - 1 lb pkgs.',0)
SET IDENTITY_INSERT Product OFF

SET IDENTITY_INSERT [Order] ON
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(1,'Jul  4 2012 12:00:00:000AM',85,440.00,'542378')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(2,'Jul  5 2012 12:00:00:000AM',79,1863.40,'542379')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(3,'Jul  8 2012 12:00:00:000AM',34,1813.00,'542380')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(4,'Jul  8 2012 12:00:00:000AM',84,670.80,'542381')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(5,'Jul  9 2012 12:00:00:000AM',76,3730.00,'542382')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(6,'Jul 10 2012 12:00:00:000AM',34,1444.80,'542383')
INSERT INTO [Order] ([Id],[OrderDate],[CustomerId],[TotalAmount],[OrderNumber])VALUES(7,'Jul 11 2012 12:00:00:000AM',14,625.20,'542384')
SET IDENTITY_INSERT [Order] OFF

SET IDENTITY_INSERT [OrderItem] ON
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(1,1,11,14.00,12)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(2,1,42,9.80,10)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(3,1,72,34.80,5)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(4,2,14,18.60,9)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(5,2,51,42.40,40)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(6,3,41,7.70,10)
INSERT INTO [OrderItem] ([Id],[OrderId],[ProductId],[UnitPrice],[Quantity])VALUES(7,3,51,42.40,35)
SET IDENTITY_INSERT [OrderItem] OFF