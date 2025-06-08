
CREATE TABLE software_employee(
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(15),
    job_title VARCHAR(50),
    department VARCHAR(50),
    salary INT
  );
  
INSERT INTO software_employee  
VALUES 
('1', 'sai', 'gulivindala', '9392751509', 'Devops Engineer', 'IT', 25000),
('2', 'ramesh', 'keerti', '8099166177', 'MLops Engineer', 'IT', 80000),
('3', 'Najana', 'Bhavani', '5556667777', 'System Engineer', 'Software', 40000);

SELECT * FROM software_employee;

SELECT first_name,last_name FROM software_employee WHERE department = 'IT' and salary > 40000;

UPDATE software_employee 
SET salary = 45000
WHERE job_title = 'System Engineer';

SELECT * FROM software_employee WHERE department ='IT' OR department = 'Salesforce';

SELECT first_name, last_name, salary FROM software_employee 
ORDER BY salary DESC ;

SELECT department, COUNT(*) AS total_employees FROM software_employee 
GROUP BY department;

SELECT MAX(SALARy) FROM software_employee WHERE department='IT';

SELECT SUM(SALARy) FROM software_employee WHERE department='IT';

SELECT AVG(SALARy) FROM software_employee WHERE department='IT';

ALTER TABLE software_employee 
ADD COLUMN Work_location VARCHAR(100);

UPDATE software_employee 
SET work_location = 'Hyderabad' 
WHERE department = 'IT';

INSERT INTO software_employee VALUES ('3','najana','bhavani','84666901727','system engineer','software','40000','Vizag');

DELETE FROM software_employee WHERE phone_number='5556667777';



