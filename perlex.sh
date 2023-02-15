if [ -z "$1" ]; then
	echo missing regex as 1st param
fi
if [ -z "$2" ]; then
        echo missing path as 2nd param
fi
opt=${3:-""}

cmd="perl ${3} -pe  ${1} ${2}"

# echo "Command:"
# echo $cmd

echo "Executing ... $cmd"
$cmd
