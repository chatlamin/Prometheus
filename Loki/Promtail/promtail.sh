docker run --name promtail \
    --detach \
    --volume /var/log:/var/log \
    --volume /home/docker/containers/promtail/config/promtail.yaml:/etc/promtail/docker-config.yaml \
    --link loki:loki \
    grafana/promtail:master \
    --config.file=/etc/promtail/docker-config.yaml