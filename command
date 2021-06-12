#环境配置
docker run --name mysqlinstance -p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=123456 \
--restart=always -d mysql:5.7.33
数据库名称 db_carambola

docker build . -t includeno/kanban_service:1.0

docker pull includeno/kanban_service:1.0
docker exec -it  kanban_service_container /bin/bash

docker run -it --name kanban_service_container -p 5003:8080 -d includeno/kanban_service:1.0
docker logs -tf  kanban_service_container


docker stop kanban_service_container
docker rm kanban_service_container

docker image rm includeno/kanban_service:1.0