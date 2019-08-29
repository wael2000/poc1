echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./cluster-admin.sh
  oc adm policy add-cluster-role-to-user cluster-admin USER
 "
## create new project
#echo " create $1 project with display-name $2 "
#oc new-project $1 --display-name="$2"
#read -p "Press enter to check current project"
#oc project
read -p "Enter user name : " user

oc adm policy add-cluster-role-to-user cluster-admin ${app:-system}
