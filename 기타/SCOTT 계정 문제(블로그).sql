https://blog.naver.com/drv98

--1
SELECT EMPNO, ENAME, SAL
FROM EMP
WHERE DEPTNO = 10;

--2
SELECT ENAME, HIREDATE, DEPTNO
FROM EMP
WHERE EMPNO = 7934;

--3
SELECT *
FROM EMP
WHERE ENAME = 'ALLEN';

--4
SELECT ENAME, DEPTNO, SAL
FROM EMP
WHERE HIREDATE = '1981-02-20';

--5
SELECT *
FROM EMP
WHERE JOB NOT IN ('MANAGER');

--6
SELECT *
FROM EMP
WHERE HIREDATE > '1981-04-02';

--7
SELECT ENAME, SAL, DEPTNO
FROM EMP
WHERE SAL > 800;

--8
SELECT *
FROM EMP
WHERE DEPTNO > 20;

--9
SELECT *
FROM EMP
WHERE ENAME > 'K';

--10
SELECT *
FROM EMP
WHERE HIREDATE < '1981-12-09';

--11
SELECT EMPNO, ENAME
FROM EMP
WHERE EMPNO <= 7698;

--12
SELECT ENAME, SAL, DEPTNO
FROM EMP
WHERE HIREDATE >= '1981-04-02'
AND HIREDATE <= '1982-12-09';

--13
SELECT ENAME, JOB, SAL
FROM EMP
WHERE SAL >1600 AND SAL<3000;

--14 
SELECT *
FROM EMP
WHERE EMPNO NOT BETWEEN 7654 AND 7782;

--15
SELECT *
FROM EMP
WHERE ENAME BETWEEN 'B' AND 'J';

--16
SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE, 'YYYY') != '1981';

--17
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' OR JOB = 'SALESMAN';

--18
SELECT ENAME, EMPNO, DEPTNO
FROM EMP
WHERE DEPTNO != 20 AND DEPTNO != 30;

--19
SELECT EMPNO, ENAME, HIREDATE, DEPTNO
FROM EMP
WHERE SUBSTR(ENAME,1,1) = 'S';

--20
SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE, 'YYYY') = '1981';

--21 
SELECT *
FROM EMP
WHERE ENAME LIKE '%S%';

--22
SELECT *
FROM EMP
WHERE SUBSTR(ENAME,1,1) = 'M' AND ENAME LIKE '_____N';

--23
SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';

--24
SELECT *
FROM EMP
WHERE COMM IS NULL;

--25
SELECT *
FROM EMP
WHERE COMM IS NOT NULL;

--26 
SELECT ENAME, DEPTNO, SAL
FROM EMP
WHERE DEPTNO = 30 AND SAL >=1500;

--27
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
WHERE ENAME LIKE 'K%' OR DEPTNO = 30;

--28
SELECT *
FROM EMP
WHERE SAL >=1500 AND DEPTNO =30 AND JOB = 'MANAGER';

--29
SELECT *
FROM EMP
WHERE DEPTNO=30
ORDER BY EMPNO;

--30
SELECT *
FROM EMP
ORDER BY SAL DESC;

--31
SELECT *
FROM EMP
ORDER BY DEPTNO, SAL DESC;

--32
SELECT DEPTNO, ENAME, SAL
FROM EMP
ORDER BY DEPTNO DESC, ENAME, SAL DESC;

--33
SELECT ENAME, SAL, ROUND(SAL*0.13) AS BONUS, DEPTNO
FROM EMP
WHERE DEPTNO = 10;


--34
SELECT ENAME, SAL, COMM, NVL2(COMM, SAL+COMM, SAL) AS TOTAL
FROM EMP;

--35
SELECT ENAME, SAL, '$'||TO_CHAR(ROUND(SAL * 0.15,2),'9999.9') AS È¸ºñ
FROM EMP
WHERE SAL BETWEEN 1500 AND 3000;
