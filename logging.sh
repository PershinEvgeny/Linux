#!/bin/bash

for ((i=1; i <= 6; i++))
do
date | who -a | uptime >> /var/log/testlog
sleep 10
done