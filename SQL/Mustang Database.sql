USE mustang;

DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS App_User;

CREATE TABLE App_User(
	User_ID INT(11) AUTO_INCREMENT PRIMARY KEY,
    FirstName Varchar(32) NOT NULL,
    LastName Varchar(32) NOT NULL,
    Email Varchar(64) NOT NULL,
    Username Varchar(32) UNIQUE NOT NULL,
    Password Varchar(64) NOT NULL
);

INSERT INTO App_User (FirstName, LastName, Email, Username, Password) VALUES ('Eric', 'Johnson','johnson.eric290@gmail.com','JEric', sha2('Pass1', 256));
INSERT INTO App_User (FirstName, LastName, Email, Username, Password) VALUES ('Zach', 'Johnson','zachjohnson341@gmail.com','JZach', sha2('Pass1', 256));

CREATE TABLE Cars(
	Car_ID int(11) AUTO_INCREMENT PRIMARY KEY,
	User_ID INT(11) NOT NULL,
    Make Varchar(32) NOT NULL,
    Model Varchar(32) NOT NULL,
    Year int(11),
    Color Varchar(32) NOT NULL,
    Name Varchar(64) NOT NULL,
    Description Varchar(4096),
    Scale Varchar(32),
    Brand Varchar(64),
    Type Varchar(64),
    FOREIGN KEY (User_ID)
        REFERENCES App_User(User_ID)
);

INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1969', 'Red', 'Shelby GT-500', '', '1/18', 'ERTL', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1968', 'Yellow', 'GT Cobra Jet', '', '1/18', 'Maisto', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1968', 'White', 'GT Cobra Jet', '', '1/18', 'Maisto', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1968', 'Powder Blue', 'GT Cobra Jet', '', '1/18', 'Maisto', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Grabber Yellow', 'Mach 1', '', '1/18', 'Maisto', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Grabber Blue', 'Mach 1', '', '1/18', 'Maisto', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Twister Orange', 'Mach 1', '', '1/18', 'Maisto', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2012', 'Black', 'Boss 302', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Yellow', "Boss 429's", '', '1/64', 'Jada', '5-Deep');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1967', 'Red', 'Shelby GT-500', 'Star-Lord, Guardians of the Galaxy Special', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1973', 'Red/Blue', 'Mach 1', 'Captain Marvel, Avengers Special', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Green', 'Mach 1 428', '', '1/25', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Red', 'Boss 429', '', '1/24', 'Car Quest', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2008', 'Black/Silver', 'Shelby GT-500 KR', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2010', 'Grey', 'GT', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Red', 'Boss 429', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2010', 'Silver', 'GT', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2020', 'Blue', 'Shelby GT-500', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1965', 'Black', '', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1989', 'Black', 'GT', 'Highway Drag', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1967', 'Blue', 'Shelby GT-500', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Black', 'Boss 429', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2010', 'Gold', 'GT', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1989', 'Black', 'GT', '', '1/24', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1964', 'Green', '', '1964 1/2', '1/24', 'Motor Max', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'White', 'Boss 429', '', '1/24', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1965', 'White', 'Fastback 2+2', '', '1/24', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1965', 'Yellow', '', '1953 Mack B-61 Flatbed', '1/64', 'Maisto', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1965', 'Red', 'Fastback 2+2', '1970 Ford C', '1/64', 'M2', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1966', 'White', 'Gasser', '1969 F-100 Ranger', '1/64', 'M2', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1966', 'Black', 'Gasser', '1969 F-100 Ranger', '1/64', 'M2', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1988', 'Red', 'GT Custom', '1972 F-250 Explorer 4X4', '1/64', 'M2', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Green', '428 SCJ', '1966 Bronco', '1/64', 'M2', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1988', 'Black', 'GT', '1965 Ecoline Delivery Van, Purple Hornies', '1/64', 'M2', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1988', 'Yellow', 'GT', '1964 Econoline Truck', '1/64', 'M2', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'White', '', '1956 COE', '1/64', 'M2', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1965', 'Red', 'Fastback', '1967 F-100', '1/64', 'Greenlight', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1968', 'Grey', 'GT', '2015 F-150', '1/64', 'Greenlight', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1969', 'White', 'Boss 429', '1969 F-100', '1/64', 'Greenlight', 'Carrier');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1993', 'Grey', 'Prototype', '', '1/43', 'Racing Champions', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'White/Purple', 'Boss 429', 'Joker', '1/32', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2006', 'Grey', 'GT', 'War Machine', '1/32', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1973', 'Yellow', 'Eleanor', '', '1/43', 'Greenlight', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1976', 'White', 'll Cobra ll', '', '1/43', 'Greenlight', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'White', 'Roman"s', 'Fast and Furious', '1/32', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'Green', 'Sean"s', 'Fast and Furious', '1/32', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', '', '', 'Combo Pack', '1/64', 'Hot Wheels', '5 Deep');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Olive Drab', 'Mach 1 351', '', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1966', 'Blue/Black', 'Gasser', '2 Pack', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Grabber Blue', 'Boss 302', '', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1968', 'White', 'Custom', '', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1988', 'Red', 'GT', '', '1/64', 'M2', 'Buildable');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1968', 'Green', 'GT', '', '1/64', 'M2', 'Buildable');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1988', 'Yellow', 'GT', '', '1/64', 'M2', 'Buildable');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1969', 'White, Gold, Blue', 'Boss 429', '', '1/64', 'M2', 'Buildable');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Orange', '"Foose" Gambler 514', '', '1/64', 'M2', 'Buildable');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2008', 'Black', 'Shelby Terlingua', '', '1/64', 'Shelby American', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'Black', 'GT', 'Police', '1/64', 'Majorette', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2021', 'Blue', 'Shelby GT-500 KR', '', '1/64', 'Auto World', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1973', 'Green', 'Mach 1', '', '1/64', 'Auto World', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1968', 'Green', 'Shelby GT-500 KR', '', '1/64', 'Johnny Lightning', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1968', 'White', 'GT', '', '1/64', 'Johnny Lightning', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1968', 'Green', 'GT', '', '1/64', 'Johnny Lightning', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1985', 'White', 'SVO', '', '1/64', 'Johnny Lightning', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2015', 'Silver', 'GT', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2018', 'Black/Yellow', 'RTR Spec-5', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1973', 'Blue', 'Funny Car', '', '1/64', 'Racing Champions', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1969', 'White', 'Mach 1', '', '1/64', 'Racing Champions', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1966', 'Red', 'Fastback 2 +2', '', '1/64', 'Greenlight', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2008', 'Black/Yellow', 'Terlingua Racing Team #07', '', '1/64', 'Greenlight', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2022', 'Black', 'Mach 1', '', '1/64', 'Greenlight', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1967', 'Grey', 'Eleanor', '', '1/64', 'Greenlight', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1966', 'Yellow', 'Shelby GT 350', '', '1/64', 'Greenlight', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1969', 'Grey', 'Boss 429', '', '1/64', 'Greenlight', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1967', 'White', 'Shleby GT-500 KR', '', '1/64', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Red/Black', 'Boss 429', '', '1/64', 'Jada', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1969', 'Blue', 'Boss 429', '', '1/64', 'Matchbox', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'Blue', '', '', '1/64', 'Adventure Force', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'Red', '', '', '1/64', 'Adventure Force', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'Blue', '', '', '1/64', 'Adventure Force', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1966', 'Red', 'Convertible', '', '1/43', '', 'Unboxed');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Red', 'Boss 302', '', '1/24', 'Welly', 'Unboxed');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Yellow', 'Boss 302', '', '1/24', 'Welly', 'Unboxed');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1967', 'Silver', 'GT', '', '1/24', 'Maisto', 'Unboxed');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Yellow', 'Boss 302', '', '1/24', 'Maisto', 'Unboxed');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2014', 'Green', 'GT', '', '1/24', 'Maisto', 'Unboxed');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1967', 'Red/Silver', 'GT', 'Harley Davidson', '1/24', 'Maisto', 'Unboxed');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'Red', 'GT', '', '1/64', 'Majorette', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'Silver', 'Fastback', '', '1/64', 'Majorette', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2020', 'Maroon', 'Shelby GT-500', '', '1/64', 'Auto World', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2020', 'Lime Green', 'Shelby GT-500', '', '1/64', 'Auto World', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1973', 'Bronze', 'Mach 1', '', '1/64', 'Auto World', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2012', 'Blue', 'GT/CS', '', '1/64', 'Auto World', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1970', 'Yellow', '428 SCJ', 'Power Flowers', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1988', 'Blue', 'GT', 'Bazooka', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1969', 'White', 'GT', '', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1988', 'Yellow', 'GT', '', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1967', 'Green', 'Shelby GT-500', '', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1987', 'Black', 'GT Custom', '', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1966', 'Yellow', 'Gasser', '', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1966', 'Red', 'Shelby GT 350 Gasser', '', '1/64', 'M2', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1984', 'Purple', 'SVO', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1965', 'White', '', 'Snap On', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1971', 'Black', 'Mach 1', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1965', 'Green', 'Fastback 2+2', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'Blue', 'Shelby GT 350R', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2018', 'Red', 'GT Custom', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2018', 'Red, White, Blue', 'GT', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'Gold', 'GT', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1965', 'Maroon', 'Convertible', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2020', 'Lime Green', 'Shelby GT-500', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','0', 'White', 'GT Concept', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1967', 'Black', 'Coupe', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2005', 'White', '', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','2005', 'Grey', '', '', '1/64', 'Hot Wheels', 'Built');
INSERT INTO Cars (User_ID, Make, Model, Year, Color, Name, Description, Scale, Brand, Type) 
	VALUES ('1', 'Ford','Mustang','1975', 'Black', 'Cobra ll', 'Monopoly', '1/64', 'Johnny Lightning', 'Built');
