packer {
  required_plugins {
    lxd = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/lxd"
    }
  }
}

source "lxd" "ubuntu" {
  image = "ubuntu:xenial"
}

build {
  name = "pihole-lxd"
  sources = [
    "source.lxd.ubuntu"
  ]
  provisioner "shell" {
      inline = [
          "echo Installing Pi-Hole",
          "curl -sSL https://install.pi-hole.net | bash"
          ]
  }
}