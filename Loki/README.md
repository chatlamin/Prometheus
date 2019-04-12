https://rtfm.co.ua/grafana-labs-loki-raspredelyonnaya-sistema-tegi-i-filtry/
https://rtfm.co.ua/grafana-labs-loki-sbor-i-prosmotr-logov/

удаленный promtail
в конфиге меняем

    client:
      url: http://loki:3100/api/prom/push
на

    client:
      url: http://192.168.1.2:3100/api/prom/push 
где 192.168.1.2 ip вашего loki

добавить дополнительные теги в labels:
например host: server3