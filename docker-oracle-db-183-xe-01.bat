docker run --name oracle-db-183-xe-01 ^
-p 1521:1521 ^
-p 5500:5500 ^
-e ORACLE_PWD=admin ^
-e ORACLE_CHARACTERSET=AL32UTF8 ^
-v C:\1\docker\oracle-db-183-xe-01\oradata:/opt/oracle/oradata ^
-v C:\1\docker\shared:/shared_docker ^
oracle/database:18.4.0-xe
@PAUSE