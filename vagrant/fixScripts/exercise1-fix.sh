#!/bin/bash
#add fix to exercise1 here
echo "nameserver 10.0.2.3" | sudo tee /etc/resolv.conf 
sudo reboot
