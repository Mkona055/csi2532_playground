CREATE TABLE schema_migrations (
migration varchar(255),
migrated_at time,
PRIMARY KEY (migration)
);
INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20200228145526-create-athletes.sql', '2020-02-28 14:55:26');
INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20200228145900-create-migrations.sql', '2020-02-28 14:59:00');
