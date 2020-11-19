--q1.1
select EMPNO,rpad(substr(EMPNO,1,2),4,'*') as "MASKING_EMPNO", 
        ENAME,rpad(substr(ENAME,1,1),5,'*') as "MASKING_ENAME"
        from emp
    where length(ENAME)= 5;
--q1.2
select EMPNO, substr(EMPNO,1,2)||'**' as "MASKING_EMPNO",
        ENAME,substr(ENAME,1,1)||'****' as "MASKING_ENAME"
        from emp
    where length(ENAME)= 5;
--q1.3
select EMPNO, concat(substr(EMPNO,1,2),'**') as "MASKING_EMPNO",
        ENAME,concat(substr(ENAME,1,1),'****') as "MASKING_ENAME"
        from emp
    where length(ENAME)= 5;
    
--q2
select EMPNO, ENAME, SAL,
       trunc(SAL/21.5,2) as "DAY_PAY", 
       round(SAL/(21.5*8),1) as "TIME_PAY"
        from emp;
--q3
select EMPNO, ENAME, HIREDATE,
       concat(19, replace(HIREDATE,'/','-')) as "R_JOB",
       COMM from emp