select * from students
select * from professors
select * from courses
select * from enrollments 
select * from grades
select * from classes

---Inner Join------

select s.name, p.department from
students as s 
inner join professors as p
on s.student_id =p.professor_id  

----Left Join-----
select c.course_id,course_name, enrollment_date from
courses as c 
left join enrollments as e
on c.course_id =e.enrollment_id 

----Right Join--------
select g.enrollment_id,g.grade, p.name,p.department from
professors as p 
right join grades as g
on p.professor_id =g.grade_id 

---Multi Join------
1)
select s.name,p.department,g.grade,c.course_name,e.course_id,cl.term,cl.year from students as s
inner join professors as p
on s.student_id=p.professor_id
inner join grades as g
on g.grade_id=p.professor_id
inner join courses as c
on c.course_id=p.professor_id
inner join enrollments as e
on e.student_id=c.course_id
inner join classes as cl
on cl.course_id=e.course_id
-------------------------------------
2)
select * from students as s
inner join professors as p
on s.student_id=p.professor_id
inner join courses as c
on c.course_id=p.professor_id
---------------------------------------
3)
select s.* from students as s
inner join professors as p
on s.student_id=p.professor_id
inner join courses as c
on c.course_id=p.professor_id
---------------------------------------
4)
select p.* from students as s
inner join professors as p
on s.student_id=p.professor_id
inner join courses as c
on c.course_id=p.professor_id
---------------------------------------
5)
select c.* from students as s
inner join professors as p
on s.student_id=p.professor_id
inner join courses as c
on c.course_id=p.professor_id

-----------------Condition--------------------
select c.*, g.grade from courses as c
inner join grades as g
on c.course_id=g.grade_id
where g.grade in('A','D')


select c.*, g.grade from courses as c
inner join grades as g
on c.course_id=g.grade_id
where g.grade between 'A' and 'B'

select s.* from students as s 
inner join professors as p
on s.student_id=p.professor_id
where s.name like 'A%' 

select s.* from students as s 
inner join professors as p
on s.student_id=p.professor_id
where s.name like 'F___________'



inner join courses as c
on c.course_id=p.professor_id 
