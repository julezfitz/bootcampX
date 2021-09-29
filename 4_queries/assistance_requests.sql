SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN assignments ON assistance_requests.assignment_id = assignments.id
JOIN students ON assistance_requests.student_id = students.id
ORDER BY duration;

