resource "yandex_vpc_network" "sf-net" {
  name = "sf-net"
}

resource "yandex_vpc_subnet" "sf-subnet" {
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.sf-net.id}"
  v4_cidr_blocks = ["10.7.0.0/24"]
}