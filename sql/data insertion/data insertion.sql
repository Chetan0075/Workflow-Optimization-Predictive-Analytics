INSERT INTO skills VALUES
(1,'SQL'),(2,'Python'),(3,'Power BI'),(4,'Excel'),(5,'Machine Learning'),
(6,'Cloud'),(7,'DevOps'),(8,'Data Engineering'),(9,'Java'),
(10,'Web Development'),(11,'Testing'),(12,'Project Management'),
(13,'Business Analysis'),(14,'AI'),(15,'Cybersecurity'),
(16,'SAP'),(17,'ETL'),(18,'Statistics'),(19,'Automation'),(20,'Networking');


INSERT INTO employees VALUES
(101,'Amit Sharma','Data Analyst','Senior',5,1200),
(102,'Neha Verma','Data Scientist','Senior',6,1500),
(103,'Ravi Kumar','BI Developer','Mid',4,1100),
(104,'Priya Singh','ML Engineer','Senior',7,1600),
(105,'Arjun Patel','Cloud Engineer','Mid',4,1300),
(106,'Karan Mehta','DevOps Engineer','Senior',6,1400),
(107,'Simran Kaur','Business Analyst','Mid',3,1000),
(108,'Rahul Das','Software Engineer','Junior',2,800),
(109,'Sneha Roy','QA Engineer','Mid',4,900),
(110,'Vikas Jain','Project Manager','Senior',8,1800),
(111,'Anjali Gupta','Data Engineer','Senior',6,1500),
(112,'Mohit Yadav','Automation Engineer','Mid',3,1000),
(113,'Pooja Nair','Statistician','Senior',7,1400),
(114,'Suresh Iyer','AI Engineer','Senior',8,1700),
(115,'Nitin Malhotra','Security Analyst','Mid',4,1200),
(116,'Rohit Bansal','ETL Developer','Mid',5,1300),
(117,'Kavya Rao','Power BI Developer','Mid',4,1100),
(118,'Deepak Joshi','Network Engineer','Senior',7,1500),
(119,'Isha Kapoor','SAP Consultant','Senior',8,1600),
(120,'Varun Khanna','Web Developer','Mid',3,1000);


INSERT INTO employee_skills VALUES
(101,1),(101,4),(101,3),
(102,2),(102,5),(102,18),
(103,1),(103,3),
(104,2),(104,5),(104,14),
(105,6),(105,7),
(106,7),(106,19),
(107,13),(107,12),
(108,9),(108,10),
(109,11),
(110,12),
(111,8),(111,17),
(112,19),
(113,18),
(114,14),(114,5),
(115,15),
(116,17),(116,8),
(117,3),
(118,20),
(119,16),
(120,10);


INSERT INTO projects VALUES
(201,'Banking Data Migration','HDFC','2024-01-10','2024-06-30',5000000,'In Progress'),
(202,'Retail Demand Forecasting','Reliance','2024-02-01','2024-07-15',4200000,'In Progress'),
(203,'Cloud Cost Optimization','Infosys Internal','2024-03-01','2024-08-30',3800000,'In Progress'),
(204,'HR Analytics Platform','TCS Internal','2024-01-20','2024-05-31',3000000,'Completed'),
(205,'Fraud Detection System','ICICI','2024-04-10','2024-10-15',6000000,'In Progress'),
(206,'Supply Chain Dashboard','Flipkart','2024-02-15','2024-07-01',3500000,'In Progress'),
(207,'Customer Churn Model','Airtel','2024-03-10','2024-09-20',4800000,'In Progress'),
(208,'Healthcare AI Solution','Apollo','2024-01-05','2024-12-31',7000000,'In Progress');


SELECT * FROM skills;
SELECT * FROM employees;
SELECT * FROM projects;
