resource "grafana_dashboard" "elasticsearch" {
      provider = grafana.cloud

      config_json = file("${path.module}/266_rev4.json")
      folder      = grafana_folder.ElasticSearch.id
    }
    resource "grafana_dashboard" "influxdb" {
      provider = grafana.cloud

      config_json = file("${path.module}/1150_rev2.json")
      folder      = grafana_folder.InfluxDB.id
    }

    resource "grafana_dashboard" "aws" {
      provider = grafana.cloud

      config_json = file("${path.module}/707_rev8.json")
      folder      = grafana_folder.AWS.id
    }
