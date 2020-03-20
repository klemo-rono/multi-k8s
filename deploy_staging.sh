docker build -t rklemo/multi-client:latest -t rklemo/multi-client:stg-${SHA} -f ./client/Dockerfile ./client 
docker build -t rklemo/multi-server:latest -t rklemo/multi-server:stg-${SHA} -f ./server/Dockerfile ./server
docker build -t rklemo/multi-worker:latest -t rklemo/multi-worker:stg-${SHA} -f ./worker/Dockerfile  ./worker
docker push rklemo/multi-client:stg-${SHA}
docker push rklemo/multi-worker:stg-${SHA}
docker push rklemo/multi-server:stg-${SHA}
