CREATE DATABASE workflow_analytics;

USE workflow_analytics;

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    client VARCHAR(100),
    start_date DATE,
    end_date DATE,
    budget INT,
    status VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    skill_level VARCHAR(50),
    experience_years INT,
    hourly_cost INT
);

CREATE TABLE skills (
    skill_id INT PRIMARY KEY,
    skill_name VARCHAR(100)
);

CREATE TABLE employee_skills (
    employee_id INT,
    skill_id INT,
    PRIMARY KEY (employee_id, skill_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id)
);

CREATE TABLE tasks (
    task_id INT PRIMARY KEY,
    project_id INT,
    task_name VARCHAR(150),
    required_skill VARCHAR(100),
    estimated_hours INT,
    actual_hours INT,
    deadline DATE,
    completion_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE resource_allocation (
    allocation_id INT PRIMARY KEY,
    employee_id INT,
    task_id INT,
    allocated_hours INT,
    utilization_pct FLOAT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (task_id) REFERENCES tasks(task_id)
);

CREATE TABLE time_logs (
    log_id INT PRIMARY KEY,
    employee_id INT,
    task_id INT,
    work_date DATE,
    hours_worked INT,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (task_id) REFERENCES tasks(task_id)
);

CREATE TABLE delays (
    delay_id INT PRIMARY KEY,
    task_id INT,
    delay_days INT,
    reason VARCHAR(200),
    FOREIGN KEY (task_id) REFERENCES tasks(task_id)
);

CREATE TABLE cost_tracking (
    cost_id INT PRIMARY KEY,
    project_id INT,
    actual_cost INT,
    planned_cost INT,
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

SHOW TABLES;
