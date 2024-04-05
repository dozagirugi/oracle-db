-- 직원 테이블 살펴보기
-- DESC는 테이블의 구성 상세보기 명령어이다
DESC EMP;

-- 부서 테이블 정보 살펴보기
DESC DEPT; 

-- 급여 테이블 정보 살펴보기
DESC SALGRADE;

-- 4장 실습 
SELECT *
FROM EMP;

SELECT EMPNO, ENAME
FROM EMP;

-- 중복 데이터 삭제
SELECT DISTINCT JOB
FROM EMP;

-- 식별하기 좋게 의미있는 별칭 설정하기, 열은 사칙연산이 가능하다
SELECT ENAME, SAL, SAL*12+COMM "연봉", COMM
FROM EMP;

-- ORDER BY 사용하기
SELECT *
FROM EMP
ORDER BY SAL;

-- 내림 차순
SELECT *
FROM EMP
ORDER BY SAL DESC;