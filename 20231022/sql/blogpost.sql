-- 1. MEMBERS TABLE --
--------------------- MEMBERS TABLE 생성 ----------------------
CREATE TABLE MEMBERS (
    MEMBER_IDX NUMBER(38) PRIMARY KEY,
    NAME VARCHAR2(20) NOT NULL,
    ID VARCHAR2(20) NOT NULL,
    PWD VARCHAR2(20) NOT NULL,
    NICKNAME VARCHAR2(20) NOT NULL UNIQUE
);
--------------------- MEMBERS 테이블에 시퀀스 생성 ----------------------
CREATE SEQUENCE MEMBERS_SEQ INCREMENT BY 1 START WITH 10 NOCACHE;
--------------------- MEMBERS 테이블에 샘플 테이터 추가 ----------------------
INSERT INTO MEMBERS
VALUES (MEMBERS_SEQ.NEXTVAL, '홍일동', 'HONG1', 'dong1', '일동이');
INSERT INTO MEMBERS
VALUES (MEMBERS_SEQ.NEXTVAL, '홍이동', 'HONG2', 'dong2', '이동이');
INSERT INTO MEMBERS
VALUES (MEMBERS_SEQ.NEXTVAL, '홍일동', 'HONG3', 'dong3', '삼동이');
INSERT INTO MEMBERS
VALUES (MEMBERS_SEQ.NEXTVAL, '홍삼동', 'HONG4', 'dong4', '사동이');
INSERT INTO MEMBERS
VALUES (MEMBERS_SEQ.NEXTVAL, '홍사동', 'HONG5', 'dong5', '오동이');
COMMIT;
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-- 2. COMMENTS TABLE --
--------------------- COMMENTS TABLE 생성 ----------------------
CREATE TABLE COMMENTS (
    COMMENT_IDX NUMBER(38) PRIMARY KEY,
    MEMBER_IDX NUMBER(38),
    COMM_CONTENT VARCHAR2(500),
    COMM_DATE DATE DEFAULT SYSDATE,
    CONSTRAINT MEMBER_FK_COMMENTS FOREIGN KEY (MEMBER_IDX) REFERENCES MEMBERS(MEMBER_IDX)
);
--------------------- COMMENTS 테이블에 시퀀스 생성 ----------------------
CREATE SEQUENCE COMMENTS_SEQ INCREMENT BY 1 START WITH 200 NOCACHE;
--------------------- COMMENTS 테이블에 샘플 테이터 추가 ----------------------
INSERT INTO COMMENTS
VALUES 
        (COMMENTS_SEQ.NEXTVAL, 
        (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 10),  
        '댓글테스트', 
        SYSDATE
);
INSERT INTO COMMENTS
VALUES 
        (COMMENTS_SEQ.NEXTVAL, 
        (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 11),  
        '댓글테스트2', 
        SYSDATE
);
INSERT INTO COMMENTS
VALUES 
        (COMMENTS_SEQ.NEXTVAL, 
        (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 12),  
        '댓글테스트3', 
        SYSDATE
);
INSERT INTO COMMENTS
VALUES 
        (COMMENTS_SEQ.NEXTVAL, 
        (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 13),  
        '댓글테스트4', 
        SYSDATE
);
INSERT INTO COMMENTS
VALUES (
        COMMENTS_SEQ.NEXTVAL, 
        (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 14),  
        '댓글테스트5', 
        SYSDATE
);
COMMIT;
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-- 3. POST TABLE --
--------------------- POST TABLE 생성 ----------------------
CREATE TABLE POST (
    POST_IDX NUMBER(38) PRIMARY KEY,
    TITLE VARCHAR2(50) NOT NULL,
    POST_CONNTENT CLOB ,
    PHOTO BLOB,
    HIT NUMBER(38) DEFAULT 0,
    POST_DATE DATE DEFAULT SYSDATE,
    MEMBER_IDX NUMBER(38),
    COMMENT_IDX NUMBER(38)
);
--------------------- POST 테이블에 시퀀스 생성 ----------------------
CREATE SEQUENCE POST_SEQ INCREMENT BY 10 START WITH 300 NOCACHE;
--------------------- POST TABLE에 제약조건 추가 ----------------------
-- ALTER문은 한 번에 하나의 테이블 구조를 변경할 수 있는가봐요 --
ALTER TABLE POST
ADD CONSTRAINT MEMBER_FK FOREIGN KEY (MEMBER_IDX) REFERENCES MEMBERS(MEMBER_IDX)
;
ALTER TABLE POST
ADD CONSTRAINT COMMENT_FK FOREIGN KEY (COMMENT_IDX) REFERENCES COMMENTS(COMMENT_IDX)
;
--------------------- POST 테이블에 샘플 테이터 추가 ----------------------
INSERT INTO POST (
            POST_IDX, TITLE, POST_CONNTENT, 
            POST_DATE, MEMBER_IDX)
VALUES (
        POST_SEQ.NEXTVAL, '게시글 테스트 1', '게시글 내용 작성 테스트 중 (1)', 
        SYSDATE, (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 10)      
);
INSERT INTO POST (
            POST_IDX, TITLE, POST_CONNTENT, 
            POST_DATE, MEMBER_IDX)
VALUES (
        POST_SEQ.NEXTVAL, '게시글 테스트 2', '게시글 내용 작성 테스트 중 (2)', 
        SYSDATE, (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 11)      
);
INSERT INTO POST (
            POST_IDX, TITLE, POST_CONNTENT, 
            POST_DATE, MEMBER_IDX)
VALUES (
        POST_SEQ.NEXTVAL, '게시글 테스트 3', '게시글 내용 작성 테스트 중 (3)', 
        SYSDATE, (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 12)      
);
INSERT INTO POST (
            POST_IDX, TITLE, POST_CONNTENT, 
            POST_DATE, MEMBER_IDX)
VALUES (
        POST_SEQ.NEXTVAL, '게시글 테스트 4', '게시글 내용 작성 테스트 중 (4)', 
        SYSDATE, (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 13)      
);
INSERT INTO POST (
            POST_IDX, TITLE, POST_CONNTENT, 
            POST_DATE, MEMBER_IDX)
VALUES (
        POST_SEQ.NEXTVAL, '게시글 테스트 5', '게시글 내용 작성 테스트 중 (5)', 
        SYSDATE, (SELECT MEMBER_IDX FROM MEMBERS WHERE MEMBER_IDX = 14)      
);
COMMIT;