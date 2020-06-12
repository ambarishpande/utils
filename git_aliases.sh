#### GIT ALIASES ###
function gpull () {
 branch=`git rev-parse --abbrev-ref HEAD`
 git pull origin $branch
}

function gpush() {
 branch=`git rev-parse --abbrev-ref HEAD`
 git push origin $branch
}

## Merge master branch to current branch.
function gmm() {
  gmb master
}

# Syncs given branch with upstream and merge to current branch.
function gmb() {
 currbranch=`git rev-parse --abbrev-ref HEAD`
 git checkout $1
 git pull origin $1
 git checkout $currbranch
 git merge $1
}

function gs() {
 git status
}

# Show changes done in last commit
function gdl(){
    git diff HEAD^ HEAD
}

#### END OF GIT ALIASES ###
