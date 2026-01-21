USE workflow_analytics;

ALTER TABLE resource_allocation DROP FOREIGN KEY resource_allocation_ibfk_2;
ALTER TABLE time_logs DROP FOREIGN KEY time_logs_ibfk_2;
ALTER TABLE delays DROP FOREIGN KEY delays_ibfk_1;

ALTER TABLE tasks MODIFY task_id INT AUTO_INCREMENT;
ALTER TABLE resource_allocation MODIFY allocation_id INT AUTO_INCREMENT;
ALTER TABLE time_logs MODIFY log_id INT AUTO_INCREMENT;
ALTER TABLE delays MODIFY delay_id INT AUTO_INCREMENT;
ALTER TABLE cost_tracking MODIFY cost_id INT AUTO_INCREMENT;

ALTER TABLE resource_allocation
ADD CONSTRAINT fk_alloc_task FOREIGN KEY (task_id) REFERENCES tasks(task_id);
ALTER TABLE time_logs
ADD CONSTRAINT fk_timelog_task FOREIGN KEY (task_id) REFERENCES tasks(task_id);
ALTER TABLE delays
ADD CONSTRAINT fk_delay_task FOREIGN KEY (task_id) REFERENCES tasks(task_id);
