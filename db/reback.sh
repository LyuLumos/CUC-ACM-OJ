#拷贝数据到数据库所在容器
docker cp db_backup_xxxxxxx.sql oj-postgres:/root

#进入数据库所在容器
docker exec -it oj-postgres bash

#登录数据库
psql -U postgres   

#删除原有数据库
drop database onlinejudge;

#退出
\q

#复制数据库，执行sql语句
psql -f /root/db_backup_xxxxxxx.sql -U postgres