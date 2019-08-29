echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  ./app.sh
  create new application
  1 - bc
  2 - is
  3 - dc
  4 - svc
  5 - route
  implicit objects
  rc
  ep
 "
## create new project
#echo " create $1 project with display-name $2 "
#oc new-project $1 --display-name="$2"
#read -p "Press enter to check current project"
#oc project

read -p "Enter application name: [test]", app

#read -p "Git URL [https://github.com/openshift/cakephp-ex.git]", url
#oc new-app ${url:-'https://github.com/openshift/cakephp-ex.git'} --name=${app:-test}

read -p "Git URL [https://github.com/wael2000/a-ver.git]", url
oc new-app ${url:-'https://github.com/wael2000/a-ver.git'} --name=${app:-test}

read -p "Press enter to get current status"
oc status
read -p "Press enter to get all objects in ${app:-test}"
oc get all

echo "Final step, exposing ${app:-test} service"
oc expose svc ${app:-test}
