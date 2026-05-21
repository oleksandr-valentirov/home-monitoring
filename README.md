# Home monitoring
This repo is a starting point to set up a monitoring over a home lab.

## Server
Setup is tested on a Raspberry Pi 5 8Gb version, and docker-compose.yml contains node_exporter and prometheus services to visualise RPi5 runtime metrics with [Node Exporter dashboard](https://grafana.com/grafana/dashboards/1860-node-exporter-full/).

## Traffic monitoring
Traffic monitoring is based on analysis of Traffic Flow data from the Mikrotik router - aggregating it with pmacct, performing GeoIP enrichment, posting these metrics in JSON format to InfluxDB through telegraf, and visualising with Grafana and [custom pmacct dashboard](/pmacct/grafana_dashboard.json).
