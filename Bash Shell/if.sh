echo "Please enter (y/n)"
read reply

if [ "$reply" == "y" ]
then
	echo "Welcome"
else
	echo "go to hell"
fi


echo "Enter a number"
read number

if [ $number != 1 ]
then
    echo "You entered 1"
fi

