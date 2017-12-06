if [[ -d $1 && -d $2 ]]; then
	echo "both are dirs"
elif
	[[ ! -d $1 && ! -d $2 ]]; then 
	echo "both are not dirs"
elif
	[[ ! -d $1 ]]; then
	echo "$1 is not dir"
else
	echo "$2 is not dir"
fi
