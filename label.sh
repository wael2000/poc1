echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./label.sh <object_type> <object_name> <label> --overwrite
  relable OCP object

  ./label.sh po test-1-rd21d app=test1
  oc label po test-1-rd21d app=test1 --overwrite
 "

echo "lable $2 of type $1 with $3"
oc label $1 $2 $3 --overwrite

echo "check current label"
oc get $1 --show-labels
