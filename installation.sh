#!/bin/bash
yum update -y
sudo su -
cd /opt
wget https://github.com/prometheus/prometheus/releases/download/v2.44.0/prometheus-2.44.0.linux-amd64.tar.gz
tar -xzvf prometheus-2.44.0.linux-amd64.tar.gz
rm -rf prometheus-2.44.0.linux-amd64.tar.gz
ln -s /opt/prometheus-2.44.0.linux-amd64 prometheus
cd prometheus
nohup ./prometheus &
