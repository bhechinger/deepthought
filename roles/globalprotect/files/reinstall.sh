#!/bin/bash

echo "Uninstalling Global Protect"
sudo dpkg -r globalprotect

echo "Installing Global Protect"
sudo dpkg -i /opt/globalprotect/GlobalProtect_UI_deb-5.3.0.0-32.deb

echo "Copying config file"
cp /opt/globalprotect/pangpa.xml /home/wonko/.GlobalProtect/pangpa.xml

echo "Reloading systemctl"
systemctl --user daemon-reload
