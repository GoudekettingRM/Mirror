#!/bin/bash

git clone https://github.com/MichMich/MagicMirror ;

cd ./MagicMirror ; npm i ;

cp ../MirrorSetup/config.js ./config/config.js ;

cd ./modules ;

if [ ! -d "MMM-FlipClock" ]; then
  echo "" ; echo "" ; echo "------------------->> MMM-FlipClock NOT INSTALLED" ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING MMM-FlipClock" ;
  git clone https://github.com/MarcLandis/MMM-FlipClock.git ;
  cd MMM-FlipClock ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING DEPENDENCIES FOR MMM-FlipClock" ;
  npm i ;
  echo "" ; echo "" ; echo "------------------->> MMM-FlipClock INSTALLED" ;
  cd .. ;
else
  echo "" ; echo "" ; echo "------------------->> MMM-FlipClock PRESENT" ;
  cd MMM-FlipClock ;
  echo "" ; echo "" ; echo "------------------->> UPDATING MMM-FlipClock" ;
  git pull ;
  echo "" ; echo "" ; echo "------------------->> UPDATING DEPENDENCIES FOR MMM-FlipClock" ;
  npm i ;
  cd .. ;
fi

echo "" ; echo "" ; echo "" ;
echo "------------------->> Done with MMM-FlipClock" ;
echo "" ; echo "" ; echo "" ;

if [ ! -d "MMM-MyDutchWeather" ]; then
  echo "" ; echo "" ; echo "------------------->> MMM-MyDutchWeather NOT INSTALLED" ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING MMM-MyDutchWeather" ;
  git clone https://github.com/htilburgs/MMM-MyDutchWeather.git ;
  cd MMM-MyDutchWeather ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING DEPENDENCIES FOR MMM-MyDutchWeather" ;
  npm i ;
  echo "" ; echo "" ; echo "------------------->> MMM-MyDutchWeather INSTALLED" ;
  cd .. ;
else
  echo "" ; echo "" ; echo "------------------->> MMM-MyDutchWeather PRESENT" ;
  cd MMM-MyDutchWeather ;
  echo "" ; echo "" ; echo "------------------->> UPDATING MMM-MyDutchWeather" ;
  git pull ;
  echo "" ; echo "" ; echo "------------------->> UPDATING DEPENDENCIES FOR MMM-MyDutchWeather" ;
  npm i ;
  cd .. ;
fi

echo "" ; echo "" ; echo "" ;
echo "------------------->> Done with MMM-MyDutchWeather" ;
echo "" ; echo "" ; echo "" ;

if [ ! -d "MMM-Nightscout" ]; then
  echo "" ; echo "" ; echo "------------------->> MMM-Nightscout NOT INSTALLED" ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING MMM-Nightscout" ;
  git clone https://github.com/GoudekettingRM/MMM-Nightscout.git ;
  cd MMM-Nightscout ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING DEPENDENCIES FOR MMM-Nightscout" ;
  npm i ;
  echo "" ; echo "" ; echo "------------------->> MMM-Nightscout INSTALLED" ;
  cd .. ;
else
  echo "" ; echo "" ; echo "------------------->> MMM-Nightscout PRESENT" ;
  cd MMM-Nightscout ;
  echo "" ; echo "" ; echo "------------------->> UPDATING MMM-Nightscout" ;
  git pull ;
  echo "" ; echo "" ; echo "------------------->> UPDATING DEPENDENCIES FOR MMM-Nightscout" ;
  npm i ;
  cd .. ;
fi

echo "" ; echo "" ; echo "" ;
echo "------------------->> Done with MMM-Nightscout" ;
echo "" ; echo "" ; echo "" ;

if [ ! -d "MMM-SystemStats" ]; then
  echo "" ; echo "" ; echo "------------------->> MMM-SystemStats NOT INSTALLED" ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING MMM-SystemStats" ;
  git clone https://github.com/BenRoe/MMM-SystemStats.git ;
  cd MMM-SystemStats ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING DEPENDENCIES FOR MMM-SystemStats" ;
  npm i ;
  echo "" ; echo "" ; echo "------------------->> MMM-SystemStats INSTALLED" ;
  cd .. ;
else
  echo "" ; echo "" ; echo "------------------->> MMM-SystemStats PRESENT" ;
  cd MMM-SystemStats ;
  echo "" ; echo "" ; echo "------------------->> UPDATING MMM-SystemStats" ;
  git pull ;
  echo "" ; echo "" ; echo "------------------->> UPDATING DEPENDENCIES FOR MMM-SystemStats" ;
  npm i ;
  cd .. ;
fi

echo "" ; echo "" ; echo "" ;
echo "------------------->> Done with MMM-SystemStats" ;
echo "" ; echo "" ; echo "" ;

cd .. ;
