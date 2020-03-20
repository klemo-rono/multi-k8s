docker build -t rklemo/multi-client:latest -t rklemo/multi-client:$VERSION -f ./client/Dockerfile ./client 
docker build -t rklemo/multi-server:latest -t rklemo/multi-server:$VERSION -f ./server/Dockerfile ./server
docker build -t rklemo/multi-worker:latest -t rklemo/multi-worker:$VERSION  -f ./worker/Dockerfile  ./worker
docker push rklemo/multi-client:$VERSION
docker push rklemo/multi-worker:$VERSION
docker push rklemo/multi-server:$VERSION
