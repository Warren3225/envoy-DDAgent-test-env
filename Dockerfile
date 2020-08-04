FROM envoyproxy/envoy-dev:latest
COPY envoy.yaml /etc/envoy/envoy.yaml

LABEL "com.datadoghq.ad.check_names"='["envoy"]'
LABEL "com.datadoghq.ad.init_configs"='[{}]'
LABEL "com.datadoghq.ad.instances"='[{"stats_url": "http://%%host%%:8001/stats"}]'