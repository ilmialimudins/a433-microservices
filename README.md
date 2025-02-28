Karsajobs
=============================
Karsajobs is simple jobs application written in Go.

## Configuration
Karsajobs read configuration from environment variable

| ENV        |      Description                 |
|------------|:---------------------------------|
| APP_PORT   | run karsajobs in specific port   |
| MONGO_HOST | mongodb hostname                 |
| MONGO_USER | mongodb user                     |
| MONGO_PASS | mongodb password                 |


  
## Endpoint
- /jobs
  - `GET` get list job
- /job
  - `POST` create a job  
- /job/id
  - `GET` get job
  - `DELETE` delete job
- /health
  - `GET` check app health status


<!-- langkah Kubernetes 

1. buat build_push_image_karsajobs.sh
2. jalankan ./build_push_image_karsajobs.sh  ( untuk build dan push ke docker hub)
3. buat folder kubernetes

struktur
kubernetes

├── backend

│   ├── karsajobs-service.yml

│   └── karsajobs-deployment.yml

├── frontend

│   ├── karsajobs-ui-service.yml

│   └── karsajobs-ui-deployment.yml

└── mongodb

    ├── mongo-configmap.yml

    ├── mongo-secret.yml

    ├── mongo-pv-pvc.yml

    ├── mongo-service.yml

    └── mongo-statefulset.yml

4.install minikube gunakan powershell run sa administrasi
5. langkah selajutnya ke folder kubernetes yang diatas
dan jalankan
kubectl apply -f mongodb/
kubectl apply -f backend/
kubectl apply -f frontend/

untuk cek
kubectl get pods
kubectl get svc

jalankan service 
minikube service karsajobs-ui-service
6. buat namespaces ( kubectl create namespace monitoring )
7. mkdir monitoring dan cd monitoring 
  prometheus = 
  prometheus-configmap.yml 
  prometheus-deployment.yml
  prometheus-service.yml

  Grafana=
  grafana-deployment.yml
  grafana-service.yml 

  8. jalan kan kubectl apply -f grafana/  && jalan kan kubectl apply -f prmoetheus/ 
  9.cek pod bejalana ( kubectl get pods -n monitoring)
10 . jalankan service minicube
    minikube service prometheus-service -n monitoring
    minikube service grafana-service -n monitoring
11. jalankan images 
     docker run -d --name karsajobs-ui -p 8000:8000 ilmi35/karsajobs-ui:latest (frontend)
      docker run -d --name karsajobs-ui -p 8080:8080 ilmi35/karsajobs:latest (backend)


-->
