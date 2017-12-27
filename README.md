# Debian docker image

The image is built on top of the debian:jessie image and installs the following extra packages selected based on the criteria of common use:

- curl
- ca-certificates
- cron
- busybox
- supervisor

Additionally apt is configured to NOT install recommended and suggested packages.
