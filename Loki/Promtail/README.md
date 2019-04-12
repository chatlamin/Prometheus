# Установка

Для запуска выполните ./promtail.sh

Пример конфиг-файла promtail.yaml

## Promtail на другой машине

В Docker-run удалить

    --link loki:loki
В конфиге меняем

    client:
      url: http://loki:3100/api/prom/push
на

    client:
      url: http://192.168.1.2:3100/api/prom/push
где 192.168.1.2 - ip вашего loki сервера

Для удобства добавить дополнительные теги в

    labels:
например

    host: server3