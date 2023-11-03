# https://dashjoin.github.io/platform/4.0/installation/
#
# docker pull dashjoin/platform:4.0.0
#
 
# set  permissions to address errors starting up:    sudo chmod -R 777 dash-join-data/


# rm container by string... 
pat=dashjoin705c
docker rm -f $(docker ps -a | grep $pat | awk '{print $1}')


cd /ap/dkr/705b-dkrcol-pmdm/dashjoin705c; \
 docker run  -p 6081:8080  --name=dashjoin705c  \
 -e DJ_ADMIN_PASS=pm2430 \
 -e DASHJOIN_HOME=dash-join-data \
 -e DASHJOIN_APPURL=http://10.5.1.131:6081/dashjoin/dash-join-data \
 -v ./dash-join-data:/deployments/dash-join-data dashjoin/platform:4.0.0

