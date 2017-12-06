# this script will compater number of files in 2 dirs provided as arguments to the script
# check that 2 argumetns were provided in the command line

if [[ $# -ne 2 ]]; then
    echo "provide 2 arguments"
	exit 1
fi

current_dir=$(pwd)
echo $current_dir

#check that the agruments are provide - dirs names
if [[ ! -d $1 ]]; then
    echo "'$1' is not a directory"
	exit 1
fi
if [[ ! -d $2 ]]; then
    echo "'$2' is not a directory"
	exit 1
fi

dir1="$1"
dir2="$2"

#find a number of files in the directory
count_dir1=$(ls -A1 "$dir1" | wc -l)
count_dir2=$(ls -A1 "$dir2" | wc -l)

#compare number of files
if [[ $count_dir1 -eq $count_dir2 ]]; then 
    echo "num of file is the same"
	else 
        if [[ $count_dir1 -lt $count_dir2 ]]; then
		    echo "${dir2} has more files"
		else 
		    echo "${dir1} has more files"
		fi
fi

exit 0
