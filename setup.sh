#!/bin/bash

git clone https://github.com/MichMich/MagicMirror ;

cd ./MagicMirror ; npm i ;

cp ../MirrorSetup/config.js ./config/config.js ;

cd ./modules ;

git clone https://github.com/MarcLandis/MMM-FlipClock.git ; cd MMM-FlipClock ; npm i ; cd .. ;

git clone https://github.com/htilburgs/MMM-MyDutchWeather.git ; cd MMM-MyDutchWeather ; npm i ; cd .. ;

git clone https://github.com/GoudekettingRM/MMM-Nightscout.git ; cd MMM-Nightscout ; npm i ; cd .. ;

https://github.com/BenRoe/MMM-SystemStats.git ; cd MMM-SystemStats ; npm i ; cd .. ;

cd .. ;
