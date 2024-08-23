#!/bin/bash


# long options
string=$1   # accessing command line arguements.
src=
dest=
output="output.csv"
modified_file=0
if [[ "$string" == "-s" ]]; then    # syntax of if-else, string comparator, test command, indentation in inner most braces.
  src=$2
elif [[ "$string" == "-d" ]]; then
  dest=$2
else 
  output=$2
fi

string=$3

if [[ "$string" == "-s" ]]; then
  src=$4
elif [[ "$string" == "-d" ]]; then
  dest=$4
else 
  output=$4
fi

if [ $# -gt 4 ]; then
    string=$5

    if [[ "$string" == "-s" ]]; then
      src=$6
    elif [[ "$string" == "-d" ]]; then
      dest=$6
    else 
      output=$6
    fi
fi


count=0
pd=$(pwd)
cd "$src"
start_time=$(date +%s%3N)

IFS=$'\n'
for line in $(find . -type f | grep "/[^/]*[aeiouAEIOU][^/]*$")
do
    if [ $count -eq 0 ]; then
      cd "$pd"
    fi
    file_path="${line#.}"
    filepath=$(dirname "$file_path")
    mkdir -p "$dest"/"$filepath"
    if [ -f "$dest"/"$file_path" ]; 
    then 
        if [ "$src"/"$file_path" -nt "$dest"/"$file_path" ];
        then 
        cp "$src"/"$file_path" "$dest"/"$file_path"
        modified_file=$((modified_file+1))
        fi
    else
	modified_file=$((modified_file+1))
        cp "$src"/"$file_path" "$dest"/"$file_path"
    fi
	count=1
done

end_time=$(date +%s%3N)
elapsed_time=$(($end_time - $start_time))
echo "PID: $$, TOTAL RUNTIME: $elapsed_time, Files Modified: $modified_file" >> "$output"


: <<'END_COMMENT'
filepath -> relative to source
from working directory
mkdir -p $dest$filepath
rmdir $dest$filepath
cp $src$filepath $dest$filepath
END_COMMENT

