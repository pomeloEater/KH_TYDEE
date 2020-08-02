DROP SEQUENCE MYNOSEQ;
DROP TABLE LOGIN;
DROP TABLE NAVER_LOGIN;

CREATE SEQUENCE MYNOSEQ;

-- 1차
CREATE TABLE LOGIN(
	MYNO NUMBER NOT NULL,
	MYEMAIL VARCHAR2(100) NOT NULL,
	MYPW VARCHAR2(500) NOT NULL,
	MYNAME VARCHAR2(500) NOT NULL,
	NAVERCODE VARCHAR2(100),
	ACESSTOKEN VARCHAR2(100),
	CONSTRAINT LOGIN_PK PRIMARY KEY (MYNO)
);
-- 2차
CREATE TABLE LOGIN(
	MYNO NUMBER NOT NULL,
	MYEMAIL VARCHAR2(100) NOT NULL,
	MYPW VARCHAR2(500) NOT NULL,
	MYNAME VARCHAR2(500) NOT NULL,
	SNS_ID VARCHAR2(255) NULL,
	SNS_TYPE VARCHAR2(10) NULL,
	CONSTRAINT LOGIN_PK PRIMARY KEY (MYNO)
);

INSERT INTO LOGIN VALUES (MYNOSEQ.NEXTVAL, 'a@naver.com', 'a', 'a', 0, 0);

DROP INDEX LOGIN;

SELECT * FROM LOGIN;

CREATE TABLE NAVER_LOGIN(
	MYNO NUMBER NOT NULL,
	
	NAVER_ID VARCHAR2(500),
	NAVER_EMAIL VARCHAR2(200),
	CONSTRAINT MYNO_NAVER_FK FOREIGN KEY(MYNO) REFERENCES LOGIN(MYNO) ON DELETE CASCADE 

);