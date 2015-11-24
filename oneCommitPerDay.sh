#!/bin/bash
set -e

commit_file="commitFile.txt"
commit_message=`w3m -dump http://whatthecommit.com | head -1`

# add new content to file, commit and push
echo "$commit_message on `date --iso-8601`" >> $commit_file

git add $commit_file
git commit -m "$commit_message"
git push origin master
