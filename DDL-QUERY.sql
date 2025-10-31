
DROP TABLE IF EXISTS books

CREATE TABLE books (
    isbn VARCHAR(50) NOT NULL,
    book_title VARCHAR(150) NOT NULL,
    category VARCHAR(50),
    rental_price FLOAT NOT NULL,
    status VARCHAR(50) ,
    author VARCHAR(100),
    publisher VARCHAR(100),
    CONSTRAINT PK_books_isbn PRIMARY KEY (isbn)
);


DROP TABLE IF EXISTS branch
CREATE TABLE branch (
    branch_id VARCHAR(50) NOT NULL,
    manager_id VARCHAR(50) NOT NULL,
    branch_address VARCHAR(50) NOT NULL,
    PHONE_NUMBER VARCHAR(50),
    CONSTRAINT PK_branch_branch_id PRIMARY KEY (branch_id)
);

DROP TABLE IF EXISTS employees
CREATE TABLE employees (
    emp_id VARCHAR(50) NOT NULL,
    emp_name VARCHAR(100) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary FLOAT,
    branch_id VARCHAR(50),
    CONSTRAINT PK_employees_emp_id PRIMARY KEY (emp_id)
    
);


DROP TABLE IF EXISTS issued_date
CREATE TABLE issued_date (
    issued_id VARCHAR(50) NOT NULL,
    issued_member_id VARCHAR(50) NOT NULL,
    issued_book_name VARCHAR(150) NOT NULL,
    issued_date DATE NOT NULL,
    issued_book_isbn VARCHAR(50) NOT NULL,
    issued_emp_id VARCHAR(50) NOT NULL,
    CONSTRAINT PK_issued_books_issued_id PRIMARY KEY (issued_id)
);

DROP TABLE IF EXISTS members
CREATE TABLE members (
    member_id VARCHAR(50) NOT NULL,
    member_name VARCHAR(100) NOT NULL,
    member_address VARCHAR(255) NOT NULL,
    reg_date DATE NOT NULL
);


DROP TABLE IF EXISTS return_date
CREATE TABLE return_date (
    return_id VARCHAR(50) NOT NULL,
    issued_id VARCHAR(50) NOT NULL,
    return_book_name VARCHAR(150),
    return_date DATE NOT NULL,
    return_book_isbn VARCHAR(50)
       
);