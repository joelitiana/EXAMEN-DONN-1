-- POUR LES 'CLIENTUSER'

INSERT INTO CLIENTUSER VALUES
(1, 'Alice', 'Johnson', '789 Oak St', '555-1111', 'alice.johnson@example.com', 'password789', 'Regular'),
(2, 'Bob', 'Smith', '321 Pine Ave', '555-2222', 'bob.smith@example.com', 'passwordabc', 'Regular'),
(3, 'Carol', 'Williams', '567 Maple Dr', '555-3333', 'carol.williams@example.com', 'passwordxyz', 'Admin'),
(4, 'David', 'Brown', '901 Cedar Ln', '555-4444', 'david.brown@example.com', 'password1234', 'Regular'),
(5, 'Emma', 'Jones', '234 Birch Rd', '555-5555', 'emma.jones@example.com', 'password5678', 'Regular'),
(6, 'Frank', 'Davis', '456 Elm St', '555-6666', 'frank.davis@example.com', 'password7890', 'Regular'),
(7, 'Grace', 'Moore', '789 Maple Ave', '555-7777', 'grace.moore@example.com', 'passwordabc123', 'Admin'),
(8, 'Henry', 'White', '123 Pine Rd', '555-8888', 'henry.white@example.com', 'passwordxyz456', 'Regular'),
(9, 'Ivy', 'Taylor', '567 Cedar Ave', '555-9999', 'ivy.taylor@example.com', 'password12345', 'Regular'),
(10, 'Jack', 'Clark', '901 Oak Ln', '555-0000', 'jack.clark@example.com', 'password67890', 'Regular'),
(11, 'Kate', 'Anderson', '345 Elm St', '555-1234', 'kate.anderson@example.com', 'password54321', 'Regular'),
(12, 'Liam', 'Martin', '678 Walnut Ave', '555-5678', 'liam.martin@example.com', 'password13579', 'Regular'),
(13, 'Nora', 'Moore', '890 Pine Rd', '555-2468', 'nora.moore@example.com', 'password97531', 'Regular'),
(14, 'Oliver', 'Lee', '123 Cedar Ln', '555-3698', 'oliver.lee@example.com', 'password24680', 'Regular'),
(15, 'Penny', 'Wright', '456 Maple Dr', '555-8024', 'penny.wright@example.com', 'password86420', 'Regular');

-- POUR LES 'AUTHOR'

INSERT INTO AUTHOR VALUES
(1, 'Agatha', 'Christie'),
(2, 'George', 'Orwell'),
(3, 'Harper', 'Lee'),
(4, 'Jules', 'Verne'),
(5, 'Leo', 'Tolstoy'),
(6, 'Mark', 'Twain'),
(7, 'Jane', 'Austen'),
(8, 'Charles', 'Dickens'),
(9, 'Ernest', 'Hemingway'),
(10, 'F. Scott', 'Fitzgerald');

-- POUR LES 'BOOK'

INSERT INTO BOOK VALUES
(1, 'Murder on the Orient Express', 'Mystery', '1934-01-01', 5, 'Available', 1),
(2, '1984', 'Dystopian', '1949-06-08', 8, 'Available', 2),
(3, 'To Kill a Mockingbird', 'Fiction', '1960-07-11', 6, 'Available', 3),
(4, 'Twenty Thousand Leagues Under the Sea', 'Adventure', '1870-01-01', 3, 'Available', 4),
(5, 'War and Peace', 'Historical Fiction', '1869-01-01', 5, 'Available', 5),
(6, 'The Adventures of Tom Sawyer', 'Adventure', '1876-01-01', 4, 'Available', 6),
(7, 'Pride and Prejudice', 'Romance', '1813-01-28', 6, 'Available', 7),
(8, 'Great Expectations', 'Fiction', '1861-01-01', 7, 'Available', 8),
(9, 'The Old Man and the Sea', 'Fiction', '1952-09-01', 5, 'Available', 9),
(10, 'The Great Gatsby', 'Fiction', '1925-04-10', 4, 'Available', 10);


-- Pour 'LOAN'

INSERT INTO LOAN VALUES
(1, '2024-01-01', '2024-01-15', NULL, 1, 1),
(2, '2024-01-05', '2024-01-19', '2024-01-18', 2, 2),
(3, '2024-01-10', '2024-01-24', NULL, 3, 3),
(4, '2024-01-12', '2024-01-26', '2024-01-25', 4, 4),
(5, '2024-01-15', '2024-01-29', NULL, 5, 5),
(6, '2024-01-18', '2024-02-01', '2024-01-30', 6, 6),
(7, '2024-01-20', '2024-02-03', NULL, 7, 7),
(8, '2024-01-25', '2024-02-08', '2024-02-07', 8, 8);


-- Pour 'RESERVATION'

INSERT INTO RESERVATION VALUES
(1, '2024-01-01', 1, 2),
(2, '2024-01-03', 2, 3),
(3, '2024-01-05', 3, 4),
(4, '2024-01-07', 4, 5),
(5, '2024-01-09', 5, 6),
(6, '2024-01-11', 6, 7),
(7, '2024-01-13', 7, 8),
(8, '2024-01-15', 8, 9),
(9, '2024-01-17', 9, 10),
(10, '2024-01-19', 10, 1);


-- Pour les 'NOTIFICATION'

INSERT INTO NOTIFICATION VALUES
(1, '2024-01-01', 'Reminder', 1),
(2, '2024-01-02', 'Alert', 2),
(3, '2024-01-03', 'Reminder', 3),
(4, '2024-01-04', 'Alert', 4),
(5, '2024-01-05', 'Reminder', 5),
(6, '2024-01-06', 'Reminder', 6),
(7, '2024-01-07', 'Alert', 7),
(8, '2024-01-08', 'Reminder', 8),
(9, '2024-01-09', 'Alert', 9),
(10, '2024-01-10', 'Reminder', 10),
(11, '2024-01-11', 'Alert', 11),
(12, '2024-01-12', 'Reminder', 12);
