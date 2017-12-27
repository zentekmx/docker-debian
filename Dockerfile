FROM debian:jessie
MAINTAINER Marco A Rojas <marco.rojas@zentek.com.mx>

RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf \
 && echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y curl ca-certificates apt-transport-https cron busybox supervisor

RUN busybox --install

RUN apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# End of file
# vim: set ts=2 sw=2 noet:
