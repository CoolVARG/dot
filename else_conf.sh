#!/bin/bash

sudo cp -R conf/sddm/* /usr/share/sddm/themes/
sudo cp conf/default.conf /usr/lib/sddm/sddm.conf.d/default.conf
sudo systemctl enable sddm.service

sudo cp conf/environment /etc/environment

sudo localedef -c -i ru_RU -f CP1251 ru_RU.CP1251
