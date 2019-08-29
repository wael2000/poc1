echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./tag.sh IMAGE REGISTRY PATH_AND_NAME
  docker tag $1 $2/$3
  exmaple
  ./tag.sh microsoft/mssql-server-linux docker-registry-default.192.168.99.100.nip.io openshift/mssql-server-linux
  tag image with the regsitry and path
 "
docker tag $1 $2/$3
