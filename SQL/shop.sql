CREATE TABLE PRODUCT (
    PRODUCT_ID NUMBER(10) NOT NULL,
    NAME VARCHAR2(40),
    PRICE NUMBER(10),
    CATEGORY_ID NUMBER(10) NOT NULL,
    CONSTRAINT PK_PRODUCT PRIMARY KEY (PRODUCT_ID)
);

CREATE TABLE CATEGORY (
    CATEGORY_ID NUMBER(10) NOT NULL,
    NAME VARCHAR2(20),
    CONSTRAINT PK_CATEGORY PRIMARY KEY (CATEGORY_ID)
);

CREATE TABLE SALE (
    SALE_ID NUMBER(10) NOT NULL,
    PRODUCT_ID NUMBER(10) NOT NULL,
    PURCHASE_DATE DATE,
    SALE_PRICE NUMBER(10) NOT NULL,
    AMOUNT NUMBER(5) NOT NULL,
    CONSTRAINT PK_SALE PRIMARY KEY (SALE_ID)
);

INSERT INTO PRODUCT VALUES (1, '컴퓨터', 1000000, 1);
INSERT INTO PRODUCT VALUES (2, '태블릿 PC', 800000, 1);
INSERT INTO PRODUCT VALUES (3, '핸드폰', 1200000, 1);
INSERT INTO PRODUCT VALUES (4, '헤드셋', 80000, 1);
INSERT INTO PRODUCT VALUES (5, '무선 이어폰', 210000, 1);
INSERT INTO PRODUCT VALUES (6, '책상', 160000, 2);
INSERT INTO PRODUCT VALUES (7, '의자', 90000, 2);
INSERT INTO PRODUCT VALUES (8, '소고기', 12000, 3);
INSERT INTO PRODUCT VALUES (9, '티셔츠', 58000, 4);

INSERT INTO CATEGORY VALUES (1, '전자제품');
INSERT INTO CATEGORY VALUES (2, '가구');
INSERT INTO CATEGORY VALUES (3, '식품');
INSERT INTO CATEGORY VALUES (4, '의류');

INSERT INTO SALE VALUES (1, 1, '2020-01-01', 1000000, 1);
INSERT INTO SALE VALUES (2, 2, '2020-01-01', 1600000, 2);
INSERT INTO SALE VALUES (3, 1, '2020-01-01', 2000000, 2);
INSERT INTO SALE VALUES (4, 4, '2020-01-02', 240000, 3);
INSERT INTO SALE VALUES (5, 5, '2020-01-04', 210000, 1);
INSERT INTO SALE VALUES (6, 6, '2020-01-06', 320000, 2);
INSERT INTO SALE VALUES (7, 7, '2020-01-11', 360000, 4);
INSERT INTO SALE VALUES (8, 8, '2020-01-15', 60000, 5);
INSERT INTO SALE VALUES (9, 9, '2020-01-17', 58000, 1);
INSERT INTO SALE VALUES (10, 9, '2020-01-20', 580000, 10);
INSERT INTO SALE VALUES (11, 2, '2020-01-21', 1600000, 2);
INSERT INTO SALE VALUES (12, 1, '2020-01-22', 1000000, 1);
INSERT INTO SALE VALUES (13, 4, '2020-01-24', 80000, 1);
INSERT INTO SALE VALUES (14, 5, '2020-01-26', 210000, 1);
INSERT INTO SALE VALUES (15, 6, '2020-01-29', 160000, 1);
