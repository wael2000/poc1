if [ "$1" = "d" ]
then
echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
   ./limits.sh d PROJECT_NAME
  1 - delete existing limit range
  oc delete limits QUOTA_NAME -n PROJECT_NAME
"

echo "delete limit core-resource-limits for $2 project"
echo "--------------------------------------"
oc delete limits core-resource-limits -n $2

else

echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
   ./limits.sh PROJECT_NAME
  1 - create range limit for project
    oc create -f RANGE_LIMIT_TEMPLATE.yaml -n PROJECT_NAME
  2 - get existing limits
    oc get limits -n PROJECT_NAME
  3 - describe existing limit
    oc describe limits RANGE_LIMIT_NAME
 "

echo "create range limits for $1 project"
echo "--------------------------------------"
oc create -f limits.yaml -n $1

echo "get list of limits in $1 project"
echo "--------------------------------------"
oc get limits -n $1

echo "get details of ramge limits "
echo "--------------------------------------"
oc describe limits openshift-resource-limits

fi
