echo -e "\n===========================================================\n"
echo -e "\n===========================================================\n"
echo -e "\n===========================================================\n"
echo -e "\n===========================================================\n"
echo -e "\n===========================================================\n"
echo -e "\n================ CH 340 DRIVER INSTALLER ==================\n"
echo -e "\n===========================================================\n"
echo -e "\n====================Made for EL-ROBO=======================\n"
echo -e "\n===========================================================\n"
echo -e "\n===============// Script Author- JAISHNAV \\===============\n"
echo -e "\n===========================================================\n"
echo -e "\n===========================================================\n"
echo -e "\n==========//** Copyright  (C)  WCH  2002-2013 **\\=========\n"
echo -e "\n===========================================================\n"
echo -e "\n====Drivers from: https://github.com/juliagoda/CH341SER====\n"
echo -e "\n===========================================================\n"
echo -e "\n===========================================================\n"
echo -e "\n===========================================================\n"
echo -e "\n===========================================================\n"


echo -e "\n=============== Welcome To The Completely Automated CH 340 DRIVER INSTALLER===================\n"
echo -e "\n==============================================================================================\n"
echo -e "\n======== Please Make Sure That your CH340 Device Is Connected During The Whole Proccess=======\n"
sleep 10
read -p "Please press Y to proceed " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo -e "\n============= Installation Aborted ===================\n"
    exit
fi
  
  make clean
  make
  sudo make load
  sudo rmmod ch341
  lsmod | grep ch34
  sleep 10   
  echo -e "\n=============== Unplug and Plug your CH340 Device========================\n"
  echo -e "\n=========================================================================\n"
  echo -e "\n====================Wait time: 15 seconds================================\n"
  sleep 15
  dmesg
  echo -e "\n=============== Drivers Installed, Applying Permissions===================\n"
  sudo usermod -a -G dialout $username 
  sudo chmod a+rw /dev/ttyUSB0
  echo -e "\n======================= Installation Done =================================\n"
  echo -e "\n================= ©2020 RB INTERNATIONAL NETWORK ==========================\n"

