#!/bin/bash

echo "" ; echo "" ; echo "" ;

if [ ! -d "MagicMirror" ]; then
  echo "------------------->>" ;
  echo "------------------->>" ;
  echo "------------------->> INSTALLING MagicMirror" ;
  git clone https://github.com/MichMich/MagicMirror ;
  git config pull.rebase false ;
  cd ./MagicMirror ;
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
echo "" ; echo "" ; echo "" ;

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> Updating config/config.js" ;
echo "------------------->>" ;
echo "------------------->>" ;
cp ../MirrorSetup/config.js ./config/config.js ;
cd ./modules ;



echo "" ; echo "" ; echo "" ;
echo "------------------->> MMM-FlipClock" ;

if [ ! -d "MMM-FlipClock" ]; then
  echo "------------------->> MMM-FlipClock NOT INSTALLED" ;
  echo "------------------->> INSTALLING MMM-FlipClock" ;
  git clone https://github.com/MarcLandis/MMM-FlipClock.git ;
  git config pull.rebase false ;
  cd MMM-FlipClock ;
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
echo "" ; echo "" ; echo "" ;

# --------------------------------------------------------------------------------------------------------------#

echo "" ; echo "" ; echo "" ;
echo "------------------->> MMM-MyDutchWeather" ;

if [ ! -d "MMM-MyDutchWeather" ]; then
  echo "------------------->> MMM-MyDutchWeather NOT INSTALLED" ;
  echo "------------------->> INSTALLING MMM-MyDutchWeather" ;
  git clone https://github.com/htilburgs/MMM-MyDutchWeather.git ;
  git config pull.rebase false ;
  cd MMM-MyDutchWeather ;
  echo "------------------->> INSTALLING DEPENDENCIES FOR MMM-MyDutchWeather" ;
  npm i ;
  echo "------------------->> MMM-MyDutchWeather INSTALLED" ;
  cd .. ;
else
  echo "------------------->> MMM-MyDutchWeather PRESENT" ;
  cd MMM-MyDutchWeather ;
  echo "------------------->> UPDATING MMM-MyDutchWeather" ;
  git pull ;
  echo "------------------->> UPDATING DEPENDENCIES FOR MMM-MyDutchWeather" ;
  npm i ;
  cd .. ;
fi

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> Done with MMM-MyDutchWeather" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "" ; echo "" ; echo "" ;

# --------------------------------------------------------------------------------------------------------------#

echo "" ; echo "" ; echo "" ;
echo "------------------->> MMM-Nightscout" ;

if [ ! -d "MMM-Nightscout" ]; then
  echo "" ; echo "" ; echo "------------------->> MMM-Nightscout NOT INSTALLED" ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING MMM-Nightscout" ;
  git clone https://github.com/GoudekettingRM/MMM-Nightscout.git ;
  git config pull.rebase false ;
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

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> Done with MMM-Nightscout" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "" ; echo "" ; echo "" ;

# --------------------------------------------------------------------------------------------------------------#

echo "" ; echo "" ; echo "" ;
echo "------------------->> MMM-SystemStats" ;

if [ ! -d "MMM-SystemStats" ]; then
  echo "" ; echo "" ; echo "------------------->> MMM-SystemStats NOT INSTALLED" ;
  echo "" ; echo "" ; echo "------------------->> INSTALLING MMM-SystemStats" ;
  git clone https://github.com/BenRoe/MMM-SystemStats.git ;
  git config pull.rebase false ;
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

echo "------------------->>" ;
echo "------------------->>" ;
echo "------------------->> Done with MMM-SystemStats" ;
echo "------------------->>" ;
echo "------------------->>" ;
echo "" ; echo "" ; echo "" ;


echo "------------------->> DONE INSTALLING, HAVE FUN :D" ;

cd .. ;
