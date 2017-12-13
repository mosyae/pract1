#guess the number between 1-100
# get the random number from 1-100
target=$(($RANDOM % 100)) 

# Initiate a guess var

guess=

until [[ $guess -eq $target ]]; do
    read -p "Guess the number between 1-100: " guess
	if [[ $guess -lt $target ]]; then
	    echo "Higher!"
	elif [[ $guess -gt $target ]]; then
	    echo "Lower!"
	else
	    echo $guess " - Your guess is correct!"
	fi
done

exit 0