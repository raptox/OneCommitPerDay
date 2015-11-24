#!/bin/bash
set -e

# change this to the path of the project directory where you want to make daily commits
project_directory="/home/pi/work/OneCommitPerDay/"

commit_file="commitFile.txt"
commit_message=`w3m -dump http://whatthecommit.com | head -1`

# add new content to file, commit and push
cd $project_directory
echo "`date --iso-8601` | $commit_message" >> $commit_file
git pull origin master
git add $commit_file
git commit -m "$commit_message"
git push origin master
