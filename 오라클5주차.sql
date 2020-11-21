--q3.
select EMPNO,
       ENAME,
       to_char(HIREDATE,'yyyy/mm/dd') as "HIREDATE",
       to_char(NEXT_DAY(ADD_MONTHS(HIREDATE,3),'¿ù¿äÀÏ'),'yyyy-mm-dd') as "R_JOB",
       NVL2(COMM,to_char(COMM),'N/A') as "COMM"
       FROM EMP 
        order by EMPNO ASC;
        
--q4.
select EMPNO,ENAME,MGR,
        case
         when MGR is NULL then '0000'
         when MGR like '75__' then '5555'
         when MGR like '76__' then '6666'
         when MGR like '77__' then '7777'
         when MGR like '78__' then '8888'
         else to_char(MGR) end as CHG_MGR
    from emp;
         
       