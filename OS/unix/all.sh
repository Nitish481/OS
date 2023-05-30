#!/bin/bash
pwd=$(pwd)
while true; do
    echo -e "\nMENU:"
    echo "1. Assignment 1"
    echo "2. Assignment 2"
    echo "3. Assignment 3"
    echo "4. Exit"

    read -p "Enter your choice: " choice
    echo -e "\nYour choice is $choice"

    case $choice in

    1)
        cd $pwd/set-1
        while true; do
            echo -e "\nAssignment 1 scripts:"
            ls *.sh

            echo -e "\nEnter 0 to go back to previous menu"
            read -p "Enter your choice: " choice1
            echo

            case $choice1 in

            1)
                bash 1.sh
                ;;

            2)
                bash 2.sh
                ;;

            3)
                bash 3.sh
                ;;

            4)
                bash 4.sh
                ;;

            5)
                bash 5.sh
                ;;

            0)
                break
                ;;

            *)
                echo "Invalid choice!"
                ;;
            esac
        done
        ;;

    2)
        cd $pwd/set-2
        while true; do
            echo -e "\nAssignment 2 scripts:"
            ls *.sh

            echo -e "\nEnter 0 to go back to previous menu"
            read -p "Enter your choice: " choice2
            echo

            case $choice2 in

            1)
                bash 1.sh
                ;;

            2)
                bash 2.sh
                ;;

            3)
                bash 3.sh
                ;;

            4)
                bash 4.sh
                ;;

            5)
                read -p "Enter directory: " directory
                bash 5.sh $directory
                ;;

            0)
                break
                ;;

            *)
                echo "Invalid choice!"
                ;;
            esac
        done
        ;;

    3)
        cd $pwd/set-3
        while true; do
            echo -e "\nAssignment 3 scripts:"
            ls *.sh

            echo -e "\nEnter 0 to go back to previous menu"
            read -p "Enter your choice: " choice3
            echo

            case $choice3 in

            1)
                bash 1.sh
                ;;

            2)
                bash 2.sh
                ;;

            3)
                bash 3.sh
                ;;

            4)
                bash 4.sh
                ;;

            5)
                bash 5.sh
                ;;

            6)
                bash 6.sh
                ;;

            0)
                break
                ;;

            *)
                echo "Invalid choice!"
                ;;
            esac
        done
        ;;

    4)
        echo "Exiting!"
        break
        ;;

    *)
        echo "Invalid choice!"
        ;;
    esac
done
cd $pwd
