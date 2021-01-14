# Usage: Clone the repo you wish to generate commits for, add script to the root folder, then run script and wait

#!/bin/bash
FILE=data.txt

# User credentials for git push
echo -n Github Username:
read username
echo -n Github Password:
read -s password

# Repo to push to e.g. www.github.com/username/repo
echo -n Repo to commit to:
read repo

echo -n How many commits to push?:
read commits

# Get current time and update file to commit
CURTIME=$(date +"%T")
echo "$CURTIME" >> "$FILE"
echo

git add data.txt
git commit -m "'$CURTIME'"

#for ((i=0; i < ${#array[@]}; i+=2 )); do
#  echo $'\n------------------\n' >> "$FILE"
#  java Main words5.txt "${array[i]}" "${array[i+1]}" >> "$FILE"
#done
