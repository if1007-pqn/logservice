# logservice
a container with elasticsearch and kibana 

### build and push to EKS 
* this script requires account in docker hub:
<pre> bash eks/push-eks.sh </pre>

### running local
* elasticsearch requeriment:
<pre> # sysctl -w vm.max_map_count=262144 </pre>
* docker build and run:
<pre> docker build . -t logservice </pre>
<pre> docker run -p 9200:9200 -p 5601:5601 logservice </pre>