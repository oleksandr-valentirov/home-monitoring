# Home monitoring
This repo is a starting point to set up a monitoring over a home lab.

## Server
Setup is tested on a Raspberry Pi 5 8Gb version, and docker-compose.yml contains node_exporter and prometheus services to visualise RPi5 runtime metrics with [Node Exporter dashboard](https://grafana.com/grafana/dashboards/1860-node-exporter-full/).

### Configuring
<p>Check that docker is enabled on startup<br>
<code>systemctl is-enabled docker</code><br>
and enable it if doesn't<br>
<code>sudo systemctl enable docker</code><br>
Than execute<br>
<code>sudo docker-compose up -d</code><br>
to create services.</p>

## Traffic monitoring
Traffic monitoring is based on analysis of Traffic Flow data from the Mikrotik router - aggregating it with pmacct, performing GeoIP enrichment, posting these metrics in JSON format to InfluxDB through telegraf, and visualising with Grafana and [custom pmacct dashboard](/pmacct/grafana_dashboard.json).

Also there is a pi-hole service to performn traffic filtering.
