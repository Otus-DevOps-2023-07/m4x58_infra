terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

#provider "yande" {
# token     = "yHn_SAXcQ8uebbr-LBXDN2x3mnQ"
#cloud_id  = "b1gfnnr7dn30ornsm35s"
#folder_id = "b1g5q2lccug3i0j92ksh"
#zone      = "ru-central1-a"
#}
