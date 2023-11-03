
# usage:


cd /ap/dkr/705b-dkrcol-pmdm/dashjoin705b; 

mkdir -p ./sysdata/dash-join-data


# One time, do this..
# set  permissions to address errors starting up:       sudo chmod -R 777 sysdata

docker compose up


Visit:
  http://10.5.1.131:6080


=================================================


# https://dashjoin.github.io/platform/4.0/installation/

#
# docker pull dashjoin/platform:4.0.0
#
# docker run
# -d
# -p 8080:8080
# -e DJ_ADMIN_PASS=djdjdj
# -e DASHJOIN_HOME=dashjoin-demo
# -e DASHJOIN_APPURL=https://github.com/dashjoin/dashjoin-demo
# -v c:/tmp/dashjoin-demo:/deployments/dashjoin-demo dashjoin/platform


=================================================


