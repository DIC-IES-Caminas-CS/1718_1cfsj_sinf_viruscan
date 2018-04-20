#!/bin/bash
source tools.sh
clear

HEIGHT=20
WIDTH=70
CHOICE_HEIGHT=8
BACKTITLE="Backtitle here"
TITLE="CLAMAV"
MENU="Choose one of the following options:"

OPTIONS=(1 "Install"
         2 "Update database"
         3 "Scan directory, write one directory and press enter."
         4 "Scan all"
         5 "Exit")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            #echo "You chose Scanner all"
            sudo apt-get install clamav clamav-daemon -y > /dev/null 2> /dev/null
            ;;
        2)
            #echo "You chose Option 2"
            sudo freshclam
            ;;
        3)
            #echo "You chose Option 3"
            directory=$(provide_dir)
            clamscan $directory
            ;;
        4)
            #echo "You chose Option 4"
            sudo clamscan -r /
            ;;
        5 )

            exit 1
            ;;
        * )
            #echo "sorry, wrong option"
            exit 1
            ;;
esac
