SELECT AVG(sum_durations) as average_total_duration
FROM(SELECT SUM(completed_at - started_at) as sum_durations
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name) as inner_query;