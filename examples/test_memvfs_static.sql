-- Test script for static memvfs that's built into SQLite binary
-- The memvfs should already be registered as the default VFS

-- uncomment to enable verbose logs
.log stderr

.open main.db
PRAGMA journal_mode; -- we should be in memory mode by default

.databases
.vfsinfo

CREATE TABLE t1(a, b);
INSERT INTO t1 VALUES(1, 2);
INSERT INTO t1 VALUES(3, 4);
SELECT * FROM t1;
pragma hello_vfs=1234;

select * from dbstat;

vacuum;
drop table t1;
vacuum;

select * from dbstat;
