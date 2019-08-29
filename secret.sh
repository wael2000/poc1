echo "
   =======================================
  | NCSC - National Cyber Security Center |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./secret.sh
  create secret object
  oc create -f FILE_NAME
 "

echo "create mysecret secret object"
oc create -f secret.yaml

echo "get secret objects"
oc get secrets

echo "describe secret mysecret"
oc describe secret mysecret
