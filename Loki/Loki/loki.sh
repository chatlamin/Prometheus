docker run --name loki \
    --detach \
    --publish 3100:3100  \
    --volume /home/docker/containers/loki/config/loki.yaml:/etc/loki/local-config.yaml \
    grafana/loki:master \
    --config.file=/etc/loki/local-config.yaml