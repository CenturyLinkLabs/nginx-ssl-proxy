#!/bin/bash
cp /usr/src/docker-registry.conf /tmp/docker-registry.conf
xyz=$(sed "s/<docker_registry_ip>/${REGISTRY_PORT_5000_TCP_ADDR}/g;s/<public_ip>/${PUBLIC_IP_ADDR}/g" /tmp/docker-registry.conf)
echo "$xyz" > /etc/nginx/conf.d/docker-registry.conf
nginx -g 'daemon off;'
