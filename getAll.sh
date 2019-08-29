echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./getAll.sh [po/bc/dc/is/rc/svc/route] [comma seperated values]
 "

echo "get all objects of type $1 across all projects"
oc get $1 --all-namespaces -o wide

# to get pods on spsecific node
# oc get nodes
# oc adm manage-node NODE_NAME --list-pods
