if [ "$1" = "d" ]
then
echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  add role to user
  oc adm policy add-role-to-user ROLE USRE_NAME
"

echo "oc adm policy remove-role-from-user $2 $3"
echo "-----------------"
oc adm policy remove-role-from-user $2 $3

else

echo "oc adm policy add-role-to-user $1 $2"
echo "--------------------------------------"
oc adm policy add-role-to-user $1 $2

fi
