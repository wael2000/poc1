echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./deploy.sh DC_NAME
  oc deploy DC_NAME --latest
 "

echo "deploy lated version of $1 dc"
oc deploy $1 --latest --follow

oc rollout history dc/$1
