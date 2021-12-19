/*
	This is the production script for Assignment Phase 3
	Version: 1.0 
	Author: Daniel Afkhami-Ardekani
	Date: 12/11/2021
*/

--Step 1: Inisalize NextStop Database
CREATE DATABASE next_stop_db;

-- Step 2: Switch to new database, next_stop_db
USE next_stop_db;

-- Step 3: Create database tables

-- Create User Account
CREATE TABLE User_Account(
	User_Acct_ID INT PRIMARY KEY,
	First_Name VARCHAR(50) NOT NULL,
	Last_Name VARCHAR(50) NOT NULL,
	DOB DATE NOT NULL,
	Pay_Type VARCHAR(150),
	Home_Address VARCHAR(50) NOT NULL,
	Rec_Trips VARCHAR(100),
	User_Reviews VARCHAR(300)
)

-- Create Flight
CREATE TABLE flight(
	Flight_ID INT PRIMARY KEY,
	Flight_Name VARCHAR(50) NOT NULL,
	Flight_Price MONEY NOT NULL,
	Flight_Review VARCHAR(300),
	Travel_Time TIME NOT NULL,
	Airport VARCHAR(50)
)

-- Create Destination
CREATE TABLE destination(
	Dest_ID INT PRIMARY KEY,
	DCountry_Name VARCHAR(100) NOT NULL,
	DCity_Name VARCHAR(100) NOT NULL,
	Dest_Reviews VARCHAR(300)
)

-- Create Hotel
CREATE TABLE hotel(
	Hotel_ID INT PRIMARY KEY,
	Hotel_Name VARCHAR(50) NOT NULL,
	Hotel_Review VARCHAR(300),
	Hotel_Price MONEY NOT NULL,
	HCountry_Name VARCHAR(100) NOT NULL,
	HCity_Name VARCHAR(50) NOT NULL
)

-- Create Trip
CREATE TABLE trip(
	Trip_ID INT PRIMARY KEY,
	Dest_ID INT FOREIGN KEY REFERENCES destination(Dest_ID),
	Flight_ID INT FOREIGN KEY REFERENCES flight(flight_ID),
	Hotel_ID INT FOREIGN KEY REFERENCES hotel(Hotel_ID),
	User_Acct_ID INT FOREIGN KEY REFERENCES user_account(User_Acct_ID)
)

-- Step 4: Insert Data --

-- INSERT USER DATA --

-- User 1
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address
)
VALUES(
	'01', 'Daniel', 'Afkhami-Ardekani', '03/16/1994', '156 Dummy St, Dumbville, PA 56984'
)

-- User 2
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address
)
VALUES(
	'02', 'Emily', 'Nuggets', '05/13/1994', '623 Dummy St, Dumbville, PA 56984'
)

-- User 3
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address
)
VALUES(
	'03', 'Joe', 'Craft', '06/12/1990', '136 Alfred St, Paloi, PA 19562'
)

-- User 4
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address
)
VALUES(
	'04', 'Liam', 'Tunafish', '09/05/1994', '257 Phoenix Dr, Fipple, NJ 89659'
)

-- User 5
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address
)
VALUES(
	'05', 'Evan', 'Gupta', '12/26/1988', '326 Horizon Blvd, Levitown, RI 14589'
)

-- User 6
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address, User_Reviews
)
VALUES(
	'06', 'Evan', 'Pepper', '12/12/1989', '326 Haven Blvd, Oslo, RI 13256', 'Had an amazing time in Italy! The water was crystal clear and the fresh fish was to die for!'
);

-- User 7
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address, User_Reviews
)
VALUES(
	'07', 'John', 'Hammond', '11/26/1987', '654 Sunset Blvd, Milford, CT 83450', 'The Maldives were unbelievable. I hope I can get back there soon!!'
);

-- User 8
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address, User_Reviews
)
VALUES(
	'08', 'David', 'Mumford', '08/26/1999', '987 Ramada St, Bozeman, MT 19456', '10/10 would recommend visiting Banff National Park. Beautiful!!'
);

