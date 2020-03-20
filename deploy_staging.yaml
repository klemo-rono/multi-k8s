docker build -t rklemo/multi-client:latest -t rklemo/multi-client:$SHA -f ./client/Dockerfile ./client 
docker build -t rklemo/multi-server:latest -t rklemo/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t rklemo/multi-worker:latest -t rklemo/multi-worker:$SHA -f ./worker/Dockerfile  ./worker
docker push rklemo/multi-client:$SHA
docker push rklemo/multi-worker:$SHA
docker push rklemo/multi-server:$SHA
