#!/bin/sh
# sleep 1
cd /var/lib && chown -R "1000" .
cd /var/lib/postgresql && chown -R "1000" .
cd /var/lib/postgresql/data && chown -R "1000" .
cd /var/lib/postgresql/pgdata && chown -R "1000" .
# chmod -R 755 /var/lib
# chmod -R 755 /var/lib/postgresql/pgdata

#     Source                             Link
ln -s /var/lib/postgresql/pgdata /var/lib/postgresql/haha