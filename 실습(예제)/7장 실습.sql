-- 7장 실습
SELECT COUNT(ENAME), SUM(SAL)
FROM EMP;

--COUNT(*)은 모든 행, 만약 NULL값이면 세지 않음.
SELECT COUNT(*), COUNT(MGR)
FROM EMP;

--최대값 최소값 평균 출력
SELECT MAX(SAL) AS 최고월급, MIN(SAL) AS 최저월급, TRUNC(AVG(SAL)) AS 평균월급
FROM EMP;

--회계부의 인원과 월급 평균, 최고/최저 월급 출력
SELECT COUNT(ENAME) AS 회계부인원, 
MAX(SAL) AS 회계부_최고월급, 
MIN(SAL) AS 회계부_최저월급, 
TRUNC(AVG(SAL)) AS 회계부_월급평균
FROM EMP
WHERE DEPTNO = 10;

--GROUP BY 함수로 부서 별 인원, 최고/최저 월급, 평균 월급 출력하기
SELECT DEPTNO,
COUNT(ENAME) AS 회계부인원, 
MAX(SAL) AS 회계부_최고월급, 
MIN(SAL) AS 회계부_최저월급, 
TRUNC(AVG(SAL)) AS 회계부_월급평균
FROM EMP
GROUP BY DEPTNO;

-- HAVING은 GROUP BY에 대한 조건을 나타낸다
-- 직종 중 최저월급이 2000이상인 경우에만 출력하라
SELECT JOB,
COUNT(ENAME) AS 회계부인원, 
MAX(SAL) AS 회계부_최고월급, 
MIN(SAL) AS 회계부_최저월급, 
TRUNC(AVG(SAL)) AS 회계부_월급평균
FROM EMP
GROUP BY JOB
HAVING MIN(SAL)> 1000
ORDER BY TRUNC(AVG(SAL));