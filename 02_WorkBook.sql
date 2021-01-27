1. 영어영문학과(학과코드 002) 학생들의 학번과 이름, 입학 년도를 입학 년도가 빠른
순으로 표시하는 SQL 문장을 작성하시오.( 단, 헤더는 "학번", "이름", "입학년도" 가
표시되도록 핚다.)

select student_no 학번, 
       student_name 이름,
       to_char(entrance_date, 'yyyy-mm-dd') 입학년도  
from tb_student 
where department_no = '002'
order by extract(year from entrance_date);
