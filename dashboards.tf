resource "grafana_dashboard" "elasticsearch" {
  provider = grafana.cloud

  config_json = file("${path.module}/266_rev4.json")
  folder      = grafana_folder.ElasticSearch.id
}
resource "grafana_dashboard" "influxdb" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/influxdb", "707_rev8.json")
  config_json = file("${path.module}/dashboards/influxdb/${each.key}")
  folder      = grafana_folder.InfluxDB.id
}

resource "grafana_dashboard" "aws" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/aws", "1150_rev2.json")
  config_json = file("${path.module}/dashboards/aws/${each.key}")
  folder      = grafana_folder.AWS.id
}
