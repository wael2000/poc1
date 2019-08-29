echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  create new build
 "
## create new project
#echo " create $1 project with display-name $2 "
#oc new-project $1 --display-name="$2"
#read -p "Press enter to check current project"
#oc project

read -p "Enter application name: [test]", app
read -p "Git URL [https://github.com/wael2000/a-ver.git]", url
oc new-build ${url:-'https://github.com/wael2000/a-ver.git'} --name=${app:-test}
