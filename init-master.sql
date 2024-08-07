-- init-master.sql
 
ALTER USER 'root'@'localhost' IDENTIFIED BY 'passpass23';
FLUSH PRIVILEGES;
 
CREATE USER 'replicator'@'%' IDENTIFIED BY 'passpass23';
GRANT REPLICATION SLAVE ON *.* TO 'replicator'@'%';
FLUSH PRIVILEGES;
