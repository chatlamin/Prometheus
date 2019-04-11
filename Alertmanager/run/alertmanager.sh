sudo mkdir -p /home/docker/containers/alertmanager/config
sudo touch /home/docker/containers/alertmanager/config/alertmanager.yml


docker run --name alertmanager \
    --detach \
    --restart=always \
    --volume /home/docker/containers/alertmanager/config/alertmanager.yml:/etc/alertmanager/alertmanager.yml \
    --publish 9093:9093  \
    prom/alertmanager