-- User 9
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address, User_Reviews
)
VALUES(
	'09', 'Nick', 'DeCampino', '12/10/1985', '145 S. Rose St, Baltimore, MD 22421', 'Duck North Carolina never fails.. OBX is the spot for me and my family. Amazing time!'
);

-- User 10
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address, User_Reviews
)
VALUES(
	'10', 'Frank', 'Trump', '12/10/1965', '52 North Shore Dr, Coralla, NC 23595', 'Ah, nothing in OBX is like it was back in my day. The 80s was the time to come! No era was better!'
);

-- INSERT DESTINATION DATA -- 

-- Destination 1
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name, Dest_Reviews
)
VALUES(
	'01', 'Italy', 'Venice', 'Beautiful views, coast line, and the pizza is the best I have ever had!'
);

-- Destination 2
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name
)
VALUES(
	'02', 'Turkey', 'Istanbul'

);
-- Destination 3
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name
)
VALUES(
	'03', 'France', 'Nice'
);

-- Destination 4
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name, Dest_Reviews
)
VALUES(
	'04', 'Iran', 'Tehran', 'Warm and welcoming people with a rich and unique culture. The history and architecture are stunning.'
);

-- Destination 5
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name
)
VALUES(
	'05', 'Sweden', 'Malmo' 
);

-- Destination 6
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name
)
VALUES(
	'06', 'Austria', 'Vienna'
);

-- Destination 7
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name
)
VALUES(
	'07', 'Switzerland', 'Geneva'
);

-- Destination 8
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name
)
VALUES(
	'08', 'England', 'London'
);

-- Destination 9
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name
)
VALUES(
	'09', 'Egypt', 'Cairo'
);

-- Destination 10
INSERT INTO destination(
	Dest_ID, DCountry_Name, DCity_Name
)
VALUES(
	'10', 'Japan', 'Toyoko'
);


-- INSERT HOTEL DATA --

-- Hotel 1 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Review, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'01', '5 stars!', '106', 'Italy', 'Venice', 'Palazzo Veneziano'
);

-- Hotel 2 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Review, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'02', 'Beautiful hotel!', '254', 'Turkey', 'Istanbul', 'Ciragan Palace Kempinski'
);

-- Hotel 3 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Review, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'03', 'Amazing views from our room!', '238', 'France', 'Nice', 'Le Negresco'
);

-- Hotel 4 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Review, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'04', '4 out of 5 stars', '50', 'Iran', 'Tehran', 'Espinas Hotel'
);

-- Hotel 5 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'05', '76', 'Sweden', 'Malmo', 'Mayfair Hotel TunneIn'
);

-- Hotel 6 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Review, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'06', '5 stars!', '276', 'Austria', 'Veinna', 'Vienna Marriot Hotel'
);

-- Hotel 7 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Review, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'07', 'Wonderful experience', '168', 'Switzerland', 'Geneva', 'Hotel NH Geneva City'
);

-- Hotel 8 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Review, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'08', 'Very nice hotel but the where is terrible this time of year.', '231', 'England', 'London', 'The Woldorf Hilton, London'
);

-- Hotel 9 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Review, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'09', 'Waking up every morning to the ancient pyramids was amazing. 10/10!', '106', 'Egypt', 'Cairo', 'Kempinski Nile Hotel Garden City Cairo'
);

-- Hotel 10 --
INSERT INTO hotel(
	Hotel_ID, Hotel_Review, Hotel_Price, HCountry_Name, HCity_Name, Hotel_Name
)
VALUES(
	'10', 'Such a warm and Friendly staff!', '32', 'Japan', 'Tokyo', 'Red Planet Tokyo Asakusa'
);

-- INSERT FLIGHT Data --

