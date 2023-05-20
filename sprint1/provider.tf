terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.89.0"
    }
  }
}

provider "yandex" {
  token                    = "***"
  cloud_id                 = "***"
  folder_id                = "***"
  zone                     = "***"
}