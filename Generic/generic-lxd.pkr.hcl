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
  name = "generic-lxd"
  sources = [
    "source.lxd.ubuntu"
  ]
}