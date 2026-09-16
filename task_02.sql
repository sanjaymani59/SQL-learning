Use college_db;

select*from stuffs;
select*from student;

select name, student.departament, marks  from 
student inner join  stuffs on student.student_id =stuffs.stuffs_id;

select name, student.departament, marks  from 
student left join  stuffs on student.student_id =stuffs.stuffs_id;

select name, student.departament, marks  from 
student right join  stuffs on student.student_id =stuffs.stuffs_id;