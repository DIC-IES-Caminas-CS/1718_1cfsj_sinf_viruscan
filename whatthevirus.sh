#!/bin/bash
# Simple script to launch antivirus tools

# Include functions from other file
source tools.sh

# Main body
Action=$(simple_menu)
case $Action in
  1 )
    freshclam
    ;;

  2 )
    Directory=$(provide_dir)
    clamscan $directory
    ;;

  * )
    echo "sorry, wrong option"
    exit 1
    ;;

  esac

  exit 0
