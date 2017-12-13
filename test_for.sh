#this script will change extension of the files in the directory
# will get two argumenets - old extention and new extention

#first - check that two arguments are inserted

if [[ $# -ne 2 ]]; then
    echo "Need exactly two argumnets: old and new extention"
	
fi

for f in *"$1"; do
    base=$(basename "$f" "$1")
	echo mv "$f" "${base}$2"
done