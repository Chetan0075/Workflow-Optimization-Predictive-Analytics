USE workflow_analytics;



SELECT 
    t.task_id,
    t.task_name,
    p.project_name,
    t.estimated_hours,
    t.actual_hours,
    (t.actual_hours - t.estimated_hours) AS delay_hours,
    d.delay_days,
    d.reason
FROM tasks t
JOIN projects p ON t.project_id = p.project_id
JOIN delays d ON t.task_id = d.task_id
ORDER BY delay_days DESC;



SELECT 
    e.name,
    e.role,
    r.utilization_pct,
    t.task_name,
    p.project_name
FROM resource_allocation r
JOIN employees e ON r.employee_id = e.employee_id
JOIN tasks t ON r.task_id = t.task_id
JOIN projects p ON t.project_id = p.project_id
WHERE r.utilization_pct > 110
ORDER BY r.utilization_pct DESC;



SELECT 
    p.project_name,
    c.planned_cost,
    c.actual_cost,
    (c.actual_cost - c.planned_cost) AS cost_overrun
FROM cost_tracking c
JOIN projects p ON c.project_id = p.project_id
ORDER BY cost_overrun DESC;


SELECT 
    e.name,
    SUM(l.hours_worked) AS total_hours_logged,
    COUNT(DISTINCT l.task_id) AS tasks_handled
FROM time_logs l
JOIN employees e ON l.employee_id = e.employee_id
GROUP BY e.name
ORDER BY total_hours_logged DESC;

