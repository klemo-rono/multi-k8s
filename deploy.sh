docker build -t rklemo/multi-client:latest -t rklemo/multi-client:$SHA -f /client/Dockerfile ./client 
docker build -t rklemo/multi-server:latest -t rklemo/multi-server:$SHA -f /server/Dockerfile ./server
docker build -t rklemo/multi-worker:latest -t rklemo/multi-worker:$SHA  -f /worker/Dockerfile  ./worker
docker push rklemo/multi-client:latest
docker push rklemo/multi-worker:latest
docker push rklemo/multi-server:latest
docker push rklemo/multi-client:$SHA
docker push rklemo/multi-worker:$SHA
docker push rklemo/multi-server:$SHA
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=rklemo/multi-server:$SHA
kubectl set image deployments/client-deployment client=rklemo/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=rklemo/multi-worker:$SHA