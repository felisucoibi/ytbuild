#!/bin/bash
# JUST A SMALL SCRIPT TO ONE CLICK UBUNTU BUILDING OF YOUTUBE-DL BY ghibli

if [ ! -d "./youtube-dl" ]; then
  sudo apt-get install git pandoc zip
  mkdir ./youtube-dl
  cd ./youtube-dl
  git clone https://github.com/felisucoibi/youtube-dl.git master

  cd ..
fi
cd ./youtube-dl/master
git pull https://github.com/felisucoibi/youtube-dl.git master
# git push origin master
make clean
make
sudo make install
