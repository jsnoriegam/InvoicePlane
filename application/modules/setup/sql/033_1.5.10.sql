#Change all tables to the InnoDB engine
ALTER TABLE `ip_versions` ENGINE=InnoDB;
ALTER TABLE `ip_user_clients` ENGINE=InnoDB;
ALTER TABLE `ip_users` ENGINE=InnoDB;
ALTER TABLE `ip_uploads` ENGINE=InnoDB;
ALTER TABLE `ip_units` ENGINE=InnoDB;
ALTER TABLE `ip_tax_rates` ENGINE=InnoDB;
ALTER TABLE `ip_tasks` ENGINE=InnoDB;
ALTER TABLE `ip_settings` ENGINE=InnoDB;
ALTER TABLE `ip_quote_tax_rates` ENGINE=InnoDB;
ALTER TABLE `ip_quote_item_amounts` ENGINE=InnoDB;
ALTER TABLE `ip_quote_items` ENGINE=InnoDB;
ALTER TABLE `ip_quote_amounts` ENGINE=InnoDB;
ALTER TABLE `ip_quotes` ENGINE=InnoDB;
ALTER TABLE `ip_projects` ENGINE=InnoDB;
ALTER TABLE `ip_products` ENGINE=InnoDB;
ALTER TABLE `ip_payment_methods` ENGINE=InnoDB;
ALTER TABLE `ip_payments` ENGINE=InnoDB;
ALTER TABLE `ip_merchant_responses` ENGINE=InnoDB;
ALTER TABLE `ip_item_lookups` ENGINE=InnoDB;
ALTER TABLE `ip_invoice_tax_rates` ENGINE=InnoDB;
ALTER TABLE `ip_invoice_sumex` ENGINE=InnoDB;
ALTER TABLE `ip_invoice_item_amounts` ENGINE=InnoDB;
ALTER TABLE `ip_invoice_items` ENGINE=InnoDB;
ALTER TABLE `ip_invoice_groups` ENGINE=InnoDB;
ALTER TABLE `ip_invoice_amounts` ENGINE=InnoDB;
ALTER TABLE `ip_invoices_recurring` ENGINE=InnoDB;
ALTER TABLE `ip_invoices` ENGINE=InnoDB;
ALTER TABLE `ip_import_details` ENGINE=InnoDB;
ALTER TABLE `ip_imports` ENGINE=InnoDB;
ALTER TABLE `ip_families` ENGINE=InnoDB;
ALTER TABLE `ip_email_templates` ENGINE=InnoDB;
ALTER TABLE `ip_custom_values` ENGINE=InnoDB;
ALTER TABLE `ip_custom_fields` ENGINE=InnoDB;
ALTER TABLE `ip_client_notes` ENGINE=InnoDB;
ALTER TABLE `ip_clients` ENGINE=InnoDB;
ALTER TABLE `ip_user_custom`
	COLLATE='utf8_general_ci',
	CHANGE COLUMN `user_custom_fieldvalue` `user_custom_fieldvalue` TEXT NULL DEFAULT NULL AFTER `user_custom_fieldid`;
ALTER TABLE `ip_client_custom`
	COLLATE='utf8_general_ci',
	CHANGE COLUMN `client_custom_fieldvalue` `client_custom_fieldvalue` TEXT NULL DEFAULT NULL AFTER `client_custom_fieldid`;
ALTER TABLE `ip_invoice_custom`
	COLLATE='utf8_general_ci',
	CHANGE COLUMN `invoice_custom_fieldvalue` `invoice_custom_fieldvalue` TEXT NULL DEFAULT NULL AFTER `invoice_custom_fieldid`;
ALTER TABLE `ip_payment_custom`
	COLLATE='utf8_general_ci',
	CHANGE COLUMN `payment_custom_fieldvalue` `payment_custom_fieldvalue` TEXT NULL DEFAULT NULL AFTER `payment_custom_fieldid`;
ALTER TABLE `ip_quote_custom`
	COLLATE='utf8_general_ci',
	CHANGE COLUMN `quote_custom_fieldvalue` `quote_custom_fieldvalue` TEXT NULL DEFAULT NULL AFTER `quote_custom_fieldid`;
ALTER TABLE `ip_sessions`
	ALTER `id` DROP DEFAULT,
	ALTER `ip_address` DROP DEFAULT;
ALTER TABLE `ip_sessions`
	COLLATE='utf8_general_ci',
	CHANGE COLUMN `id` `id` VARCHAR(128) NOT NULL FIRST,
	CHANGE COLUMN `ip_address` `ip_address` VARCHAR(45) NOT NULL AFTER `id`;