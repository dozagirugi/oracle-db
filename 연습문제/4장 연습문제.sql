-- 4장 연습문제 P92

SELECT DISTINCT job
FROM emp;

SELECT
    empno  "EMPLOYEE_NO",
    ename  "EMPLOYEE_NAME",
    mgr    "MANAGER",
    sal    "SALARY",
    comm   "COMMISSION",
    deptno "DEPARTMENT_NO"
FROM
    emp
ORDER BY
    deptno DESC,
    ename ASC;