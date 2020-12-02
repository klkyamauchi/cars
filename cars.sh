#! /bin/bash
#cars.sh
#Kaitlynn Yamauchi

CONT=1

while [ $CONT -eq 1 ]
do
	echo "Type the number 1 to ENTER a car"
	echo "Type the number 2 to SHOW a list of cars"
	echo "Type the number 3 to QUIT"
	read pick
	case "$pick" in
		"1")
			echo "What is the year of the car? "
			read YEAR
			echo "Who makes the car? "
			read MAKE
			echo "What is the model of the car? "
			read MODEL

			echo "$YEAR:$MAKE:$MODEL" >> My_old_cars.txt;;
		"2")
			sort My_old_cars.txt;;
		"3")
			echo "Goodbye!"
			CONT=0;;
	esac
done
