CREATE DATABASE Travel_Booking_Management
USE Travel_Booking_Management

-- TRANSPORTATION TABLE
CREATE TABLE Transportation(Transportation_id  INT AUTO_INCREMENT PRIMARY KEY,
Transport_type VARCHAR(50),
Transport_name VARCHAR(50), 
Capacity INT,
Availbility VARCHAR(50),
Departure VARCHAR(50),
Arrival VARCHAR(50),
Departure_time TIME,
Arrival_time TIME, 
Price INT
);
SELECT*FROM Transportation

-- HOTELS
CREATE TABLE Hotels(Hotel_Id INT AUTO_INCREMENT PRIMARY KEY,
Hotel_Name VARCHAR(50),
Location VARCHAR(50),
Room_Type VARCHAR(50),
Availbility VARCHAR(50),
Price_Per_Day INT
);
SELECT*FROM Hotels

-- CUSTOMER TABLE
CREATE TABLE Customer(Customer_Id INT AUTO_INCREMENT PRIMARY KEY,
Customer_Name VARCHAR(50),
Email VARCHAR(50),
Phone_Num VARCHAR(15),
Address VARCHAR(50),
Date_Of_Birth DATE
)
                   

-- RESERVATIONS TABLE
CREATE TABLE reservations (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    flight_id INT,
    hotel_id INT,
    reservation_date DATETIME NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id)
);
SELECT*FROM reservations

-- BOOKINGS TABLE
CREATE TABLE Bookings (
    Booking_Id INT AUTO_INCREMENT PRIMARY KEY,
    Reservation_id INT,
    Booking_date DATETIME NOT NULL,
    Payment_status VARCHAR(20) NOT NULL,
    Payment_Method VARCHAR(20) NOT NULL,
    Amount_paid DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Reservation_id) REFERENCES Reservations(Reservation_id)
);
SELECT*FROM Bookings

-- INSERT INTO TRANSPORTATION TABLE
INSERT INTO transportation VALUES (1,'Train','Intercity',250,300,'Thanjavur','Chennai','09:10:00','04:30:00',115)
INSERT INTO transportation VALUES (2,'Flight','Qatar Airways',100,150,'Chennai','London','08:00:00','10:00:00',500)
INSERT INTO transportation VALUES (3,'Bus','Blue bus',45,50,'Trichy','Bangalore','06:00:00','08:00:00',800)
INSERT INTO transportation VALUES  (4,'Flight','Southwest Airlines',150,150,'Chennai','Canada','08:00:00','12:00:00',500)
INSERT INTO transportation VALUES (5,'Bus','Flixbus',50,50,'Coimbatore','Mumbai','10:00:00','05:00:00',900)
INSERT INTO transportation VALUES (6,'Train','Rajdhani Express',250,300,'Tirunelveli','Chennai','07:10:00','05:30:00',200)
INSERT INTO transportation VALUES (7,'Flight','Air India',100,150,'Chennai','Singapore','07:00:00','11:00:00',10000)
INSERT INTO transportation VALUES (8,'Bus','KPN Travels',45,50,'Chennai','Bangalore','05:00:00','10:30:00',1000)
INSERT INTO transportation VALUES  (9,'Flight','SpiceJet',150,150,'Chennai','America','06:00:00','12:00:00',20000)
INSERT INTO transportation VALUES (10,'Bus','Megabus',50,50,'Coimbatore','kerala','11:00:00','06:00:00',2000)


-- INSERT INTO HOTEL TABLE
INSERT INTO Hotels VALUES (001,'Four seasons','chennai','single','Yes','2500')
INSERT INTO Hotels VALUES (020,'Hilton','London','Double','Yes','3000')
INSERT INTO Hotels VALUES (119,'Radisson','Bangalore','Suit','Yes','3500')
INSERT INTO Hotels VALUES (202,'Marriott','Canada','Double','Yes','2000')
INSERT INTO Hotels VALUES (004,'Radisson','Mumbai','Suit','No','2900')
INSERT INTO Hotels VALUES (002,'Taj Hotels','chennai','single','Yes','4000')
INSERT INTO Hotels VALUES (021,'Hyatt Hotels','singapore','Double','Yes','3500')
INSERT INTO Hotels VALUES (109,'The Ritz-Carlton','Bangalore','Suit','Yes','2500')
INSERT INTO Hotels VALUES (220,'Marriott Hotels','america','Double','Yes','4000')
INSERT INTO Hotels VALUES (004,'Radisson','kerala','Suit','No','3000')

-- INSERT INTO CUSTOMER
INSERT INTO Customer VALUES(1,'John','john345@gmail.com',3948571038,'123 Elm Street, Springfield, IL, 62704, Thanjavur','2000-03-24')
INSERT INTO Customer VALUES(2,'Smith','smith639@gmail.com',4938405827,'382 Ang Street, 62910, Chennai','2001-05-30')
INSERT INTO Customer VALUES(3,'Priya','priya539@gmail.com',4930286483,'203 Ghs Street, 60392, Trichy','1999-03-15')
INSERT INTO Customer VALUES(4,'Vivek','vivek492@gmail.com',9302910390,'394 Sbd Street, 63829, chennai','2002-06-23')
INSERT INTO Customer VALUES(5,'Kaviya','kavi593@gmail.com',5948327103,'483 Fkl Street, 64920, Coimbatore','2000-02-22')
INSERT INTO Customer VALUES(6,'Joseph','joseph345@gmail.com',5068571038,'103 abc Street, 62459, Tirunelveli','2000-05-30')
INSERT INTO Customer VALUES(7,'Swetha','swetha639@gmail.com',4958405827,'322 fos Street, 64010, Chennai','2001-04-20')
INSERT INTO Customer VALUES(8,'Prem','prem539@gmail.com',4934086483,'403 Gud Street, 60952, chennai','1999-04-19')
INSERT INTO Customer VALUES(9,'Vithya','vithya492@gmail.com',5942910390,'304 Sti Street, 60429, chennai','2002-01-20')
INSERT INTO Customer VALUES(10,'Hari','Hari593@gmail.com',5950309103,'403 opl Street, 64500, Coimbatore','2000-05-12')

