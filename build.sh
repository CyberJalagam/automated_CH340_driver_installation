echo -e "\n=====================================================================================================================================\n"
echo -e "\n========================================= CH 340 DRIVER INSTALLER ===================================================================\n"
echo -e "\n=====================================================================================================================================\n"
echo -e "\n=============================================Made for EL-ROBO========================================================================\n"
echo -e "\n=====================================================================================================================================\n"
echo -e "\n=======================================// Script Author- JAISHNAV \\=================================================================\n"
echo -e "\n=====================================================================================================================================\n"
echo -e "\n=====================================================================================================================================\n"
echo -e "\n==================================//** Copyright  (C)  WCH  2002-2013 **\\===========================================================\n"
echo -e "\n=====================================================================================================================================\n"
echo -e "\n============================Drivers from: https://github.com/juliagoda/CH341SER======================================================\n"
echo -e "\n=====================================================================================================================================\n"


echo -e "\n======================= Welcome To The Completely Automated CH 340 DRIVER INSTALLER =================================================\n"
echo -e "\n=====================================================================================================================================\n"
echo -e "\n=================== Please Make Sure That your CH340 Device Is Connected During The Whole Proccess ==================================\n"
sleep 10
read -p "Please press Y to proceed " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo -e "\n========================================== Installation Aborted =================================================================\n"
    exit
fi
  
  make clean
  make
  sudo make load
  sudo rmmod ch341
  lsmod | grep ch34
  echo -e "\n====================================== Unplug and Plug your CH340 Device===========================================================\n"
  echo -e "\n===================================================================================================================================\n"
  read -p "Please press Y to proceed " -n 1 -r
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
      echo -e "\n==================================== Wait Time Activated- 30 seconds ==========================================================\n"
      sleep 30
      dmesg
      echo -e "\n======================= Check if you get the below result on the output given above ===========================================\n"
      echo -e "[  xxx] ch34x ttyUSB0: ch34x converter now disconnected from ttyUSB0"
      echo -e "[  xxx] ch34x 3-2:1.0: device disconnected"
      read -p "Please press Y if the output is same ( only on the last 2 lines) " -n 1 -r
      if [[ ! $REPLY =~ ^[Yy]$ ]]
      then
          echo -e "\n==================================== You have done something wrong ========================================================\n"
          echo -e "\n======================================= Installation Aborted ==============================================================\n"
          exit     
      fi
        USERNAME=`whoami`
        echo -e "\n================================= Drivers Installed, Applying Permissions====================================================\n"
        sudo usermod -aG dialout "$USERNAME" 
        sudo chmod a+rw /dev/ttyUSB0
        echo -e "\n======================================== Installation Done ==================================================================\n"
        echo -e "\n=================================== ©2020 RB INTERNATIONAL NETWORK ==========================================================\n"
        exit
  fi
      dmesg
      echo -e "\n========================== Check if you get the below result on the output given above ========================================\n"
      echo -e "[  xxx] ch34x ttyUSB0: ch34x converter now disconnected from ttyUSB0"
      echo -e "[  xxx] ch34x 3-2:1.0: device disconnected"
      read -p "Please press Y if the output is same ( only on the last 2 lines) " -n 1 -r
      if [[ ! $REPLY =~ ^[Yy]$ ]]
      then
          echo -e "\n==================================== You have done something wrong ========================================================\n"
          echo -e "\n======================================= Installation Aborted ==============================================================\n"
          exit     
      fi
        USERNAME=`whoami`
        echo -e "\n================================== Drivers Installed, Applying Permissions ==================================================\n"
        sudo usermod -aG dialout "$USERNAME" 
        sudo chmod a+rw /dev/ttyUSB0
        echo -e "\n============================================ Installation Done ==============================================================\n"
        echo -e "\n==============----------------------=== ©2020 RB INTERNATIONAL NETWORK =========----------------------------=================\n"
        exit

