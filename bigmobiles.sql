
Create database T11708A0_Gr06_BigMobiles
Go
use T11708A0_Gr06_BigMobiles
go
/*Khởi tạo bảng Admin*/
CREATE TABLE [Admin]
(

AdminID  int identity(1,1) PRIMARY KEY,
Email varchar(100),
[Password] varchar(20) not null,
Fullname nvarchar(50) not null ,
Avatar varchar(200) not null,
CreatedDate date default getdate(),
AdminState bit default 1
)
/*Khởi Tạo bảng Khách Hàng*/
CREATE TABLE Customers
(
CustomerID varchar(20) primary key,
FullName varchar(50) not null,
Gender bit default 1,
Phone varchar(15) not null,
Email varchar(100) not null,
[Password] varchar(20) not null,
Avatar varchar(255), 
CreatedDate date default getdate(),
CustomerState bit default 1 
)

/*Khởi tạo bảng danh mục sản Phẩm*/
CREATE TABLE Category
(
CategoryID varchar(20) primary key,
CategoryName varchar(50) not null,
CategoryImages varchar(100)not null,
CategoryState bit default 1
)
/*Khởi tạo bảng thương hiệu*/
CREATE TABLE Brand
(
BrandID varchar(20) primary key,
BrandName varchar(35) not null,
BrandImages varchar(100),
BrandState bit default 1
)
/*Khởitạo bảng sản phẩm*/
CREATE TABLE Products
(
ProductID varchar(20) primary key ,
CategoryID varchar(20),
BrandID varchar(20),
ProductName varchar(100) not null,
Image1 varchar(255) not null,
Image2 varchar(255) ,
Image3 varchar(255) ,
Image4 varchar(255) ,
Price float not null,
[Description] varchar(max),
Des2 varchar(max),
CreatedDate date default getdate(),
Feature varchar(50),
ProductState bit default 1,
Foreign key(BrandID) REFERENCES Brand(BrandID),
Foreign key(CategoryID) REFERENCES Category(CategoryID)

)
/*Khởi tạo bảng Đơn hàng*/
CREATE TABLE Orders
(
OrderID varchar(20)  primary key,
CustomerID varchar(20),
CreatedDate date not null default getdate(),
Total float not null,
ShipName varchar(50) not null,
ShipAddress varchar(200) not null,
ShipPhone varchar(20) not null,
ShipNote varchar(max) ,
ShipDate date,
ProcessStatus varchar(50) not null,
OrderState bit default 1
Foreign key(CustomerID) REFERENCES Customers(CustomerID),
)

/*Khởi tạo Bảng chi tiết đơn hàng */
CREATE TABLE OrderDetails
(
OrderDetailID int identity(1,1) primary key,
OrderID varchar(20) ,
ProductID varchar(20) ,
Quantity int ,
Total float not null,
Foreign key(ProductID) REFERENCES Products(ProductID),
Foreign key(OrderID) REFERENCES Orders(OrderID)
)


Create table news
(
newsID int identity(1,1) primary key,
Title varchar(max) not null ,
imageNews varchar(255),
[Description] varchar(max),
newsDate date 
)


Create table Rating
(
RatingID int identity(1,1)  primary key,
ProductID varchar(20)  ,
CustomerID varchar(20) ,
Rate int,
RatingDate date,
Foreign key(CustomerID) REFERENCES Customers(CustomerID),
Foreign key(ProductID) REFERENCES Products(ProductID),
)


Create table contactus
(
ContactID int identity(1,1) primary key,
Email varchar(max),
[Name] varchar(50),
Content varchar(max),
CreateDate date
)


Create table wishlist
(
WhishlistID int identity(1,1) primary key,
CustomerID varchar(20) ,
ProductID varchar(20)  ,
Foreign key(ProductID) REFERENCES Products(ProductID),
Foreign key(CustomerID) REFERENCES Customers(CustomerID)	
)

