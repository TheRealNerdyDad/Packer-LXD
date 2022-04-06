# Packer-LXD
Discovering what Packer can do

This is a little project of mine to create reusable LXD containers for services that I typically use in my ProxMox virtual lab.

## Generic
Generic is simply what it is.   It is simply an ubuntu container.

## Pi-Hole (Validated, but untested)
Pi-Hole is the AD-sucking appliance that we all know of.  I utilized some of Craft Computings instructions on how to add Unbound to make it a recursive DNS.   His video can be found [here](https://youtu.be/FnFtWsZ8IP0).   An answer file called `setupVars.conf` is an answer file to setup Pi-Hole without having to stop and ask you questions.   In there, you can also set your password.   No, that is not my password in that file.   It was copied from the [Pi-Hole FAQ](https://discourse.pi-hole.net/t/what-is-setupvars-conf-and-how-do-i-use-it/3533).   After the build, you will still need to remote into the container to disable Forwarding DNS in PiHole, and set Custom DNS in PiHole - 127.0.0.1#5335

## Plex (Planned, stay tuned...)

## Nextcloud (Planned, stay tuned...)

## GitLab (Planned, stay tuned...)
