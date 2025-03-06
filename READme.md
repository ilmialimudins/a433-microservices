
<!-- my step submission
1. Build & Push Container ke GitHub Packages
 * create dockerfile
 * create sh for ( login , build and push image to github packages)

2. Deploy Order & Shipping Service di Kubernetes
    create rabbitmq ( config, delpoyment, and service yaml) after that cek ( kubectl get pod & svc)

3. Deploy Order & Shipping Service di Kubernetes
    create order and shipping service ( service and deployment yaml) after that cek ( kubectl get pod & svc)

4. Konfigurasi Istio Service Mesh
    * install istio ( istioctl install --set profile=demo -y ) cek ( kubectl get crds | grep istio )
    * create gateway istio yaml
    * create virtual service ( order & shipping virtaul service )
    * cek kubectl get gateway & kubectl get virtualservice

5. Testing & Validasi
    * kubectl get svc -n istio-system
    * Periksa Status LoadBalancer  ( kubectl get svc istio-ingressgateway -n istio-system )
      Jika masih pending gunakan forwad ( kubectl port-forward svc/istio-ingressgateway 8080:80 -n istio-system )
    * Tes jalankan API
         curl -v -X POST "http://localhost:8080/order" \
        -H "Content-Type: application/json" \
        -d '{
        "book_name": "KIN KIN", 
        "author": "Jiraya", 
        "buyer": "Ilmi", 
        "shipping_address": "Jl. Bekasi" 
        }'


 -->