# File that contains functions for antivirus launcher whatthevirus.sh
# don not execute it directly
# Cambio
simple_menu () {
  echo "Please, write an option:"
  echo "1 .- Install"
  echo "2 .- Refresh virus database"
  echo "3 .- Scan a directory"
  echo "4 .- Scan all"
  echo "5 .- Exit"

echo "Introduce your option: "
  read Option

#exit $Option
}

provide_dir () {
  echo "Please, provide a directory to scan"
  read $Dir
#exit $Dir
}
