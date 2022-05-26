create database orangehrm;

USE orangehrm;

CREATE TABLE employee (
    idEmployee INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL
);

ALTER TABLE employee add column dateOfBirth date;

INSERT INTO employee (idEmployee, firstName, lastName, dateOfBirth) VALUES 
('1', 'Maya', 'Burt', '1980-01-01'),
('2', 'Vincent', 'Wilkes', '1980-06-05'),
('3', 'Rania', 'Naylor', '2000-03-10'),
('4', 'Lucca', 'Vasquez', '1995-12-31'),
('5', 'Mirra', 'Andrews', '1994-12-29'),
('6', 'Jamie', 'Higgs', '1993-03-07');

CREATE TABLE workexperience (
    seqId INT PRIMARY KEY,
    idEmployee INT,
    company VARCHAR(100) NOT NULL,
    jobTitle VARCHAR(100) NOT NULL,
    fromDate DATE NULL,
    toDate DATE NULL,
    FOREIGN KEY (idEmployee)
        REFERENCES employee (idEmployee)
);

 INSERT INTO workexperience (seqId, idEmployee, company, jobTitle, fromDate, toDate) VALUES
 ('1', '1', 'IT FOX', 'Q&A tester', '2020-01-01', '2021-03-04'),
 ('2', '1', 'Heaven IT', 'Q&A tester', '2021-03-05', '2022-02-02'),
 ('3', '2', 'IT Creation', 'Manual tester', '2019-03-03', '2020-12-30'),
 ('4', '2', 'IT Factory', 'Manual tester', '2021-03-03', '2022-01-30'),
 ('5', '2', 'Bug Finder', 'Senior Manual tester', '2022-03-03', '2022-05-23'),
 ('6', '3', 'IT FOX', 'Manual tester', '2021-07-03', '2022-01-10'),
 ('7', '4', 'IT FOX', 'Q&A tester', '2018-01-01', '2021-07-15');
 
UPDATE workexperience SET jobTitle = 'Q&A engineer' WHERE company = 'IT Fox';

SELECT * FROM workexperience;
    
SELECT idEmployee FROM workexperience WHERE jobTitle = 'Senior Manual tester';
    
SELECT COUNT(*) FROM employee;

SELECT COUNT(*) FROM workexperience;

SELECT company FROM workexperience WHERE jobTitle='Manual Tester';

SELECT * FROM workexperience WHERE jobTitle LIKE '%Q&A%';

SELECT * FROM workexperience WHERE fromDate IN ('2018-01-01', '2020-01-01');

SELECT idemployee, company FROM workexperience WHERE fromDate <='2020.01.01' and toDate<='2021.01.01';

SELECT firstName, lastName FROM employee WHERE idemployee='2'; 

SELECT jobTitle, COUNT(*) FROM workexperience GROUP BY jobTitle;

DELETE FROM employee WHERE idEmployee = 6;

ALTER TABLE employee RENAME to employees;

SELECT * FROM employees JOIN workexperience;

