# Packer-LXD
Discovering what Packer can do

This is a little project of mine to create reusable LXD containers for services that I typically use in my ProxMox virtual lab.

## Generic
Generic is simply what it is.   It is simply an ubuntu container.

## Pi-Hole (Validated, but untested)
Pi-Hole is the AD-sucking appliance that we all know of.  I utilized some of Craft Computings instructions on how to add Unbound to make it a recursive DNS.   His video can be found [here](https://youtu.be/FnFtWsZ8IP0).   The default password for the webadmin is set to `P1Hole`.   This can be changed at build by usual variable overrides.   After the build, you will still need to remote into the container to disable Forwarding DNS in PiHole, and set Custom DNS in PiHole - 127.0.0.1#5335

## Plex (Planned, stay tuned...)

## Nextcloud (Planned, stay tuned...)

## GitLab (Planned, stay tuned...)
