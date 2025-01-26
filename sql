USE batch;

SELECT st.name AS student_name, sub.name AS subject_name 
FROM students st
JOIN enrollment en ON st.id = en.st_id
JOIN subjects sub ON sub.id = en.sub_id;


SELECT st.name as student_name, Count(sub.id) as no_of_subjects
FROM students st
JOIN enrollment en ON st.id = en.st_id
JOIN subjects sub ON sub.id = en.sub_id
GROUP BY st.id;


SELECT sub.name as subject_name, Count(st.id) as no_of_students
FROM students st
JOIN enrollment en ON st.id = en.st_id
JOIN subjects sub ON sub.id = en.sub_id
GROUP BY sub.id;
