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
      "curl -sSL https://install.pi-hole.net | bash",
    ]
  }
/*
  provisioner "file" {
    source      = "setupVars.conf"
    destination = "/etc/pihole/setupVars.conf"
  }

  provisioner "shell" {
    inline = [
      "pihole -r",
    ]
  }

  provisioner "shell" {
    inline = [
      "echo Setting up Unbound for Recursive DNS",
      "sudo apt install unbound",
    ]
  }

  provisioner "file" {
    source      = "Unbound.conf"
    destination = "/etc/unbound/unbound.conf.d/pi-hole.conf"
  }

  provisioner "shell" {
    inline = [
      "sudo service unbound restart",
    ]
  } */
}
