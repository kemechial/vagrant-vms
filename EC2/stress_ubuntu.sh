#!/bin/bash

# Ubuntu için STRESS Kurulumu ve Komutları

# Paket listesini güncelle ve güncelleme paketlerini kur
sudo apt update
sudo apt upgrade -y

# stress paketini yükle
sudo apt install stress -y

# Stress testi komutu
stress -c 4 -t 60 && sleep 60 && stress -c 4 -t 60 && sleep 60 && stress -c 4 -t 360 && sleep 60 && stress -c 4 -t 460 && sleep 30 && stress -c 4 -t 360 && sleep 60

echo "Stress testi tamamlandı!"
