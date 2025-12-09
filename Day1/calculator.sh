#!/bin/bash

#implementing calculator uisng function operation

add() {
	echo $(( $1 + $2 ))
}
subtract() {
        echo $(( $1 - $2 ))
}
multiply() {
        echo $(( $1 * $2 ))
}
divide() {
        echo $(( $1 / $2 ))
}

echo "Enter number 1:"
read a
echo "Enter number 2:"
read b

echo "Choose operation: + - * /"
read op

case $op in
	+)
		add $a $b
	;;
	-)
                subtract $a $b
        ;;
	*)
                multiply $a $b
        ;;
	/)
                divide $a $b
        ;;
        *) echo "Invalid option";;
esac










