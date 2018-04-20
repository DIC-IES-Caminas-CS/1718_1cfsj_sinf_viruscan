#!/bin/bash

#Muestra el menu general
function _menuPrincipal()
{

    echo "1) menu1"
    echo "2) menu2"
    echo "3) Salir"
    echo
    echo -n "Indica una opcion: "

}

function _submenu1()
{

    echo
    echo "1) Submenu1-1"
    echo "2) Submenu1-2"
    echo "3) Salir"
    echo
    echo -n "Indica una opcion: "

}

function _submenu2()
{

    echo
    echo "1) Submenu2-1"
    echo "2) Submenu2-2"
    echo "3) Salir"
    echo
    echo -n "Indica una opcion: "

}

opc=0
until [ $opc -eq 3 ]
do
    case $opc in
        1)
            opc1=0
            until [ $opc1 -eq 3 ]
            do
                case $opc1 in
                    1)
                        echo "menu 1 submenu 1"
                        ;;
                    2)
                        echo "menu 1 submenu 2"
                        ;;
                    *)
                        _submenu1
                        ;;
                esac
                read opc1
            done
            _menuPrincipal
            ;;

        2)
            opc2=0
            until [ $opc2 -eq 3 ]
            do
                case $opc2 in
                    1)
                        echo "menu 2 submenu 1"
                        ;;
                    2)
                        echo "menu 2 submenu 2"
                        ;;
                    *)
                        _submenu2
                        ;;
                esac
                read opc2
            done
            _menuPrincipal
            ;;
        *)
            _menuPrincipal
            ;;
    esac
    read opc
done
