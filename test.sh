git add -A
git commit --amend --no-edit
git tag -d v0.1.2
git tag v0.1.2
git push --force
git push --tags --force
