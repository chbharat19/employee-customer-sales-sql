CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    designation VARCHAR(30),
    salary INT,
    join_date DATE
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    phone VARCHAR(15)
);

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    emp_id INT,
    customer_id INT,
    sale_amount INT,
    sale_date DATE,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Employees VALUES
(101, 'Rahul', 'Sales', 'Engineer', 30000, '2022-06-10'),
(102, 'Ankit', 'Sales', 'Senior Engineer', 45000, '2021-03-15'),
(103, 'Priya', 'HR', 'Manager', 50000, '2020-01-20'),
(104, 'Amit', 'Sales', 'Engineer', 32000, '2023-02-01');

INSERT INTO Customers VALUES
(201, 'Suresh', 'Delhi', '9876543210'),
(202, 'Ramesh', 'Mumbai', '9123456780'),
(203, 'Anjali', 'Bangalore', '9988776655'),
(204, 'Kiran', 'Chennai', '9090909090');

INSERT INTO Sales VALUES
(1, 101, 201, 50000, '2023-05-12'),
(2, 102, 202, 75000, '2023-06-18'),
(3, 101, 203, 30000, '2023-07-10'),
(4, 104, 204, 45000, '2023-08-05'),
(5, 102, 201, 60000, '2023-09-01');
