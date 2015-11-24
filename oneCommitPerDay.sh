#!/bin/bash

commit_file="commitFile.txt"
commit_message=`w3m -dump http://whatthecommit.com | head -1`

# create commit_file if it does not exist
if [ ! -f $commit_file ] ; then
	touch $commit_file
fi

# add new content to file, commit and push
echo "$commit_message on `date`" > $commit_file
git add $commit_file
git commit -m "$commit_message"
git push origin master
