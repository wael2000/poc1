if [ "$1" = "d" ]
then
echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./project.sh d PROJECT_NAME
  1 - delete project
    oc delete project PROJECT_NAME
"

echo "delete project $2"
echo "-----------------"
oc delete project $2

else

echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
   ./project.sh PROJECT_NAME DISPLAY_NAME
  1 - create new project
    oc new-project PROJECT_NAME --display-name=DISPLAY_NAME
  2 - switch between projects
    oc project PROJECT_NAME
  3 - get current status
    oc status
  4 - get all objects in project
    oc get all
  5 - get project service accounts
    oc get sa
  6 - get project policy binding
    oc describe policyBindings :default -n PROJECT_NAME
 "
## create new project
echo "create $1 project with display-name $2"
echo "--------------------------------------"
oc new-project $1 --display-name="$2"

read -p "Press enter to check current project"
echo "--------------------------------------"
oc project

read -p "Press enter to get current status"
echo "--------------------------------------"
oc status

read -p "Press enter to get all objects in $1"
echo "--------------------------------------"
oc get all

read -p "Press enter to get project $1 service accounts"
echo "------------------------------------------------"
oc get sa

read -p "Press enter to get project $1 role binding"
echo "--------------------------------------------"
oc describe roleBindings -n $1

fi
