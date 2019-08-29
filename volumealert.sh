# create volume alert in openshift-monitoring project
# prometheus will generate an alert based on volume capacity
# https://github.com/RedHat-EMEA-SSA-Team/storagedays/blob/master/openshift/volumealert.yml
oc create -f volumealert.yaml -n openshift-monitoring
