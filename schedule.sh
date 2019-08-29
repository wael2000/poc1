echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./schedule.sh NODE_NAME true/false
  change node schedulable flag 
  example
  oc adm manage-node node2.riyadh.internal --schedulable=true
"
oc adm manage-node $1 --schedulable=$2
