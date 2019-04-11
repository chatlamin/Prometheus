#https://www.shellhacks.com/ru/prometheus-monitoring-install-docker-ubuntu-centos/
#https://github.com/prometheus/prometheus/issues/2939

sudo mkdir -p /home/docker/containers/prometheus/{config,data}
sudo touch /home/docker/containers/prometheus/config/prometheus.yml
sudo touch /home/docker/containers/prometheus/config/alert.yml

#что бы решить проблему с "opening storage failed: lock DB directory: open /prometheus/lock: permission denied" можно сделать так:
#sudo chown 65534:65534 /home/docker/containers/prometheus/data
#или так ID=$(id -u) в run --user $ID \

ID=$(id -u)

docker run --name prometheus \
    --detach \
    --restart=always \
    --user $ID \
    --volume /home/docker/containers/prometheus/config/prometheus.yml:/etc/prometheus/prometheus.yml \
    --volume /home/docker/containers/prometheus/config/alert.yml:/etc/prometheus/alert.yml \
    --volume /home/docker/containers/prometheus/data:/prometheus \
    --publish 9090:9090  \
    prom/prometheus