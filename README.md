# One Random Commit Per Day

run **./oneCommitPerDay.sh** every day to add a random commit to your project.

first adapt the **project_directory** variable, to point it to your project folder and then add the script to your crontab like below.
```
@midnight $PATH_TO_SCRIPT/./oneCommitPerDay.sh
```

You also need to install w3m to be able to run the script.
```
sudo apt-get install w3m
```

## Have fun and watch your streak grow to a steady 100%!
