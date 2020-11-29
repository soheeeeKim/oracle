--1.
select deptno, round(avg(sal),0) as AVG_SAL,
       max(sal) as MAX_SAL,
       min(sal) as MIN_SAl,
       count(*) as CNT from emp
       group by deptno;
       
--2.
select job, count(*) from emp
       group by job
       having count(*)>=3;
       
--3. 
select to_char(hiredate,'yyyy') as HIRE_YEAR,
       DEPTNO, count(*) as CNT from emp
       group by to_char(hiredate,'yyyy'),deptno;
       
--4.
select nvl2(comm,'O','X') as EXIST_COMM,
       count(*) as CNT from emp
       group by nvl2(comm,'O','X');
       
--5.
select deptno, to_char(hiredate,'yyyy') as HIRE_YEAR, count(*) as CNT,
       max(sal) as MAX_SAL, 
       sum(sal) as SUM_SAL,
       avg(sal) as AVG_SAL from emp
       group by rollup(deptno,to_char(hiredate,'yyyy'));
       