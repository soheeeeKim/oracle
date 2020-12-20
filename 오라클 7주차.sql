--q1.
select dept.deptno, dept.dname, emp.empno, emp.ename, emp.sal
    from emp, dept
    where emp.deptno=dept.deptno and sal>=2000;
    
select dept.deptno, dept.dname, emp.empno, emp.ename, emp.sal
    from emp join dept on(emp.deptno=dept.DEPTNO)
    where sal>=2000
    order by dept.deptno, emp.empno;
    
--q2.
select dept.deptno, dept.dname, trunc(avg(emp.sal)) as avg_sal,
        max(emp.sal) as max_sal, min(emp.sal) as min_sal, count(*) as cnt
    from emp, dept
    where dept.deptno = emp.DEPTNO
    group by dept.deptno, dept.dname;
   
select dept.deptno, dept.dname, trunc(avg(emp.sal)) as avg_sal,
        max(emp.sal) as max_sal, min(emp.sal) as min_sal, count(*) as cnt
    from emp join dept on(EMP.DEPTNO=dept.deptno)
    group by dept.deptno, dept.dname;
    
--q3.

select d.deptno, d.dname, e.empno, e.ename, e.job, e.sal
    from dept d, emp e
    where d.deptno = e.deptno(+)
    order by d.deptno, e.ename;
    
 select d.deptno, d.dname, e.empno, e.ename, e.job, e.sal
    from dept d left outer join emp e on(d.deptno = e.deptno)
    order by d.deptno, e.ename;
    
--q4.
select  d.deptno, d.dname, e.EMPNO, e.ENAME, e.MGR, 
        e.SAL, e.deptno, s.losal, s.HISAL, s.GRADE, 
        e1.EMPNO as mgr_empno, e1.ENAME as mgr_ename
    from dept d, emp e, emp e1, salgrade s
    where d.deptno=e.deptno(+) and e.mgr = e1.empno(+)
        and e.sal between s.losal(+) and s.hisal(+)
        order by d.deptno, e.empno;
        
select  d.deptno, d.dname, e.EMPNO, e.ENAME, e.MGR, 
        e.SAL, e.deptno, s.losal, s.HISAL, s.GRADE, 
        e1.EMPNO as mgr_empno, e1.ENAME as mgr_ename
    from dept d left outer join emp e on(d.deptno=e.deptno)
        left outer join emp e1 on(e.mgr = e1.empno)
        left outer join salgrade s on(e.sal between s.losal and s.hisal)
     order by d.deptno, e.empno;
        