-- INSERT INTO RESERVATION TABLE
INSERT INTO Reservations VALUES(101,1,'1',001,'2023-08-27',115)
INSERT INTO Reservations VALUES(102,2,'2',020,'2024-01-23',550)
INSERT INTO Reservations VALUES(103,3,'3',119,'2024-05-05',900)
INSERT INTO Reservations VALUES(104,4,'4',202,'2024-03-16',600)
INSERT INTO Reservations VALUES(105,5,'070',004,'2024-06-30',1000)
INSERT INTO Reservations VALUES(106,6,'6',001,'2023-08-27',115)
INSERT INTO Reservations VALUES(107,7,7,020,'2024-01-23',550)
INSERT INTO Reservations VALUES(108,8,8,119,'2024-05-05',900)
INSERT INTO Reservations VALUES(109,9,9,202,'2024-03-16',600)
INSERT INTO Reservations VALUES(110,10,'10',004,'2024-06-30',1000)
select*from reservations

-- INSERT INTO BOOKING TABLE
INSERT INTO Bookings VALUES(201,101,'2023-07-29','paid','cash',150)
INSERT INTO Bookings VALUES(202,102,'2024-01-02','paid','online payment',550)
INSERT INTO Bookings VALUES(203,103,'2024-04-18','pending','online payment',700)
INSERT INTO Bookings VALUES(204,104,'2024-02-18','paid','cash',600)
INSERT INTO Bookings VALUES(205,105,'2024-06-03','paid','cash',1000)
INSERT INTO Bookings VALUES(206,106,'2023-07-29','paid','cash',250)
INSERT INTO Bookings VALUES(207,107,'2023-12-02','paid','online payment',10500)
INSERT INTO Bookings VALUES(208,108,'2024-04-18','pending','online payment',1100)
INSERT INTO Bookings VALUES(209,109,'2024-02-18','paid','cash',20500)
INSERT INTO Bookings VALUES(210,110,'2024-06-03','paid','cash',2100)
select*from bookings

SELECT*FROM TRANSPORTATION;
SELECT*FROM HOTELS;
SELECT*FROM CUSTOMER;
SELECT*FROM RESERVATION;
SELECT*FROM BOOKING;

-- TRANSPORTATION
SELECT*FROM TRANSPORTATION WHERE TRANSPORTATION_ID=1;

-- HOTELS
SELECT*FROM HOTELS WHERE HOTEL_ID=1;

-- CUSTOMER
SELECT*FROM CUSTOMER WHERE CUSTOMER_ID=1;

-- RESERVATION
SELECT*FROM RESERVATIONS WHERE RESERVATION_ID=101;

-- BOOKINGS
SELECT*FROM BOOKINGS WHERE BOOKING_ID=201;

-- CHANGE COLUMN NAME
ALTER TABLE reservations CHANGE flight_id transportation_id INT;

-- CHANGE DATATYPE
ALTER TABLE bookings change booking_date Booking_date DATE;
ALTER TABLE reservations CHANGE reservation_date Reservation_date DATE;


-- UPDATE THE DATA
UPDATE reservations SET transportation_id=5
WHERE reservation_id=105;

-- CUSTOMER NEED
SELECT t.transportation_id,t.transport_type,t.transport_name,t.availbility,t.departure,t.departure_time,t.arrival,t.arrival_time,t.price,r.total_price
FROM transportation as t
LEFT JOIN reservations as r on t.transportation_id=r.transportation_id;

-- HOW MANY TRANSPORT WILL DEPARTURE 
SELECT count(departure),departure FROM transportation where departure='chennai' GROUP BY departure;
SELECT count(departure),departure FROM transportation GROUP BY departure;


-- CUSTOMER DETAILS
SELECT c.customer_id,c.customer_name,c.email,c.phone_num,c.address,c.date_of_birth,b.booking_id,b.booking_date,r.reservation_id,
r.reservation_date,r.total_price,b.payment_status,b.payment_method,b.amount_paid,h.hotel_name,h.location,h.price_per_day
FROM customer c
LEFT JOIN reservations r on c.customer_id=r.customer_id
LEFT JOIN bookings b on r.reservation_id=b.reservation_id
LEFT JOIN transportation t on r.transportation_id=t.transportation_id
LEFT JOIN hotels h on r.hotel_id=h.hotel_id;

-- TRANSPORTATION DEPARTURE AND ARRIVAL
SELECT * FROM transportation
WHERE departure = 'chennai' AND arrival = 'bangalore';


-- TOTAL REVENUE
SELECT SUM(total_price) AS total_revenue
FROM reservations
WHERE reservation_date BETWEEN '2023-08-27' AND '2024-01-23';


-- CUSTOMER BOOKING DATE DETAILS
select*from customer where 
customer_id in (SELECT customer_id 
                 FROM Reservations 
                 WHERE reservation_date>'2023-08-27');
           
-- VIEW
CREATE VIEW CUSTOMER_DETAILS AS
SELECT *FROM customer
WHERE CUSTOMER_ID = 1           
                 
SELECT * FROM CUSTOMER_DETAILS



