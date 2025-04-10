#!/bin/bash
yum install git -y
git clone https://github.com/cs220s25/wright_cicd /wright_cicd
cd /wright_cicd
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt 
cp web_counter.service /etc/systemd/system
systemctl enable web_counter.service 
systemctl start web_counter.service

