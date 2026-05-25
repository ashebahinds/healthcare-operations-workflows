-- Count total no-shows
SELECT COUNT(*) AS total_no_shows
FROM appointments
WHERE status = 'No-Show';

-- Count no-shows by provider
SELECT provider, COUNT(*) AS no_show_count
FROM appointments
WHERE status = 'No-Show'
GROUP BY provider;

-- Calculate no-show rate
SELECT 
    COUNT(CASE WHEN status = 'No-Show' THEN 1 END) * 100.0 / COUNT(*) AS no_show_rate
FROM appointments;

-- Count completed follow-ups
SELECT COUNT(*) AS completed_followups
FROM appointments
WHERE follow_up_completed = 'Yes';

-- Count successful reschedules
SELECT COUNT(*) AS successful_reschedules
FROM appointments
WHERE rescheduled = 'Yes';
