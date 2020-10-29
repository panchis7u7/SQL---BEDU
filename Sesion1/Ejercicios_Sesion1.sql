#1
USE classicmodels;
#2
SELECT lastname FROM employees;
#3
SELECT lastname, firstname, jobTitle FROM employees; 
#4
SELECT * FROM employees;
#5
SELECT lastname, firstname, jobTitle FROM employees WHERE jobTitle = "Sales Rep";
#6
SELECT lastname, firstname, jobTitle, officeCode FROM employees WHERE jobTitle = "Sales Rep" AND officeCode = 1;
#7
SELECT lastname, firstname, jobTitle, officeCode FROM employees WHERE jobTitle = "Sales Rep" OR officeCode = 1;
#8
SELECT lastname, firstname, officeCode FROM employees WHERE officeCode IN(1,2,3); 
#9
SELECT lastname, firstname, jobTitle FROM employees WHERE jobTitle != "Sales Rep";
#10
SELECT lastname, firstname, officeCode FROM employees WHERE officeCode > 5;
#11
SELECT lastname, firstname, officeCode FROM employees WHERE officeCode <= 4;
#12
SELECT customerName, country, state from customers WHERE country = "USA" AND state = "CA";
#13
SELECT customerName, country, state, creditLimit FROM customers WHERE country = "USA" AND state = "CA" AND creditLimit > 100000; 
#14
SELECT customerName, country FROM customers WHERE country = "USA" OR country = "France";
#15
SELECT customerName, country, creditLimit FROM customers WHERE (country IN("USA", "France")) AND creditLimit > 100000;
#16
SELECT officeCode, city, phone, country FROM offices WHERE country IN("USA", "France");
#17
SELECT officeCode, city, phone, country FROM offices WHERE country NOT IN("USA", "France");
#18
SELECT orderNumber, customerNumber, status, shippedDate FROM orders WHERE orderNumber IN(10165,10287,10310);
#19
SELECT contactLastName, contactFirstName FROM customers ORDER BY(contactLastName) ASC;
#20
SELECT contactLastName, contactFirstName FROM customers ORDER BY(contactLastName) DESC;
#21
SELECT contactLastName, contactFirstName FROM customers ORDER BY(contactLastName) DESC, (contactFirstName) ASC;
#22
SELECT customerNumber, contactFirstName, creditLimit FROM customers ORDER BY(creditLimit) DESC LIMIT 5;
#23
SELECT customerNumber, contactFirstName, creditLimit FROM customers ORDER BY(creditLimit) ASC LIMIT 5;