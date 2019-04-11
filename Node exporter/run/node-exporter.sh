docker run --name node-exporter \
  --detach \
  --restart=always \
  --volume "/proc:/host/proc:ro" \
  --volume "/sys:/host/sys:ro" \
  --volume "/:/rootfs:ro" \
  --publish 9100:9100 \
  prom/node-exporter \
    --collector.filesystem.ignored-mount-points "^/(sys|proc|dev|host|etc)($|/)"