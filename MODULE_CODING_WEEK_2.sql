/*All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.*/


-- 1. Run Query: Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT Milliseconds 
FROM Tracks
WHERE Milliseconds>= 5000000

-- How many tracks are returned?
-- Answer: 2

-- 2. Run Query: Find all the invoices whose total is between $5 and $15 dollars.

SELECT Total 
FROM Invoices 
WHERE Total between 5.00 AND 15.00

-- While the query in this example is limited to 10 records, running the query correctly will indicate how many total records there are - enter that number below?
-- Answer: 168

-- 3. Run Query: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

Select Firstname, Lastname, company
From Customers 
Where Firstname = "Jack" and Lastname = "Smith"

-- What company does Jack Smith work for?
-- Answer: Microsoft Corp

-- 4. Run Query: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

SELECT CustomerID, Total, InvoiceID, InvoiceDate
FROM Invoices 
WHERE CustomerID IN (56,58) AND Total between 1.00 AND 5.00 AND InvoiceID = 315

-- What was the invoice date for invoice ID 315?
-- Answer: 2012-10-27 00:00:00

-- 5. Run Query: Find all the tracks whose name starts with 'All'.

SELECT Name 
FROM Tracks
WHERE Name LIKE "All%" 

-- While only 10 records are shown, the query will indicate how many total records there are for this query - enter that number below.
-- Answer: 15

-- 6. Run Query: Find all the customer emails that start with "J" and are from gmail.com.

SELECT Email 
FROM Customers 
WHERE Email LIKE "J%gmail.com"

-- Enter the one email address returned (you will likely need to scroll to the right) below.
-- Answer: jubarnett@gmail.com

-- 7. Run Query: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

SELECT Billingcity, Total 
FROM Invoices
WHERE Billingcity IN ("Brasília", "Edmonton", "Vancouver")
ORDER BY InvoiceID DESC 

-- What is the total invoice amount of the first record returned? Enter the number below without a $ sign. Remember to sort in descending order to get the correct answer.
-- Answer: 13.86

-- 8. Run Query: Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.

SELECT CustomerId, COUNT(*) AS Orders
From Invoices 
GROUP BY CustomerId
ORDER BY Orders DESC

-- What is the number of items placed for the 8th person on this list? Enter that number below.
-- Answer: 7

-- 9. Run Query: Find the albums with 12 or more tracks.

SELECT AlbumId, Count(*) AS Num
FROM Tracks
GROUP BY AlbumId
HAVING COUNT (*) >= 12

-- While the number of records returned is limited to 10, the query, if run correctly, will indicate how many total records there are. Enter that number below.
-- Answer: 158

