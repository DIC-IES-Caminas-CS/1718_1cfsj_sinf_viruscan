#!/bin/bash
# Simple script to launch antivirus tools

# Include functions from other file
source tools.sh
# Main body

clear
while true
do
  simple_menu
  case $Option in
    1 )
      echo "1 .- Install"
      sudo apt-get install clamav clamav-daemon -y
      ;;

    2 )
      echo "3 .- Scan all"
      sudo freshclam
      ;;

    3 )
      directory=$(provide_dir)
      clamscan $directory
      ;;

    5 )
      echo "Exit"
      exit 1
      ;;

    * )
      echo "sorry, wrong option"
      exit 1
      ;;

  esac
done
exit 0
