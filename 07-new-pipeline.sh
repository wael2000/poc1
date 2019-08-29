echo "
   =======================================
  | Red Hat                               |
  | OPENSHIFT - DEMO                      |
   =======================================
  create new pipeline
 "


read -p "Enter cicd project name: [cicd]", cicd
read -p "Enter Targer project name: [project]", project

oc new-app -f pipeline_template.yaml --param PROJECT=${project:-demo} -n ${cicd:-cicd}
oc policy add-role-to-user edit system:serviceaccount:${cicd:-cicd}:jenkins -n ${project:-demo}
