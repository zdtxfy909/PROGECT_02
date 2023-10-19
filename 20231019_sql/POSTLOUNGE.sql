-- MEMBER(회원) 테이블 생성 --
-- 사용자는 사진을 제외한 모든 기본 정보를 제공해야 회원으로 등록됨 --
CREATE TABLE MEMBERS (
    MEMBER_IDX NUMBER(38) PRIMARY KEY,
    NAME VARCHAR2(20) NOT NULL,
    ID VARCHAR2(20) NOT NULL,
    PWD VARCHAR2(20) NOT NULL,
    NICKNAME VARCHAR2(20) NOT NULL UNIQUE,
    MEMBER_PHOTO BLOB -- 회원가입시, 프로필 사진을 저장하기 위한 컬럼 추가 --
);
-- MEMBER 테이블에 회원번호(MEMBER_IDX) 자동 채번 위한 시퀀스 생성 --
-- 회원번호는 10번부터 시작해서 1씩 증가. 10, 11, 12, ... 17 --
CREATE SEQUENCE MEMBER_SEQ
INCREMENT BY 1 START WITH 10 NOCACHE
;
----------------------------------------------------------------------
----------------------------------------------------------------------
-- POSTS(게시글) 테이블 생성 --
CREATE TABLE POSTS (
    POST_IDX NUMBER(38) PRIMARY KEY,
    TITLE VARCHAR2(50) NOT NULL, -- 제목 없이 게시글 올릴 수 없음 --
    POST_CONTENT CLOB, -- 데이터 크기 제한 없음 --
    POST_PHOTO BLOB, -- 파일 타입을 저장하는 데이터 타입 --
    HIT NUMBER(38) DEFAULT 0, -- 모든 게시글의 기본 조회수를 0으로 설정 --
    POST_DATE DATE DEFAULT SYSDATE,
    POST_TYPE VARCHAR2(10) NOT NULL, -- 카테고리별 게시글 조회를 위해 컬럼 추가 --
    MEMBER_IDX NUMBER(38),
    COMMENT_IDX NUMBER(38)
);
-- POSTS 테이블에 게시글번호(POST_IDX) 자동 채번 위한 시퀀스 생성 --
-- 게시글번호는 100번부터 시작해서 10씩 증가. 110, 120, 130, ... 170 --
CREATE SEQUENCE POST_SEQ 
INCREMENT BY 10 START WITH 100 NOCACHE
;
--
-- COMMENTS(댓글) 테이블 생성 --
CREATE TABLE COMMENTS (
    COMMENT_IDX NUMBER(38) PRIMARY KEY,
    MEMBER_IDX NUMBER(38),
    POST_IDX NUMBER(38),
    COMM_CONTENT VARCHAR2(500),
    COMM_DATE DATE DEFAULT SYSDATE
);
-- COMMENTS 테이블에 댓글번호(COMMENT_IDX) 자동 채번 위한 시퀀스 생성 --
-- 댓글번호는 500번부터 시작해서 1씩 증가. 501, 502, 503, ... 517 --
CREATE SEQUENCE COMMENT_SEQ 
INCREMENT BY 1 START WITH 500 NOCACHE
;
-- COMMENTS 테이블의 회원번호(MEMBER_IDX)와 게시글번호(POST_IDX)에 제약조건 설정 --
ALTER TABLE COMMENTS
ADD CONSTRAINT MEM_COMM_FK FOREIGN KEY (MEMBER_IDX) REFERENCES MEMBERS(MEMBER_IDX)
;
ALTER TABLE COMMENTS
ADD CONSTRAINT PST_COMM_FK FOREIGN KEY (POST_IDX) REFERENCES POSTS(POST_IDX)
;
--
-- POSTS 테이블의 회원번호(MEMBER_IDX)와 댓글번호(COMMENT_IDX)에 제약조건 설정 --
ALTER TABLE POSTS
ADD CONSTRAINT MEM_PST_FK FOREIGN KEY (MEMBER_IDX) REFERENCES MEMBERS(MEMBER_IDX)
;
ALTER TABLE POSTS
ADD CONSTRAINT COMM_PST_FK FOREIGN KEY (COMMENT_IDX) REFERENCES COMMENTS(COMMENT_IDX)
;
-- LIKES(좋아요) 테이블 생성 -- -- POSTS에 게시글 들어오면 트리거로.. 같이 올라가게
CREATE TABLE LIKES (
    LIKE_NUM NUMBER(20) DEFAULT 0, -- 기본 좋아요 수를 0으로 설정 --
    POST_IDX NUMBER(38),
    COMMENT_IDX NUMBER(38)
);
-- LIKES 테이블에 제약 조건 추가
ALTER TABLE LIKES
ADD CONSTRAINT PST_LIKES_FK FOREIGN KEY (POST_IDX) REFERENCES POSTS(POST_IDX)
;
ALTER TABLE LIKES
ADD CONSTRAINT COMM_LIKES_FK FOREIGN KEY (COMMENT_IDX) REFERENCES COMMENTS(COMMENT_IDX)
;

-- FRIENDS 테이블 생성 --
CREATE TABLE FRIENDS (
    FRIEND_NUM NUMBER(20) DEFAULT 1, -- 친구 수 조회를 위해 기본 값 1로 설정 --
    MEMBER_IDX NUMBER(38),
    FRIEND_IDX NUMBER(38)
);
-- FRIENDS 테이블에 제약 조건 추가
ALTER TABLE FRIENDS
ADD CONSTRAINT MEM_FRI_FK FOREIGN KEY (MEMBER_IDX) REFERENCES MEMBERS(MEMBER_IDX)
;
ALTER TABLE FRIENDS
ADD CONSTRAINT FRI_FRI_FK FOREIGN KEY (FRIEND_IDX) REFERENCES MEMBERS(MEMBER_IDX)
;
/* 트리거(TRIGGER) : 특정 이벤트나 DDL, DML 문장이 실행되었을 때,
   자동적으로 어떤 일련의 동작(Operation)이나 처리를 수행하도록 하는
   데이터베이스 객체의 하나 */
-- 트리거 생성 --
CREATE OR REPLACE TRIGGER POST_IDX_TRIGGER -- POST_IDX_TRIGGER라는 이름의 트리거를 만든다.
AFTER INSERT ON POSTS -- POSTS 테이블에 INSERT 처리가 된 후,
FOR EACH ROW -- 데이터 처리시 건마다 트리거를 실행하겠다.
BEGIN 
    INSERT INTO LIKES (POST_IDX) -- LIKES 테이블의 POST_IDX 컬럼에 INSERT한다.
    VALUES (:NEW.POST_IDX); -- 추가할 데이터 (SQL 반영 후의 POST_IDX 값)
END;
/
CREATE OR REPLACE TRIGGER COMMENT_IDX_TRIGGER -- COMMENT_IDX_TRIGGER라는 이름의 트리거를 만든다.
AFTER INSERT ON COMMENTS -- COMMENTS 테이블에 INSERT 처리가 된 후,
FOR EACH ROW -- 데이터 처리시 건마다 트리거를 실행하겠다.
BEGIN 
    INSERT INTO LIKES (COMMENT_IDX) -- LIKES 테이블의 COMMENT_IDX 컬럼에 INSERT한다.
    VALUES (:NEW.COMMENT_IDX); -- 추가할 데이터 (SQL 반영 후의 _IDX 값)
END;
/

