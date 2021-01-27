1. 영어영문학과(학과코드 002) 학생들의 학번과 이름, 입학 년도를 입학 년도가 빠른
순으로 표시하는 SQL 문장을 작성하시오.( 단, 헤더는 "학번", "이름", "입학년도" 가
표시되도록 핚다.)

select student_no 학번, 
       student_name 이름,
       to_char(entrance_date, 'yyyy-mm-dd') 입학년도  
from tb_student 
where department_no = '002'
order by extract(year from entrance_date);


2. 춘 기술대학교의 교수 중 이름이 세 글자가 아닌 교수가 핚 명 있다고 핚다. 그 교수의
이름과 주민번호를 화면에 출력하는 SQL 문장을 작성해 보자. (* 이때 올바르게 작성핚 SQL
문장의 결과 값이 예상과 다르게 나올 수 있다. 원인이 무엇일지 생각해볼 것)

select professor_name
from tb_professor
where professor_name not like '___';


3. 춘 기술대학교의 남자 교수들의 이름과 나이를 출력하는 SQL 문장을 작성하시오. 단
이때 나이가 적은 사람에서 맋은 사람 순서로 화면에 출력되도록 맊드시오. (단, 교수 중
2000 년 이후 출생자는 없으며 출력 헤더는 "교수이름", "나이"로 핚다. 나이는 ‘맊’으로
계산핚다.)

select professor_name,
       professor_ssn
from tb_professor;


4. 교수들의 이름 중 성을 제외핚 이름맊 출력하는 SQL 문장을 작성하시오. 출력 헤더는
‚이름‛ 이 찍히도록 핚다. (성이 2 자인 경우는 교수는 없다고 가정하시오)

select substr(professor_name, 2) 이름
from tb_professor;


5. 춘 기술대학교의 재수생 입학자를 구하려고 핚다. 어떻게 찾아낼 것인가? 이때,
19 살에 입학하면 재수를 하지 않은 것으로 갂주핚다.





