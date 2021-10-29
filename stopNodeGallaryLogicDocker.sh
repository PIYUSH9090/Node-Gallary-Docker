#StopNodeGallaryLogicDocker.sh
echo "List of containers running now"
docker container ls -a
echo "node-gallary-logic container info"
docker container ls -f ancestor=$DOCKERUSER_ID/node-gallary-logic
echo "Stopping node-gallary-logic container"
docker container stop $(docker container ls -f ancestor=$DOCKERUSER_ID/node-gallary-logic -aq)
# Once all containers are stopped you can remove them using the 
# docker container stop command followed by the containers ID list.
echo "Removing node-gallary-logic container"
docker container rm $(docker container ls -f ancestor=$DOCKERUSER_ID/node-gallary-logic -aq)
echo "List of containers running now"
docker container ls -a