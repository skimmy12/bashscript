# READ a file line by line within a specific column

filename=$1

if [[ "$#" -ne 1 ]]; then
	echo "$0 <filename>"
	exit 1
fi

cat $filename | awk '{print $1}' | while read line
do
	name=$line
	echo "Name read from file - $name"
	#./dsgetprop.sh $name
	./dssetprop.sh $name isActive false
	sleep 5
done
