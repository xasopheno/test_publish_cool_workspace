set positional-arguments

do_thing version:
  echo $1 | md5sum | head -c 20 > test.txt
  echo "$1" > version.txt
  git add .
  git commit -m "updated version.txt"

@release version:
  # ./check-git-clean.sh
  git config --global user.email "xasophenobot@xasopheno.com"
  git config --global user.name "Xasopheno Bot"

  just do_thing "$1"

  echo "$1"
  git reset --soft HEAD~1
  git commit --amend --no-edit
  git push --force-with-lease
  
