docker run ^
--name oracle-tvisng-dev-all-db-183-xe-01 ^
-p 15211:1521 ^
-p 55002:5500 ^
--memory=2g ^
-e ORACLE_PWD=admin ^
-e ORACLE_CHARACTERSET=AL32UTF8 ^
-v C:/1/app-workdir/docker/oracle-tvisng-dev-all-db-183-xe-01/oradata:/opt/oracle/oradata ^
-v C:/1/app-workdir/docker/shared:/shared_docker ^
oracle/database:18.4.0-xe
@PAUSE