sudo mkdir -p /home/docker/containers/telegraf
sudo touch /home/docker/containers/telegraf/telegraf.conf

docker run --name telegraf \
    --detach \
    --restart=always \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    --volume /var/run/docker.sock:/var/run/docker.sock:ro \
    --volume /home/docker/containers/telegraf:/etc/telegraf:ro \
    --volume /proc:/host/proc:ro \
    --volume /sys:/host/sys:ro \
    --env HOST_PROC=/host/proc \
    --env HOST_SYS=/host/sys \
    --publish 9126:9126 \
    telegraf