echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./configmap.sh CONFIGMAP_NAME COUNTRY LANGUAGE

  ./configmap.sh mycm UAE arabic
  create confimap object
  oc create configmap NAME --from-file=FILE_NAME
  oc create configmap special-config --from-literal=KEY=VALUE --from-literal=KEY=VALUE

  user https://github.com/wael2000/secret-php.git application 
 "

NAME=${1:-cm1}
COUNTRY=${2:-UAE}
LANGUAGE=${3:-AR}

echo "create $NAME configmap"
#oc create configmap $NAME --from-file=$FILE_NAME
oc create configmap $NAME --from-literal=COUNTRY=$COUNTRY --from-literal=LANGUAGE=$LANGUAGE

echo "get configmap objects"
oc get configmap

echo "describe configmap $NAME"
oc describe configmap $NAME
