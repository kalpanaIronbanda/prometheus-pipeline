#!/bin/bash
yum update -y
sudo su -
cd /opt
wget https://github.com/prometheus/prometheus/releases/download/v2.39.1/prometheus-2.39.1.linux-amd64.tar.gz
tar -xf prometheus-2.39.1.linux-amd64.tar.gz
ln -s /opt/prometheus-2.39.1.linux-amd64.tar.gz prometheus
cd prometheus/
./prometheus
