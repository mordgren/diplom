resource "yandex_compute_instance" "k8s-master" {
  name        = "k8s-master"
  zone        = "ru-central1-a"

  resources {
    cores  = 2
    memory = 6
  }

  boot_disk {
    initialize_params {
      image_id = "${data.yandex_compute_image.ubnt.id}"
      size = 20
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.sf-subnet.id}"
    nat = true
    ip_address = "10.7.0.101"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "k8s-app" {
  name        = "k8s-app"
  zone        = "ru-central1-a"

  resources {
    cores  = 2
    memory = 6
  }

  boot_disk {
    initialize_params {
      image_id = "${data.yandex_compute_image.ubnt.id}"
      size = 20
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.sf-subnet.id}"
    nat = true
    ip_address = "10.7.0.102"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_compute_instance" "srv" {
  name        = "srv"
  zone        = "ru-central1-a"

  resources {
    cores  = 2
    memory = 6
  }

  boot_disk {
    initialize_params {
      image_id = "${data.yandex_compute_image.ubnt.id}"
      size = 30
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.sf-subnet.id}"
    nat = true
    ip_address = "10.7.0.103"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
