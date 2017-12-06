if [[ ! $1 ]]; then
    echo "Missing argument"
	exit 1
fi

scriptname="$1"
bindir="${HOME}/bin"
filename="${bindir}/${scriptname}"

if [[ -e $filename ]]; then
    echo "File ${filename} aleready exist"
	exit 1
fi

if type "$scriptname"; then
    echo "The is aleready a command with name ${scriptname}"
	exit 1
fi

#Check if dir exists
if [[ ! -d $bindir ]]; then 
    # if not: create bin dir
	if mkdir "$bindir"; then
	    echo "created ${bindir}"
	else 
	    echo "Could not create ${bindir}."
		exit 1
	fi
fi
