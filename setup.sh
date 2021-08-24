#!/bin/bash

echo "------------------->>" ;
echo "------------------->>" ;
if [ ! -d "MagicMirror" ]; then
  echo "------------------->>" ;
  echo "------------------->>" ;
  echo "------------------->> INSTALLING MagicMirror" ;
  git clone https://github.com/MichMich/MagicMirror ;
  cd ./MagicMirror ;
  git config pull.rebase false ;
  echo "------------------->> INSTALLING DEPENDENCIES FOR MagicMirror" ;
  npm i ;
else
  echo "------------------->>" ;
  echo "------------------->>" ;
  echo "------------------->> UPDATING MagicMirror" ;
  cd ./MagicMirror ;
  git pull ;
  echo "------------------->> UPDATING DEPENDENCIES FOR MagicMirror" ;
  npm i ;
fi

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> Updating config/config.js" ;
echo "------------------->>" ;
echo "------------------->>" ;
cp ../MirrorSetup/config.js ./config/config.js ;
cd ./modules ;

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> MMM-FlipClock" ;

if [ ! -d "MMM-FlipClock" ]; then
  echo "------------------->> MMM-FlipClock NOT INSTALLED" ;
  echo "------------------->> INSTALLING MMM-FlipClock" ;
  git clone https://github.com/MarcLandis/MMM-FlipClock.git ;
  cd MMM-FlipClock ;
  git config pull.rebase false ;
  echo "------------------->> INSTALLING DEPENDENCIES FOR MMM-FlipClock" ;
  npm i ;
  echo "------------------->> MMM-FlipClock INSTALLED" ;
  cd .. ;
else
  echo "------------------->> MMM-FlipClock PRESENT" ;
  cd MMM-FlipClock ;
  echo "------------------->> UPDATING MMM-FlipClock" ;
  git pull ;
  echo "------------------->> UPDATING DEPENDENCIES FOR MMM-FlipClock" ;
  npm i ;
  cd .. ;
fi

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> Done with MMM-FlipClock" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->>" ;

# --------------------------------------------------------------------------------------------------------------#

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> MMM-OneCallWeather" ;

if [ ! -d "MMM-OneCallWeather" ]; then
  echo "------------------->> MMM-OneCallWeather NOT INSTALLED" ;
  echo "------------------->> INSTALLING MMM-OneCallWeather" ;
  git clone https://github.com/Captsi/MMM-OneCallWeather.git;
  cd MMM-OneCallWeather ;
  git config pull.rebase false ;
  # echo "------------------->> INSTALLING DEPENDENCIES FOR MMM-OneCallWeather" ;
  # npm i ;
  echo "------------------->> MMM-OneCallWeather INSTALLED" ;
  cd .. ;
else
  echo "------------------->> MMM-OneCallWeather PRESENT" ;
  cd MMM-OneCallWeather ;
  echo "------------------->> UPDATING MMM-OneCallWeather" ;
  git pull ;
  echo "------------------->> UPDATING DEPENDENCIES FOR MMM-OneCallWeather" ;
  npm i ;
  cd .. ;
fi

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> Done with MMM-OneCallWeather" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->>" ;

# --------------------------------------------------------------------------------------------------------------#

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> MMM-Nightscout" ;

if [ ! -d "MMM-Nightscout" ]; then
  echo "------------------->> MMM-Nightscout NOT INSTALLED" ;
  echo "------------------->> INSTALLING MMM-Nightscout" ;
  git clone https://github.com/GoudekettingRM/MMM-Nightscout.git ;
  cd MMM-Nightscout ;
  git config pull.rebase false ;
  echo "------------------->> INSTALLING DEPENDENCIES FOR MMM-Nightscout" ;
  npm i ;
  echo "------------------->> MMM-Nightscout INSTALLED" ;
  cd .. ;
else
  echo "------------------->> MMM-Nightscout PRESENT" ;
  cd MMM-Nightscout ;
  echo "------------------->> UPDATING MMM-Nightscout" ;
  git pull ;
  echo "------------------->> UPDATING DEPENDENCIES FOR MMM-Nightscout" ;
  npm i ;
  cd .. ;
fi

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> Done with MMM-Nightscout" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->>" ;

# --------------------------------------------------------------------------------------------------------------#

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> MMM-SystemStats" ;

if [ ! -d "MMM-SystemStats" ]; then
  echo "------------------->> MMM-SystemStats NOT INSTALLED" ;
  echo "------------------->> INSTALLING MMM-SystemStats" ;
  git clone https://github.com/BenRoe/MMM-SystemStats.git ;
  cd MMM-SystemStats ;
  git config pull.rebase false ;
  echo "------------------->> INSTALLING DEPENDENCIES FOR MMM-SystemStats" ;
  npm i ;
  echo "------------------->> MMM-SystemStats INSTALLED" ;
  cd .. ;
else
  echo "------------------->> MMM-SystemStats PRESENT" ;
  cd MMM-SystemStats ;
  echo "------------------->> UPDATING MMM-SystemStats" ;
  git pull ;
  echo "------------------->> UPDATING DEPENDENCIES FOR MMM-SystemStats" ;
  npm i ;
  cd .. ;
fi

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> Done with MMM-SystemStats" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> DONE INSTALLING, HAVE FUN :D" ;

cd .. ;
