packer {
  required_plugins {
    lxd = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/lxd"
    }
  }
}

variable "webadmin_password" {
  type    = string
  default = "P1Hole"
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
      "curl -sSL https://install.pi-hole.net | bash",
      "pihole -a -p ${var.webadmin_password}",
    ]
  }

  provisioner "shell" {
    inline = [
      "echo Setting up Unbound for Recursive DNS",
      "sudo apt install unbound",
    ]
  }

  provisioner "file" {
    source      = "pi-hole.conf"
    destination = "/etc/unbound/unbound.conf.d/pi-hole.conf"
  }

  provisioner "shell" {
    inline = [
      "sudo service unbound restart",
    ]
  }
}