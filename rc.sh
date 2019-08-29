echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./rc.sh DOPLOYMNET_CONFIG_NAME NUMBER_OF_REPLICAS
  update replication controller
  oc scale dc/DOPLOYMNET_CONFIG_NAME --replicas=NUMBER_OF_REPLICAS
 "

echo "check dc $1 configuration DESIRED, CURRENT"
oc get dc $1

echo "scaling $1 dc to $2 replicas"
oc scale dc/$1 --replicas=$2

echo "check dc $1 configuration DESIRED, CURRENT"
oc get dc $1
