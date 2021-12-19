-- Creating New User Account --

USE next_stop_db
INSERT INTO User_Account(
	User_Acct_ID, First_Name, Last_Name, DOB, Home_Address, User_Reviews
)
VALUES(
	'11', 'Peggy', 'Jackson', '06/08/1978', '87 Fairfield Dr, Brickville, TX 12354', 
	'Had an amazing time in Geneva with my husband. The view of the Swiss Alps was breath taking!'
);

-- Creating a New Trip --	

USE next_stop_db
INSERT INTO trip(Trip_ID, User_Acct_ID, Hotel_ID, Flight_ID, Dest_ID)
VALUES (04,(SELECT User_Acct_ID FROM User_Account WHERE Last_Name = 'Afkhami-Ardekani' )
	,(SELECT Hotel_ID FROM hotel WHERE Hotel_Name = 'Vienna Marriot Hotel')
	,(SELECT Flight_ID FROM flight WHERE Flight_Name = 'Swiss Airlines')
	,(SELECT Dest_ID FROM destination WHERE DCountry_Name= 'Austria'));