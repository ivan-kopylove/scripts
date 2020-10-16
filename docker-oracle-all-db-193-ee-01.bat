docker run ^
--name oracle-all-db-193-ee-01 ^
-p 15213:1521 ^
-p 55003:5500 ^
--memory=4500m ^
-e ORACLE_PDB=orcl ^
-e ORACLE_PWD=password ^
-e ORACLE_MEM=4000 ^
-e ORACLE_CHARACTERSET=AL32UTF8 ^
-v C:/1/app-workdir/docker/oracle-all-db-193-ee-01/oradata:/opt/oracle/oradata ^
-v C:/1/app-workdir/docker/shared:/shared_docker ^
oracle/database:19.3.0-ee
@PAUSE



