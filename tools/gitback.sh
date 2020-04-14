#!/binbash

# Script to delete an already merged branch


# Exit if working directory is dirty

if [[ $(git diff --stat) != '' ]]; then
    echo "Git working directory is dirty"
    exit 1
fi
# Exit if we are already in master

current_branch=`git rev-parse --abbrev-ref HEAD`

if [ $current_branch == "master" ]; then
    echo "You are in Master. Doing nothing and exiting"
    exit 1
fi

# and finally checkout master, update and remove branch
git checkout master
git pull
git branch -d $current_branch
