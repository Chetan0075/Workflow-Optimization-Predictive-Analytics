INSERT INTO time_logs (employee_id, task_id, work_date, hours_worked) VALUES
(101,1,'2024-02-01',8),(101,1,'2024-02-02',9),(101,1,'2024-02-03',7),
(102,5,'2024-04-10',10),(102,5,'2024-04-11',9),(102,5,'2024-04-12',10),
(104,12,'2024-07-20',9),(104,12,'2024-07-21',10),(104,12,'2024-07-22',9),
(106,8,'2024-05-15',9),(106,8,'2024-05-16',10),
(109,3,'2024-03-20',8),(109,3,'2024-03-21',9),
(110,10,'2024-04-01',10),(110,10,'2024-04-02',9),
(114,18,'2024-06-25',9),(114,18,'2024-06-26',10);


INSERT INTO delays (task_id, delay_days, reason) VALUES
(3,10,'Data validation issues'),
(4,12,'Resource overallocation'),
(5,18,'Model tuning complexity'),
(8,15,'Script performance issues'),
(10,16,'Late data availability'),
(11,20,'Infrastructure scaling delay'),
(12,18,'Training data imbalance'),
(14,10,'Dashboard redesign'),
(16,21,'Customer requirement change'),
(18,20,'High model training time');


INSERT INTO cost_tracking (project_id, actual_cost, planned_cost) VALUES
(201,5200000,5000000),
(202,4500000,4200000),
(203,3900000,3800000),
(204,2900000,3000000),
(205,6500000,6000000),
(206,3600000,3500000),
(207,5100000,4800000),
(208,7400000,7000000);


SELECT * FROM time_logs;
SELECT * FROM delays;
SELECT * FROM cost_tracking;
