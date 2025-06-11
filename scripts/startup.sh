#!/bin/bash
sudo yum update -y
sudo yum install python3 -y
sudo python3 -m http.server 8000 &