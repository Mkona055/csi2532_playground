ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;
INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20200228150700-update-athletes.sql', '2020-02-28 15:07:00');
