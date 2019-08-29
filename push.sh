echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./push.sh IMAGE_NAME
  docker push IMAGE_NAME
  example:
  ./push.sh docker-registry-default.192.168.99.100.nip.io/openshift/mssql-server-linux
 "
docker push $1
