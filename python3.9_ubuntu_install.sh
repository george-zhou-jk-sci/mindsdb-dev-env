docker run -it ubuntu 
apt update
apt upgrade -y
apt install software-properties-common -y
add-apt-repository ppa:deadsnakes/ppa
apt install python3.9 -y
apt install python3-pip -y
apt install zip -y
mkdir -p layer/python/lib/python3.9/site-packages
pip3 install requests -t layer/python/lib/python3.9/site-packages/ --upgrade
pip3 install uuid6 -t layer/python/lib/python3.9/site-packages/ --upgrade
pip3 install mysql-connector-python -t layer/python/lib/python3.9/site-packages/ --upgrade
pip3 install pymysql -t layer/python/lib/python3.9/site-packages/ --upgrade
cd layer 
zip -r mindsdb_layer.zip *
docker ps -a
docker cp <docker_id>:/layer/mindsdb_layer.zip <local_location>