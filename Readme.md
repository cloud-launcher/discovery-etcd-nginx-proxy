## cloudlauncher/discovery-etcd-nginx-proxy

https://discovery.etcd.io [does not yet support CORS](https://github.com/coreos/discovery.etcd.io/issues/12). This proxies to the site and results are returned with `Access-Control-Allow-Origin: *`.


`docker run --rm -p 80:80 cloudlauncher/discovery-etcd-nginx-proxy`

`curl http://localhost/new`


This is a vanilla `nginx` image with a custom .conf applied. Override it with:

`docker run --rm -p 80:80 -v $(pwd)/your.conf:/etc/nginx/nginx.conf cloudlauncher/discovery-etcd-nginx-proxy`