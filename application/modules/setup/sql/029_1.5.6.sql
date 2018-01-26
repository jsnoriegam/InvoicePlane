# Added a variable name to Custom fields to avoid array keys with spaces
# Added primary key to ip_sessions
ALTER TABLE `ip_custom_fields`
  CHANGE COLUMN `custom_field_label` `custom_field_name` VARCHAR(50) NULL DEFAULT NULL AFTER `custom_field_table`,
  ADD COLUMN `custom_field_label` VARCHAR(50) NULL DEFAULT NULL AFTER `custom_field_name`;

ALTER TABLE ip_sessions ADD PRIMARY KEY (id, ip_address);