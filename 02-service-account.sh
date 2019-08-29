if [ "$1" = "d" ]
then
echo "
   https://docs.openshift.com/container-platform/3.11/admin_guide/manage_rbac.html
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  1 - create service account test
  2 - add view role to sa
"

echo "delete sa $2"
echo "-----------------"
oc delete sa $2

else

echo "create $1 sa"
echo "--------------------------------------"
oc create sa $1

read -p "add $2 role to $1 sa"
echo "--------------------------------------"
oc policy add-role-to-user $2 -z $1

fi
