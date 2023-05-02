path_from="/etc/"
path_target="./found"
path_erase="/dev/null"
conf="/home/$(whoami)/configs"

find $path_from -maxdepth 1 -type f -name 'k*' 1> $path_target 2> $path_erase
touch $conf
find $path_from -maxdepth 1 -type f -name '*.conf' 1> $conf 2> $path_erase
find $path_from -type f -size +100k 1> mt100k 2> $path_erase
find $path_from -type f -mtime +7 -mtime -70 1>> $path_target 2> $path_erase
find /tmp/ -type f -name '*.tmp' -empty -delete 1>> $path_target 2> $path_erase
cat $path_from'hosts' | wc -lw >> $path_target
sort $conf -o $conf
echo "____HEAD____" 1>> $path_target
head -n 15 $conf 1>> $path_target
echo "____TAIL____" 1>> $path_target
tail -n 15 $conf 1>> $path_target
ps -e | wc -l 1>> $path_target
ls $path_from | sort -r | head -n 5 1>> $path_target
