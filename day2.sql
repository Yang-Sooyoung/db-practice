INSERT INTO BOOK.MEMBER_TBL
VALUES  ('100001','박매일','010-1111-1111','2023-04-11','bit01@naver,com','P'),
		('100002','이믿음','010-1111-1112','2023-04-12','bit02@naver,com','G'),
		('100003','박축복','010-1111-1113','2023-04-13','bit03@naver,com','S'),
		('100004','나소원','010-1111-1114','2023-04-14','bit04@naver,com','P'),
		('100005','김행복','010-1111-1115','2023-04-15','bit05@naver,com','G');
        
SELECT *
FROM BOOK.MEMBER_TBL;

DELETE 
FROM BOOK.MEMBER_TBL
WHERE cust_no > 100006;

INSERT INTO BOOK.RENT_TBL
VALUES ('100001','20230001','A001','2300','20230510'),
		('100001','20230002','A002','1300','20230511'),
        ('100001','20230003','A003','2100','20230512'),
        ('100002','20230004','A004','1600','20230513'),
        ('100002','20230005','A005','1800','20230514'),
        ('100003','20230006','A006','1500','20230516'),
        ('100004','20230007','A007','2000','20230517'),
        ('100004','20230008','A008','2300','20230517'),
        ('100004','20230009','A009','1500','20230517'),
        ('100004','20230010','A010','2300','20230518');
        
SELECT *
FROM BOOK.RENT_TBL;

SELECT cust_no, cust_name, phone, join_date, cust_email, grade
FROM book.member_tbl
WHERE cust_no = 100001;

SELECT B.cust_no, B.cust_name, B.grade, SUM(A.rent_price) AS rent_price
FROM book.rent_tbl AS A
	INNER JOIN book.member_tbl AS B
			ON A.cust_no = B.cust_no
GROUP BY B.cust_no, B.cust_name, B.grade
ORDER BY rent_price DESC;