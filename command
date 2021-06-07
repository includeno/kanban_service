docker build . -t includeno/kanban_service:1.0

docker pull includeno/kanban_service:1.0

运行容器
docker run -it --name kanban_service_container -p 8080:8080 -d includeno/kanban_service:1.0

查看日志和文件
docker logs -tf  kanban_service_container
docker exec -it  kanban_service_container /bin/bash

清理
docker stop kanban_service_container
docker rm kanban_service_container

docker image rm includeno/kanban_service:1.0