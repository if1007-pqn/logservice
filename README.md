# logservice
a container with elasticsearch and kibana 

## build and push to EKS 
* this script requires account in docker hub:
<pre> bash eks/push-eks.sh </pre>

## running local
* firstly, do the elasticsearch requeriment:
<pre> # sysctl -w vm.max_map_count=262144 </pre>
* docker build and run:
<pre> ./run.sh </pre>