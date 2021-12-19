/**** View All Table Data ***/

	/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Trip_ID]
      ,[Dest_ID]
      ,[Flight_ID]
      ,[Hotel_ID]
      ,[User_Acct_ID]
  FROM [next_stop_db].[dbo].[trip]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Flight_ID]
      ,[Flight_Name]
      ,[Flight_Price]
      ,[Flight_Review]
      ,[Travel_Time]
      ,[Airport]
  FROM [next_stop_db].[dbo].[flight]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Hotel_ID]
      ,[Hotel_Name]
      ,[Hotel_Review]
      ,[Hotel_Price]
      ,[HCountry_Name]
      ,[HCity_Name]
  FROM [next_stop_db].[dbo].[hotel]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [User_Acct_ID]
      ,[First_Name]
      ,[Last_Name]
      ,[DOB]
      ,[Pay_Type]
      ,[Home_Address]
      ,[Rec_Trips]
      ,[User_Reviews]
  FROM [next_stop_db].[dbo].[User_Account]

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Dest_ID]
      ,[DCountry_Name]
      ,[DCity_Name]
      ,[Dest_Reviews]
  FROM [next_stop_db].[dbo].[destination]


  -- View Trip Entries 
USE next_stop_db
SELECT 
	User_Account.First_Name AS 'First Name',
	User_Account. Last_Name AS 'Last Name',
	trip.Trip_ID,
	destination.DCountry_Name AS 'Destination',
	flight.Flight_Name AS 'Airline',
	hotel.Hotel_Name AS 'Hotel'
FROM trip
	INNER JOIN destination ON trip.Dest_ID = destination.Dest_ID
	INNER JOIN User_Account ON trip.User_Acct_ID = User_Account.User_Acct_ID
	LEFT OUTER JOIN flight on flight.Flight_ID = trip.Flight_ID
	LEFT OUTER JOIN hotel on hotel.Hotel_ID = trip.Hotel_ID
	WHERE trip.Trip_ID = 4