# One Random Commit Per Day

## Usage

run **./oneCommitPerDay.sh** every day to add a random commit to your project.

first adapt the **project_directory** variable in **oneCommitPerDay.sh** to point it to your project folder.
Next add the script to your crontab like below (use **crontab -e** to edit your crontab):
```
@midnight $PATH_TO_SCRIPT/./oneCommitPerDay.sh
```

You also need to install w3m to be able to run the script. The script uses w3m to fetch random commit messages from [What The Commit](http://whatthecommit.com).
```
sudo apt-get install w3m
```

**Have fun and watch your streak grow to a steady 100%!**
