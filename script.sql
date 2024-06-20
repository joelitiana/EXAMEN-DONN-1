CREATE DATABASE LIBRARY;

CREATE TABLE CLIENTUSER (
    id_user SERIAL PRIMARY KEY,
    First_name_user    VARCHAR(50) NOT NULL,
    Last_name_user   VARCHAR(50) NOT NULL,
    Address      VARCHAR(50),
    Phone       VARCHAR(50),
    Email        VARCHAR(50),
    Password   VARCHAR(50) NOT NULL,
    Type_user     VARCHAR(50)
);

CREATE TABLE AUTHOR (
    id_author    SERIAL PRIMARY KEY,
    First_name_author   VARCHAR(50) NOT NULL,
    Last_name_author     VARCHAR(50) NOT NULL
);

CREATE TABLE BOOK (
    id_book   SERIAL PRIMARY KEY,
    Title    VARCHAR(50) NOT NULL,
    Genre    VARCHAR(50),
    Category     VARCHAR(50),
    Date_publication   DATE,
    Copies   INTEGER,
    Status   VARCHAR(50),
    id_author    INT,
    FOREIGN KEY (id_author ) REFERENCES AUTHOR(id_author )
);

CREATE TABLE LOAN (
    id_loan SERIAL PRIMARY KEY,
    Loan_date    DATE NOT NULL,
    excepted_return_date       DATE NOT NULL,
    actual_return_date     DATE,
    id_user   INT,
    id_book   INT,
    FOREIGN KEY ( id_user) REFERENCES CLIENTUSER( id_user),
    FOREIGN KEY ( id_book) REFERENCES BOOK( id_book)
);

CREATE TABLE RESERVATION (
    id_reservation   SERIAL PRIMARY KEY,
    reservation_date           DATE NOT NULL,
    id_user         INT,
    id_book       INT,
    FOREIGN KEY (id_user) REFERENCES CLIENTUSER(id_user),
    FOREIGN KEY (id_book) REFERENCES BOOK(id_book)
);

CREATE TABLE NOTIFICATION (
    id_notification    SERIAL PRIMARY KEY,
    Date_notification       DATE NOT NULL,
    Type_notification           VARCHAR(50),
    id_user         INT,
    FOREIGN KEY (id_user) REFERENCES CLIENTUSER(id_user)
);
