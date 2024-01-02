-- 1280. Students and Examinations

-- student_id is the primary key (column with unique values) for this table.
-- Each row of this table contains the ID and the name of one student in the school.

-- subject_name is the primary key (column with unique values) for this table.
Each row of this table contains the name of one subject in the school.

-- There is no primary key (column with unique values) for this table. It may contain duplicates.
-- Each student from the Students table takes every course from the Subjects table.
-- Each row of this table indicates that a student with ID student_id attended the exam of subject_name.

 

-- Write a solution to find the number of times each student attended each exam.

-- Return the result table ordered by student_id and subject_name.

SELECT
    s.student_id,
    s.student_name,
    su.subject_name,
    (   SELECT
            COUNT(1)
        FROM examinations
        WHERE student_id = s.student_id 
        AND subject_name = su.subject_name) AS attended_exams
FROM students s JOIN subjects su
ORDER BY s.student_id, su.subject_name