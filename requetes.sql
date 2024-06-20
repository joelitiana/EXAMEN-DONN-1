
-- 1.Liste de tous les clients
SELECT * FROM CLIENTUSER;

-- 2. Trouver tous les livres d'un auteur particulier
SELECT B.*
FROM BOOK B
JOIN AUTHOR A ON B.id_author = A.id_author
WHERE A.First_name_author = 'AuthorFirstName' AND A.Last_name_author = 'AuthorLastName';

-- 3.Lister tous les prêts effectués par un utilisateur particulier
SELECT L.*
FROM LOAN L
JOIN CLIENTUSER C ON L.id_user = C.id_user
WHERE C.id_user = 1;

-- 4. Afficher le statut actuel de tous les livres (emprunté, disponible, etc.)
SELECT Title, Status
FROM BOOK;

-- 5.Lister tous les livres d'un genre spécifique
SELECT *
FROM BOOK
WHERE Genre = 'Fiction';

-- 6.Lister les réservations faites par un utilisateur particulier
SELECT R.*
FROM RESERVATION R
JOIN CLIENTUSER C ON R.id_user = C.id_user
WHERE C.id_user = 1;

-- 7.Trouver les prêts en retard
SELECT L.*
FROM LOAN L
WHERE L.actual_return_date > L.Expected_return_date;

-- 8.Compter le nombre de copies disponibles pour chaque livre
SELECT Title, number_of_copies
FROM BOOK;

-- 9.Trouver le livre le plus populaire (basé sur le nombre de prêts)
SELECT B.Title, COUNT(L.id_loan) AS LoanCount
FROM LOAN L
JOIN BOOK B ON L.id_book = B.id_book
GROUP BY B.Title
ORDER BY LoanCount DESC
LIMIT 1;

-- 10.Lister toutes les notifications reçues par un utilisateur particulier
SELECT N.*
FROM NOTIFICATION N
JOIN CLIENTUSER C ON N.id_user = C.id_user
WHERE C.id_user = 1;

-- 11.Afficher les livres qui n'ont jamais été empruntés
SELECT B.*
FROM BOOK B
LEFT JOIN LOAN L ON B.id_book = L.id_book
WHERE L.id_loan IS NULL;

-- 12.Lister les utilisateurs qui ont fait des réservations mais n'ont jamais emprunté de livre
SELECT DISTINCT C.*
FROM CLIENTUSER C
JOIN RESERVATION R ON C.id_user = R.id_user
LEFT JOIN LOAN L ON C.id_user = L.id_user
WHERE L.id_loan IS NULL;

-- 13.Trouver les livres réservés à une date particulière
SELECT B.*
FROM BOOK B
JOIN RESERVATION R ON B.id_book = R.id_book
WHERE R.Reservation_date = '2024-06-20';

-- 14.Calculer la durée moyenne des prêts
SELECT AVG(DATEDIFF(actual_return_date, Loan_date)) AS AverageLoanDuration
FROM LOAN;

-- 15.Lister les auteurs avec le nombre de livres qu'ils ont écrits
SELECT A.First_name_author, A.Last_name_author, COUNT(B.id_book) AS NumberOfBooks
FROM AUTHOR A
JOIN BOOK B ON A.id_author = B.id_author
GROUP BY A.First_name_author, A.Last_name_author;