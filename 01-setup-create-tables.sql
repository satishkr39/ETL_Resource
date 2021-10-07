--CREATE SCHEMA
CREATE SCHEMA ref
GO

--CREATE STG TABLES
-- Table: ref.STG_Customers
CREATE TABLE ref.STG_Customers
(
    CustomerName character varying,
    Province character varying,
    Region character varying,
    CustomerSegment character varying
)


CREATE TABLE ref.STG_Orders
(
    RowID numeric,
    OrderID numeric,
    OrderDate date,
    OrderPriority character varying,
    OrderQuantity numeric,
    Sales numeric,
    Discount numeric,
    ShipMode character varying,
    Profit numeric,
    UnitPrice numeric,
    ShippingCost numeric,
    CustomerName character varying,
    ProductName character varying,
    ShipDate date
)


-- Table: ref.STG_Products
CREATE TABLE ref.STG_Products
(
    ProductName character varying,
    ProductCategory character varying,
    ProductSubCategory character varying,
    ProductContainer character varying,
    ProductBaseMargin numeric
)

-- Table: ref.STG_RegionManagers
CREATE TABLE ref.STG_RegionManagers
(
    Region character varying,
    Manager character varying
)

-- Table: ref.STG_Returns
CREATE TABLE ref.STG_Returns
(
    OrderID numeric,
    Status character varying
)


--CREATE DWH TABLES
-- Table: ref.DWH_Customers
CREATE TABLE ref.DWH_Customers
(
    CustomerName character varying,
    Province character varying,
    Region character varying,
    CustomerSegment character varying
)

-- Table: ref.DWH_Orders
CREATE TABLE ref.DWH_Orders
(
    RowID numeric,
    OrderID numeric,
    OrderDate date,
    OrderPriority character varying,
    OrderQuantity numeric,
    Sales numeric,
    Discount numeric,
    ShipMode character varying,
    Profit numeric,
    UnitPrice numeric,
    ShippingCost numeric,
    CustomerName character varying,
    ProductName character varying,
    ShipDate date
)

-- Table: ref.DWH_Products
CREATE TABLE ref.DWH_Products
(
    ProductName character varying,
    ProductCategory character varying,
    ProductSubCategory character varying,
    ProductContainer character varying,
    ProductBaseMargin numeric
)

-- Table: ref.DWH_RegionManagers
CREATE TABLE ref.DWH_RegionManagers
(
    Region character varying,
    Manager character varying
)

-- Table: ref.DWH_Returns
CREATE TABLE ref.DWH_Returns
(
    OrderID numeric,
    Status character varying
)

--CREATE DM TABLES
CREATE TABLE ref.DM_CustomerRegionalSales
(
    CustomerName character varying,
    Province character varying,
    Region character varying,
    CustomerSegment character varying,
	OrderID numeric,
    OrderDate date,
	Sales numeric
)
