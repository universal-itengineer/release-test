NEW_BRANCH=feat/new-feat8
COMMIT_MSG=$(echo $NEW_BRANCH | cut -d '/' -f2)
git switch main
git pull
git checkout -b $NEW_BRANCH
git echo $NEW_BRANCH >> awesome.txt
git add . && git commit -m "feat: $COMMIT_MSG" --signoff
git push --set-upstream origin $NEW_BRANCH