-- Flight 1 --
INSERT INTO flight(
	Flight_ID, Flight_Name, Flight_Price, Flight_Review, Travel_Time, Airport
)
VALUES(
	'01', 'United Airlines', '780', 'I always fly with United. They are my go to!', '7:40', 'Philadelphia International Airport'
);

-- Flight 2 --
INSERT INTO flight(
	Flight_ID, Flight_Name, Flight_Price, Travel_Time, Airport
)
VALUES(
	'02', 'American', '850', '8:40', 'Baltimore Washington International Airport'
);

-- Flight 3 --
INSERT INTO flight(
	Flight_ID, Flight_Name, Flight_Price, Travel_Time, Airport
)
VALUES(
	'03', 'Swiss Airlines', '645', '5:57', 'Baltimore Washington International Airport'
);

-- Flight 4 --
INSERT INTO flight(
	Flight_ID, Flight_Name, Flight_Price, Travel_Time, Airport
)
VALUES(
	'04', 'Emirates', '1023', '7:57', 'Baltimore Washington International Airport'
);

-- Flight 5 --
INSERT INTO flight(
	Flight_ID, Flight_Name, Flight_Price, Travel_Time, Airport
)
VALUES(
	'05', 'Delta Airlines', '869', '7:16', 'Newark International Airport'
);

-- Flight 6 --
INSERT INTO flight(
	Flight_ID, Flight_Name, Flight_Price, Travel_Time, Airport
)
VALUES(
	'06', 'British Airlines', '1200', '10:05', 'Newark International Airport'
);

-- INSERT Trip Data--

-- Trip 1-- 
  INSERT INTO trip(Trip_ID, User_Acct_ID, Hotel_ID, Flight_ID, Dest_ID)
  VALUES (01,(SELECT User_Acct_ID FROM User_Account WHERE Last_Name = 'Nuggets' )
		,(SELECT Hotel_ID FROM hotel WHERE Hotel_Name = 'Kempinski Nile Hotel Garden City Cairo')
		,(SELECT Flight_ID FROM flight WHERE Flight_Name = 'American')
		,(SELECT Dest_ID FROM destination WHERE DCountry_Name= 'Egypt'));

		-- Trip 2 -- 
  INSERT INTO trip(Trip_ID, User_Acct_ID, Hotel_ID, Flight_ID, Dest_ID)
  VALUES (02,(SELECT User_Acct_ID FROM User_Account WHERE Last_Name = 'Nuggets' )
		,(SELECT Hotel_ID FROM hotel WHERE Hotel_Name = 'Le Negresco')
		,(SELECT Flight_ID FROM flight WHERE Flight_Name = 'United Airlines')
		,(SELECT Dest_ID FROM destination WHERE DCountry_Name= 'France'));

		-- Trip 3 -- 
  INSERT INTO trip(Trip_ID, User_Acct_ID, Hotel_ID, Flight_ID, Dest_ID)
  VALUES (03,(SELECT User_Acct_ID FROM User_Account WHERE Last_Name = 'Tunafish' )
		,(SELECT Hotel_ID FROM hotel WHERE Hotel_Name = 'Espinas Hotel')
		,(SELECT Flight_ID FROM flight WHERE Flight_Name = 'British Airlines')
		,(SELECT Dest_ID FROM destination WHERE DCountry_Name= 'Iran'));

		/** Trip 4 
			This has been left blank intentionally on purpose.
			The user will create the 4th trip using an INSERT statement provided in UserExamples
		**/ 
		
		-- Trip 5 -- 
  INSERT INTO trip(Trip_ID, User_Acct_ID, Hotel_ID, Flight_ID, Dest_ID)
  VALUES (05,(SELECT User_Acct_ID FROM User_Account WHERE Last_Name = 'Gupta' )
		,(SELECT Hotel_ID FROM hotel WHERE Hotel_Name = 'The Woldorf Hilton, London')
		,(SELECT Flight_ID FROM flight WHERE Flight_Name = 'British Airlines')
		,(SELECT Dest_ID FROM destination WHERE DCountry_Name= 'England'));