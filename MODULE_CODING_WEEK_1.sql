/*For all of the questions in this quiz, we are using the Chinook database. All of the interactive code blocks have been setup to retrieve data only from this database.*/


-- 1. Retrieve all the records from the Employees table.

SELECT *
FROM Employees

-- What is Robert King's mailing address? Note: You will have to scroll to the right in order to see it.
-- Answer: 590 Columbia Boulevard West

-- 2. Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.

Select FirstName, LastName, Birthdate, Address, City, State
From Employees
Where Birthdate = '1965-03-03 00:00:00'

-- Which of the employees listed below has a birthdate of 3-3-1965?
-- Answer: Steve Johnson

-- 3. Retrieve all the columns from the Tracks table, but only return 20 rows.

SELECT *
FROM Tracks
LIMIT 20;

-- What is the runtime in milliseconds for the 5th track, entitled "Princess of the Dawn"? Note: You will need to scroll to the right to see it, and you may want to copy and paste the number to ensure it is entered correctly.
-- Answer: 375418