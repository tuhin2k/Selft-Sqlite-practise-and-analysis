USE demo_db_a;
CREATE INDEX idx_name
ON test (name);

SHOW INDEX FROM test;