if [ "$1" = "d" ]
then
echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
   ./quota.sh d PROJECT_NAME
  1 - delete existing quota
  oc delete quota QUOTA_NAME
"

echo "delete quota pod-quota for $2 project"
echo "--------------------------------------"
oc delete quota pod-quota -n $2

else

echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
   ./quota.sh PROJECT_NAME
  1 - create quota for project
    oc create -f QUOTA_TEMPLATE.yaml -n PROJECT_NAME
  2 - get existing quotas
    oc get quota -n PROJECT_NAME
  3 - describe existing quota
    oc describe quota QUOTA_NAME
 "

echo "create pod quota for $1 project"
echo "--------------------------------------"
oc create -f quota.yaml -n $1

echo "get list of quotas in $1 project"
echo "--------------------------------------"
oc get quota -n $1

echo "get details os quota "
echo "--------------------------------------"
oc describe quota pod-quota

fi
